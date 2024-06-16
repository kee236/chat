<?php
class Dialogflow_lib {

    private $api_key;

    public function __construct() {
        $this->ci =& get_instance();
        $this->ci->load->model('Dialogflow_model');
        $api_keys = $this->ci->Dialogflow_model->get_api_keys();
        $this->api_key = $api_keys['dialogflow'];
    }

    public function detect_intent_texts($text) {
        // Implement the function to call Dialogflow API using $this->api_key
    }
}
?>
