<?php
  class Projet_model extends CI_Model {
     public function __construct(){
      //load the data from the database
      $this->load->database();
     }
     public function get_projets(){
     
       //select all the project from the database     
        $query = $this->db->get('projet');
        return $query->result_array();
     }
     public function num_rows(){
      $query = $this->db
                          ->select(['projet_nom','date_creation','date_attribution'])
                          ->from ('projet')
                          ->get();
        return $query->num_rows(); 
     }
 }
 ?>