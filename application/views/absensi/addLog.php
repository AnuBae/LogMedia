<div class="container pt-5">
    <h3><?= $title ?></h3>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb ">
            <li class="breadcrumb-item"><a>Media</a></li>
            <li class="breadcrumb-item "><a href="<?= base_url(); ?>">List Data Anggota</a></li>
            <li class="breadcrumb-item active" aria-current="page">Add Data Log Anggota</li>
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
                <div class="card-body">
                    <!-- <?php
                            //create form
                            $attributes = array('id' => 'FrmAddLog', 'method' => "post", "autocomplete" => "off");
                            echo form_open('C_Home/fungsiAddLog', $attributes);
                            ?> -->
                    <form method="post" accept-charset="utf-8" action="<?= base_url('C_Home/fungsiAddLog'); ?>">
                        <div class="form-group row">
                            <label for="Nama" class="col-sm-2 col-form-label">Nama</label>
                            <div class="col-sm-10">
                                <input type="hidden" class="form-control" id="IdMdLog" name="IdMdLog" value="<?= $data_Anggota->IdMd; ?>">
                                <input type="text" class="form-control" id="Nama" name="Nama" value="<?= $data_Anggota->Nama; ?>" readonly>
                                <small class="text-danger">
                                    <?php echo form_error('Nama') ?>
                                </small>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="Kegiatan" class="col-sm-2 col-form-label">Kegiatan</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="Kegiatan" name="Kegiatan" value="<?= set_value('Kegiatan'); ?>">
                                <small class="text-danger">
                                    <?php echo form_error('Kegiatan') ?>
                                </small>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="Deskripsi" class="col-sm-2 col-form-label">Deskripsi</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="Deskripsi" name="Deskripsi" rows="3"><?= set_value('Deskripsi'); ?></textarea>
                                <small class="text-danger">
                                    <?php echo form_error('Deskripsi') ?>
                                </small>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="TanggalWaktu" class="col-sm-2 col-form-label">Tanggal - Waktu</label>
                            <?php date_default_timezone_set("Asia/Jakarta"); ?>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="TanggalWaktu" name="Tanggal" value="<?= date("d-m-Y"); ?>" readonly>
                                <small class="text-danger">
                                    <?php echo form_error('Tanggal') ?>
                                </small>
                            </div>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="TanggalWaktu" name="Waktu" value="<?= date("H:i a"); ?>" readonly>
                                <small class="text-danger">
                                    <?php echo form_error('Waktu') ?>
                                </small>
                            </div>
                        </div>

                        <fieldset class="form-group">
                            <div class="row">
                                <legend class="col-form-label col-sm-2 pt-0">Keterangan</legend>
                                <div class="col-sm-10">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="Keterangan" name="Keterangan" value="Mulai" <?php if (set_value('Keterangan') == "Mulai") : echo "checked";
                                                                                                                                        endif; ?>>
                                        <label class="form-check-label" for="Keterangan">
                                            Mulai
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="Keterangan2" name="Keterangan" value="Selesai" <?php if (set_value('Keterangan') == "Selesai") : echo "checked";
                                                                                                                                        endif; ?>>
                                        <label class="form-check-label" for="Keterangan2">
                                            Selesai
                                        </label>
                                    </div>
                                    <small class="text-danger">
                                        <?php echo form_error('Keterangan') ?>
                                    </small>
                                </div>
                            </div>
                        </fieldset>

                        <div class="form-group row">
                            <div class="col-sm-10 offset-md-2">
                                <button type="submit" class="btn btn-primary">Simpan</button>
                                <a class="btn btn-secondary" href="javascript:history.back()">Kembali</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>