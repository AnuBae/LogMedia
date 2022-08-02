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

    public function addLog($id = null)
    {
        if (!isset($id)) {
            $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Data Anggota Media tidak ditemukan. 
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button></div>');
            redirect('C_Home');
        }

        $Absensi = $this->Absensi_model;

        $data["title"] = "Tambah Data Log Anggota";
        $data["data_Anggota"] = $Absensi->getById($id);
        if (!$data["data_Anggota"]) show_404();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/menu');
        $this->load->view('absensi/addLog', $data);
        $this->load->view('templates/footer');
    }

    public function fungsiAddLog()
    {
        $data = array(
            "IdMdLog" => $this->input->post('IdMdLog'),
            "Kegiatan" => $this->input->post('Kegiatan'),
            "Deskripsi" => $this->input->post('Deskripsi'),
            "Tanggal" => $this->input->post('Tanggal'),
            "Waktu" => $this->input->post('Waktu'),
            "Keterangan" => $this->input->post('Keterangan')
        );

        foreach ($data as $value) {
            if ($value == "") {
                $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
            Tolong lengkapi form data log. 
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button></div>');
                redirect("C_Home/addLog/" . $data['IdMdLog']);
            }
        }

        // kasih pembagian pm am
        $n = date('a', strtotime($data["Waktu"]));
        $data["Waktu"] = $data["Waktu"] . " " . $n;
        // ubah format tanggal
        $data["Tanggal"] = date("Y-m-d", strtotime($data["Tanggal"]));

        $this->Absensi_model->updateLog($data);
        $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
        Data Anggota Media berhasil disimpan. 
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button></div>');
        redirect(base_url());
    }

    public function edit()
    {
        $data["data_log"] = $this->Absensi_model->getLogActivity();

        foreach ($data["data_log"] as $val) {
            if (!$this->validateDate($val["Tanggal"], 'Y-m-d')) {
                $date = DateTime::createFromFormat('d-m-Y', $val["Tanggal"]);
                $data = array(
                    'Tanggal' => $date->format('Y-m-d')
                );

                $this->db->where('IdLog', $val["IdLog"]);
                $this->db->update('logact', $data);
                // Produces:
                //
                //      UPDATE mytable
                //      SET title = '{$title}', name = '{$name}', date = '{$date}'
                //      WHERE id = $id
            }
        }
        redirect(base_url());
    }

    function validateDate($date, $format = 'Y-m-d H:i:s')
    {
        $d = DateTime::createFromFormat($format, $date);
        return $d && $d->format($format) == $date;
    }
}
