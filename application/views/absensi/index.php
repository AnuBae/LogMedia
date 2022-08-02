<!-- Anggota -->
<div class="container pt-5">
    <h3><?= $title ?></h3>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb ">
            <li class="breadcrumb-item"><a>Media</a></li>
            <li class="breadcrumb-item active" aria-current="page">List Anggota</li>
        </ol>
    </nav>

    <div class="row">
        <div class="col-md-12">
            <div mb-2>
                <!-- Menampilkan flashh data (pesan saat data berhasil disimpan)-->
                <?php if ($this->session->flashdata('message')) :
                    echo $this->session->flashdata('message');
                endif; ?>
            </div>

            <div class="card">
                <div class="card-body mx-auto">
                    <?php foreach ($data_anggota as $row) : ?>
                        <a href="<?= site_url('C_Home/addLog/' . $row->IdMd) ?>" class="btn btn-primary btn-lg"><i class="fa fa-plus"></i> <?= $row->Nama ?></a>
                    <?php endforeach; ?>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Anggota end -->

<!-- edit -->
<div class="container pt-5">

    <div class="row">

        <div class="card">
            <div class="card-body mx-auto">
                <a href="<?= site_url('C_Home/edit') ?>" class="btn btn-primary btn-lg"><i class="fa fa-plus"></i> Edit</a>
            </div>
        </div>
    </div>
</div>
</div>

<!-- edit end -->

<!-- Tabel Log Act -->
<div class="container pt-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover" id="tablelog">
                            <thead>
                                <tr class="table-success">
                                    <th>TANGGAL</th>
                                    <th>WAKTU</th>
                                    <th>NAMA</th>
                                    <th>KEGIATAN</th>
                                    <th>DESKRIPSI</th>
                                    <th>KETERANGAN</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($data_log as $row) : ?>
                                    <tr>
                                        <td><?= $row['Tanggal'] ?></td>
                                        <td><?= $row['Waktu'] ?></td>
                                        <td><?= $row['Nama'] ?></td>
                                        <td><?= $row['Kegiatan'] ?></td>
                                        <td><?= $row['Deskripsi'] ?></td>
                                        <td><?= $row['Keterangan'] ?></td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    //menampilkan data ketabel dengan plugin datatables
    $('#tablelog').DataTable({
        order: [[0, 'desc']],
    });
</script>
<!-- Tabel Log Act -->