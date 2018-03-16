<?php
	class Projets extends CI_Controller{
		public function index()
{
        
        $data['title'] = 'Liste des projets'; // Capitalize the first letter
        $data['projet'] = $this->projet_model->get_projets();
        //print_r($data['projet']);

        //$this->load->view('template/header');
        $this->load->view('projets/index', $data);
        //$this->load->view('template/footer');

        
}
   



	}




?>