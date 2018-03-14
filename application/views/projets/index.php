<?php require 'assets/src/inc/config.php'; ?>
<?php require 'assets/src/inc/views/template_head_start.php'; ?>

<!-- Page JS Plugins CSS -->


<?php require 'assets/src/inc/views/template_head_end.php'; ?>
<?php require 'assets/src/inc/views/base_head.php'; ?>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap4.min.css">

<div class="content bg-gray-lighter">
<div class="row items-push">
<div class="col-sm-7">
<h1 class="page-heading">
<?= $title ?> <small></small>
</h1>
</div>

</div>
</div>

<div class="col-sm-12 col-lg-12">
<div class="block block-themed">
<div class="block-header bg-info">
<ul class="block-options">
<li>
<button type="button"><i class="si si-settings"></i></button>
</li>
</ul>
<h3 class="block-title">Projets</h3>
</div>
<div class="block-content">
<table  id="myTable" class="table table-striped table-bordered" cellspacing="0" width="100%">
  <thead>
    <tr>
      <th>Projet</th>
      <th>Date de Création</th>
       <th>Date d'attribution</th>
    </tr>
  </thead>
  <tfoot>
            <tr>
                <th>Projet</th>
                <th>Date de Création</th>
                <th>Date d'attribution</th>
                
            </tr>
        </tfoot>
 <tbody>
  <?php foreach ($projet as $project)  :?>
    <tr>
        <td><?php echo $project['projet_nom']; ?></td>
        <td><?php echo $project['date_creation']; ?></td>
        <td><?php echo $project['date_attribution']; ?></td>
      
    </tr>
  <?php endforeach; ?>	
  </tbody>
  
 
</table>
</div>
</div>
</div>



<?php require 'assets/src/inc/views/base_footer.php'; ?>
<?php require 'assets/src/inc/views/template_footer_start.php'; ?>
<?php require 'assets/src/inc/views/template_footer_end.php'; ?>


<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap4.min.js
"></script>
<script type="text/javascript">
$(document).ready( function () {
    $('#myTable').DataTable();
} );
</script>