<?php
class ChatbotController extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('dialogflow_helper'); // โหลด helper ที่สร้างไว้
    }

    public function receiveMessage() {
        $userMessage = $this->input->post('message'); // รับข้อความจากผู้ใช้

        // ส่งข้อความไปยัง Dialogflow และรับการตอบกลับ
        $projectId = 'your-project-id';
        $sessionId = 'your-session-id';
        $reply = detectIntentTexts($projectId, [$userMessage], $sessionId);

        // ส่งข้อความตอบกลับผู้ใช้
        $this->sendMessageToUser($reply);
    }

    private function sendMessageToUser($message) {
        // โค้ดสำหรับส่งข้อความกลับไปยังผู้ใช้ผ่านระบบเดิมของคุณ
        // ตัวอย่างการส่งข้อความ (อาจใช้ API ของ Facebook หรือช่องทางอื่น)
        // $this->facebook->sendMessage($userId, $message);
    }
}
