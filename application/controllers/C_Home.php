<?php
defined('BASEPATH') or exit('No direct script access allowed');

class C_Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("M_Absensi", "Absensi_model"); //load model Absensi
    }

    //method pertama yang akan di eksekusi
    public function index()
    {
        $data["title"] = "List Data Anggota Media";
        //ambil fungsi getAll untuk menampilkan semua data Absensi
        $data["data_anggota"] = $this->Absensi_model->getAll();
        //ambil fungsi getLogActivity untuk menampilkan semua data Log Activity
        $data["data_log"] = $this->Absensi_model->getLogActivity();
        //load view header.php pada folder views/templates
        $this->load->view('templates/header', $data);
        $this->load->view('templates/menu');
        //load view index.php pada folder views/Absensi
        $this->load->view('absensi/index', $data);
        $this->load->view('templates/footer');
    }

    public function add()
    {
        // FrmAddMedia
        $Absensi = $this->Absensi_model; //objek model
        $validation = $this->form_validation; //objek form validation
        $validation->set_rules($Absensi->rules()); //menerapkan rules validasi pada Absensi_model
        //kondisi jika semua kolom telah divalidasi, maka akan menjalankan method save pada Absensi_model
        if ($validation->run()) {
            $Absensi->save();
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Data Anggota Media berhasil disimpan. 
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button></div>');
            redirect("C_Home");
        }
        $data["title"] = "Tambah Data Anggota";
        $this->load->view('templates/header', $data);
        $this->load->view('templates/menu');
        $this->load->view('absensi/add', $data);
        $this->load->view('templates/footer');
    }

    public function addLog($id = null)
    {
        if (!isset($id)) redirect('C_Home');
        // if (!isset($id)) "ID";

        $Absensi = $this->Absensi_model;
        $validation = $this->form_validation;
        $validation->set_rules($Absensi->rules());

        //kondisi jika semua kolom telah divalidasi, maka akan menjalankan method save pada Absensi_model
        if ($validation->run()) {

            $Absensi->updateLog();
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Data Log Anggota Media berhasil disimpan. 
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button></div>');
            redirect("C_Home");
            // echo "insert";
        }

        $data["title"] = "Tambah Data Log Anggota";
        $data["data_Anggota"] = $Absensi->getById($id);
        if (!$data["data_Anggota"]) show_404();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/menu');
        $this->load->view('absensi/addLog', $data);
        $this->load->view('templates/footer');
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('C_Home');

        $Absensi = $this->Absensi_model;
        $validation = $this->form_validation;
        $validation->set_rules($Absensi->rules());

        if ($validation->run()) {
            $Absensi->update();
            $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            Data Anggota Media berhasil diedit.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button></div>');
            redirect("C_Home");
        }
        $data["title"] = "Edit Data Anggota";
        $data["data_Anggota"] = $Absensi->getById($id);
        if (!$data["data_Anggota"]) show_404();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/menu');
        $this->load->view('Absensi/edit', $data);
        $this->load->view('templates/footer');
    }

    public function delete()
    {
        $id = $this->input->get('id');
        if (!isset($id)) show_404();
        $this->Absensi_model->delete($id);
        $msg['success'] = true;
        $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
        Data Anggota Media berhasil dihapus.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button></div>');
        $this->output->set_output(json_encode($msg));
    }
}
