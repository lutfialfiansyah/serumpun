<!-- Brand Logo -->
    <a href="<?php echo base_url().'asset\dist\img\SerumpunLogo.jpg'; ?>" class="brand-link">
      <img src="<?php echo base_url().'asset\dist\img\SerumpunLogo.jpg'; ?>" alt="Serumpun Logo" class="brand-image img-circle elevation-3" style="opacity: .8" >
      <span class="brand-text font-weight-light">SERUMPUN</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="http://localhost/serumpun/asset/dist/img/avatar04.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="<?php echo site_url('/dashboard/'); ?>" class="d-block"><?php echo $this->session->userdata('pengguna')->nama; ?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

          <?php
          $id_pengguna_grup = $this->session->userdata('pengguna')->id_pengguna_grup;
          $query = "
            SELECT m.*, ma.id AS id_menu_akses 
            FROM menu AS m 
            JOIN (SELECT * FROM menu_akses WHERE id_pengguna_grup = '{$id_pengguna_grup}') AS ma 
            ON ma.id_menu = m.id 
            WHERE m.id_menu_induk = 0
            ORDER BY m.id 
          ";
          $parents = $this->db->query($query);
          if($parents->num_rows() > 0) :
            foreach ($parents->result() as $parent) :
          ?>
              <li class="openable nav-item has-treeview">
                <a href="<?php echo site_url($parent->uri); ?>" class="nav-link">
                  <p>
                    <?php echo $parent->nama;?>
                    <i class="right fas fa-angle-left"></i>
                  </p>
                </a>

                <?php
                  $query = "
                    SELECT m.*, ma.id AS id_menu_akses 
                    FROM menu AS m 
                    JOIN (SELECT * FROM menu_akses WHERE id_pengguna_grup = '{$id_pengguna_grup}') AS ma 
                      ON ma.id_menu = m.id 
                    WHERE m.id_menu_induk = '{$parent->id}'
                    ORDER BY m.id     
                  ";
                  $childs = $this->db->query($query);
                ?>
                <ul class="nav nav-treeview">
                  <?php foreach($childs->result() as $child) : ?>
                    <li>
                      <a href="<?php echo site_url($child->uri); ?>" class="nav-link"><span class="text"><i class="far fa-circle nav-icon"></i><?php echo $child->nama; ?></span></a>
                    </li>
                  <?php endforeach; ?>
                </ul>
              </li>
          <?php
            endforeach;
          endif;
          ?>

        </ul>
      </nav>
    </div>