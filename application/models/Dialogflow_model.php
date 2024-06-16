<?php
class Dialogflow_model extends CI_Model {

    public function get_api_keys() {
        $query = $this->db->get('api_keys');
        return $query->row_array();
    }

    public function save_api_keys($api_keys) {
        $this->db->where('id', 1); // Assuming there's only one row with API keys
        return $this->db->update('api_keys', $api_keys);
    }
}
?>
