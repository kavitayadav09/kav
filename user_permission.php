<?php 
	include_once "includes/header.php";
	
/*	if( $_SESSION['type'] == 1 || $_SESSION['type'] == 100 ){
		//admin
	} else {
		header( 'Location:logout.php' );
	}
	
  */	 	
?>
  
<div class="container-fluid text-center user">    
  <div class="row content">
    <?php 
		include_once "includes/sides.php";

	?>
    <div class="col-sm-10 text-left"> 
      <h1>User Permission Management</h1>
 
      <div class="clear"></div>
      <!--a href="add_manufacturers.php" type="button" class="btn btn-success addUser">Add Manufacturer</a-->
        
      <table class="table table-hover userDashTable rwd-table">
        <thead>
          <tr>   
            <th>User Name</th>
            <th>Module 1</th>
			<th>Module 2</th>
			<th>Module 3</th>
			<th>Action</th>
          </tr>
        </thead>
        <tbody>
          
<?php  

$sql="SELECT * FROM user_master_tbl";
$result = mysqli_query($conn, $sql) or die("Error in Selecting " . mysqli_error($conn));

	while($row=mysqli_fetch_array($result)){  
?>
        <tr>
		  <!--td>< ?php echo $row['m_id']; ?></td-->
          <td><?php echo $row['user_name']; ?></td>
				<?php
				$sql1="SELECT * FROM user_module_tbl";
				$result1 = mysqli_query($conn, $sql1) or die("Error in Selecting " . mysqli_error($conn));
				$row1=mysqli_fetch_array($result1);
				?>
		  <td> <input type="checkbox" name="model_serialize" id="model_serialize" value="<?php $row1['$module_id']; ?>"> Student Model</td>
		  <td> <input type="checkbox" name="model_serialize" id="model_serialize" value=""> Account Model</td>
		  <td> <input type="checkbox" name="model_serialize" id="model_serialize" value=""> Admission Model</td>
		  <td> <button type="submit" name="submit" class="btn btn-success" >Save</button></td>
          <?php 
              }
            ?>
		</tr>
		
<label class="control-label col-sm-3"></label>
            <div class="col-sm-8">
             
            </div>
			
			
        </tbody>
      </table>
    </div>
 
  </div>
</div>

 <script>


</script>

<?php
	include_once "includes/footer.php";

?>