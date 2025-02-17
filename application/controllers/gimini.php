<?

class Social_apps extends Home
{
    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('logged_in') != 1) redirect('home/login', 'location');
    }


    /**
     * Gemini AI Settings Page
     */
    public function gimini_settings()
    {
        $data['page_title'] = $this->lang->line('Gemini AI Settings');
        $data['title'] = $this->lang->line('Gemini AI Settings');
        $data['body'] = 'admin/social_apps/gimini_settings';

        $this->_viewcontroller($data);
    }

    /**
     * Fetch Gemini AI Configurations
     */
    public function gimini_settings_data()
    {
        $this->ajax_check();
        $search_value = $_POST['search']['value'];
        $display_columns = array("#", "CHECKBOX", 'id', 'app_name', 'api_key', 'status', 'action');
        $search_columns = array('app_name');

        $page = isset($_POST['page']) ? intval($_POST['page']) : 1;
        $start = isset($_POST['start']) ? intval($_POST['start']) : 0;
        $limit = isset($_POST['length']) ? intval($_POST['length']) : 10;
        $sort_index = isset($_POST['order'][0]['column']) ? strval($_POST['order'][0]['column']) : 2;
        $sort = isset($display_columns[$sort_index]) ? $display_columns[$sort_index] : 'id';
        $order = isset($_POST['order'][0]['dir']) ? strval($_POST['order'][0]['dir']) : 'desc';
        $order_by = $sort . " " . $order;

        $where_custom = "user_id = " . $this->user_id;

        if ($search_value != '') {
            foreach ($search_columns as $key => $value) {
                $temp[] = $value . " LIKE " . "'%$search_value%'";
            }
            $imp = implode(" OR ", $temp);
            $where_custom .= " AND (" . $imp . ") ";
        }

        $table = "gimini_config";
        $this->db->where($where_custom);
        $info = $this->basic->get_data($table, '', '', '', $limit, $start, $order_by, '');
        $this->db->where($where_custom);
        $total_rows_array = $this->basic->count_row($table, '', $table . ".id", '', '');
        $total_result = $total_rows_array[0]['total_rows'];

        $i = 0;
        foreach ($info as $key => $value) {
            $info[$i]['api_key'] = "********"; // Hide API Key

            $info[$i]['status'] = ($info[$i]['status'] == '1') 
                ? '<span class="badge badge-status text-success"><i class="fa fa-check-circle green"></i> Active</span>'
                : '<span class="badge badge-status text-danger"><i class="fa fa-check-circle red"></i> Inactive</span>';

            $info[$i]['action'] = "<div style='min-width:130px'>
                <a href='" . base_url('social_apps/edit_gimini_settings/') . $value['id'] . "' class='btn btn-outline-warning btn-circle' data-toggle='tooltip' title='" . $this->lang->line('Edit Settings') . "'><i class='fas fa-edit'></i></a>
                <a href='#' class='btn btn-outline-danger btn-circle delete_app' table_id='" . $value['id'] . "' data-toggle='tooltip' title='" . $this->lang->line('Delete this APP') . "'><i class='fas fa-trash-alt'></i></a>
                </div>";

            $info[$i]["action"] .= "<script>$('[data-toggle=\"tooltip\"]').tooltip();</script>";
            $i++;
        }

        $data['draw'] = (int)$_POST['draw'] + 1;
        $data['recordsTotal'] = $total_result;
        $data['recordsFiltered'] = $total_result;
        $data['data'] = convertDataTableResult($info, $display_columns, $start, "id");

        echo json_encode($data);
    }

    /**
     * Add Gemini AI Settings
     */
    public function add_gimini_settings()
    {
        $data['table_id'] = 0;
        $data['gimini_settings'] = array();
        $data['page_title'] = $this->lang->line('Gemini AI Settings');
        $data['title'] = $this->lang->line('Gemini AI Settings');
        $data['body'] = 'admin/social_apps/gimini_settings';

        $this->_viewcontroller($data);
    }

    /**
     * Edit Gemini AI Settings
     */
    public function edit_gimini_settings($table_id = 0)
    {
        if ($table_id == 0) exit;
        $gimini_settings = $this->basic->get_data('gimini_config', array("where" => array("id" => $table_id)));
        $data['table_id'] = $table_id;
        $data['gimini_settings'] = isset($gimini_settings[0]) ? $gimini_settings[0] : array();
        $data['page_title'] = $this->lang->line('Gemini AI Settings');
        $data['title'] = $this->lang->line('Gemini AI Settings');
        $data['body'] = 'admin/social_apps/gimini_settings';

        $this->_viewcontroller($data);
    }

    /**
     * Update Gemini AI Settings
     */
    public function gimini_settings_update_action()
    {
        if (!isset($_POST)) exit;

        $this->form_validation->set_rules('app_name', "App Name", 'trim|required');
        $this->form_validation->set_rules('api_key', "API Key", 'trim|required');
        $table_id = $this->input->post('table_id', true);

        if ($this->form_validation->run() == FALSE) {
            if ($table_id == 0) $this->add_gimini_settings();
            else $this->edit_gimini_settings($table_id);
        } else {
            $insert_data['app_name'] = strip_tags($this->input->post('app_name', true));
            $insert_data['api_key'] = strip_tags($this->input->post('api_key', true));
            $insert_data['user_id'] = $this->user_id;

            $status = $this->input->post('status');
            if ($status == '') $status = '0';
            else {
                $this->basic->update_data('gimini_config', '', array('status' => '0'));
            }
            $insert_data['status'] = $status;

            if ($table_id != 0) {
                $this->basic->update_data('gimini_config', array('id' => $table_id, "user_id" => $this->user_id), $insert_data);
            } else {
                $this->basic->insert_data('gimini_config', $insert_data);
            }

            $this->session->set_flashdata('success_message', '1');
            redirect(base_url('social_apps/gimini_settings'), 'location');
        }
    }

    /**
     * Delete Gemini AI App
     */
    public function delete_app_gimini()
    {
        $this->ajax_check();
        $this->csrf_token_check();
        $app_table_id = $this->input->post('app_table_id', true);
        $this->basic->delete_data('gimini_config', array('id' => $app_table_id, 'user_id' => $this->user_id));
        echo json_encode(array('status' => '1', 'message' => $this->lang->line("App has been deleted successfully.")));
    }

    /**
     * Change Gemini AI App Status
     */
    public function change_app_status_gimini()
    {
        $this->ajax_check();

        $app_table_id = $this->input->post('app_table_id', true);
        $app_info = $this->basic->get_data('gimini_config', array('where' => array('id' => $app_table_id, 'user_id' => $this->user_id)));

        if (count($app_info) > 0) {
            $status_to_be_changed = ($app_info[0]['status'] == '0') ? '1' : '0';
            $this->basic->update_data('gimini_config', array('id' => $app_table_id, 'user_id' => $this->user_id), array('status' => $status_to_be_changed));

            echo json_encode(array('status' => '1', 'message' => $this->lang->line("App status changed successfully.")));
        }
    }
}