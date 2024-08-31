<?php

public function __construct()
{
    parent::__construct();
    $this->load->library('GeminiService');
    $this->load->library('DialogflowService');
    // ... (โค้ดอื่นๆ) ...
}




private function call_gemini($query, $chatHistory = [])
{
    $geminiService = new GeminiService('YOUR_GEMINI_API_KEY'); // แทนที่ด้วย API key ของคุณ
    return $geminiService->generateResponse($query, $chatHistory);
}

private function call_dialogflow($query, $sessionId)
{
    $dialogflowService = new DialogflowService('YOUR_DIALOGFLOW_PROJECT_ID', 'path/to/your/credentials.json');
    return $dialogflowService->detectIntent($query, $sessionId);
}



public function get_interest_search()
{
    // ... (โค้ดเดิม) ...

    // ตรวจสอบว่าผู้ใช้ต้องการเรียกใช้ Dialogflow หรือ Gemini
    $use_ai = $this->input->post('use_ai', true); 

    if ($use_ai == 'dialogflow') {
        $response = $this->call_dialogflow($domain_name, $sessionId); // สร้าง session ID ที่เหมาะสม
    } elseif ($use_ai == 'gemini') {
        $response = $this->call_gemini($domain_name);
    } else {
        // ... (เรียกใช้ Facebook Graph API ตามปกติ) ...
    }

    // ... (ประมวลผล response และส่งกลับผลลัพธ์) ...
}



?>