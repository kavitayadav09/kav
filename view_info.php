<?php 
	include_once "includes/header.php";
		
?>

<div class="container-fluid text-center user">    
  <div class="row content">
    <?php 
		//include_once "includes/sides.php";
	?>

    <div class="col-sm-10 text-left"> 
     
      <div class="clear"></div>
      <!--a href="add_product.php" type="button" class="btn btn-success addProduct">Add Product</a-->
        
      <table class="table table-hover userDashTable rwd-table">
        <thead>
          <tr>
            <th>School's Nmae</th>
            <th>School's Address</th>
			<th>School's Email</th>
			<th>School's Website</th>
			<th>School's Contact</th>
			<th>Gender</th>
			<th>Medium</th>
			<th>Board</th>
			<th>Co_Curricular Activity</th>
			<th>School's Annual Fees:</th>
			<th>Teacher Student Ratio</th>
			<th>Student Count</th>
			<th>School Timing:</th>
			<th>Classes:</th>
			<th>Establish In:</th>
          </tr>
        </thead>
        <tbody>
          
		<?php        

$sql="SELECT tbl_school_master.school_name, tbl_school_master.school_address, tbl_school_master.school_email, tbl_school_master.school_website, tbl_school_master.school_contact, tbl_school_master.gender_id, tbl_school_master.medium_id, tbl_school_master.board_id, tbl_school_master.activity_id, tbl_school_master.school_annual_fees,
tbl_school.teacher_stud_ratio, tbl_school.student_count, tbl_school.school_timing, tbl_school.classes, tbl_school.establish_in
FROM tbl_school_master
INNER JOIN tbl_school ON tbl_school_master.school_master_id = tbl_school.school_master_id";
$result = mysqli_query($conn, $sql) or die("Error in Selecting " . mysqli_error($conn));

	while($row=mysqli_fetch_array($result)){  


		?>
 <tr>
		  <td><?php echo $row['school_name']; ?></td>
		  <td><?php echo $row['school_address']; ?></td>
		  <td><?php echo $row['school_email']; ?></td>
		  <td><?php echo $row['school_website']; ?></td>
		  <td><?php echo $row['school_contact']; ?></td>
		  
          <td><?php 
			$gender_id = $row['gender_id']; 
			$sql1="SELECT gender_name FROM tbl_gender WHERE gender_id='$gender_id'";
			$result1 = mysqli_query($conn, $sql1) or die("Error in Selecting " . mysqli_error($conn));
			while($row1 = mysqli_fetch_array($result1))
			{
			echo $row1[0];	
			}			
		  ?></td>
		  
		  <td><?php 
			$medium_id = $row['medium_id']; 
			$sql2="SELECT medium_name FROM tbl_medium WHERE medium_id='$medium_id'";
			$result2 = mysqli_query($conn, $sql2) or die("Error in Selecting " . mysqli_error($conn));
			while($row2=mysqli_fetch_array($result2))
			{
				echo $row2[0];
			}
		  
		  ?></td>
		  
		  <td><?php 
			$board_id = $row['board_id']; 
			$s_board = explode(", ",$board_id);
			for ($x = 0;  $x<= sizeof($s_board)-1; $x++) {
				$sql3="SELECT board_name FROM tbl_board WHERE board_id='$s_board[$x]'";
				$result3 = mysqli_query($conn, $sql3) or die("Error in Selecting " . mysqli_error($conn));
				while($row3=mysqli_fetch_array($result3))
				{
					if($x <= sizeof($s_board)-2){
						echo $row3[0].",";
					}else{
						echo $row3[0];
					}
					//print_r($s_board[0]);
				}
			} 
			
			
		  
		  ?></td>
		  
		  <td><?php 
			$activity_id = $row['activity_id']; 
			$sql4="SELECT activity_name FROM tbl_co_curricular_activities WHERE activity_id='$activity_id'";
			$result4 = mysqli_query($conn, $sql4) or die("Error in Selecting " . mysqli_error($conn));
			while($row4=mysqli_fetch_array($result4))
			{
				echo $row4[0];
			}
		  
		  ?></td>
		  <td><?php echo $row['school_annual_fees']; ?></td>
		  <td><?php echo $row['teacher_stud_ratio']; ?></td>
		  <td><?php echo $row['student_count']; ?></td>
		  <td><?php echo $row['school_timing']; ?></td>
		  <td><?php echo $row['classes']; ?></td>
		  <td><?php echo $row['establish_in']; ?></td>
		</tr>
		
<?php
	}
?>  
        </tbody>
      </table>
    </div>
 
  </div>
</div>


<?php
	include_once "includes/footer.php";

?>