<?php
 
	include_once "includes/header.php";
	
	/*if( $_SESSION['type'] == 1 || $_SESSION['type'] == 100 ){
		//admin
	} else {
		header( 'Location:logout.php' );
	}	*/

   
if(isset($_POST['submit']))
{

$school_name= addslashes($_POST['school_name']);
$school_address=$_POST['school_address'];
$school_email=$_POST['school_email'];
$gender_id=$_POST['gender_id'];
$medium_id=$_POST['medium_id'];
$school_website=$_POST['school_website'];
$school_contact0=$_POST['school_contact0'];
$school_contact1=$_POST['school_contact1'];
$school_contact2=$_POST['school_contact2'];
$board_id=$_POST['board_id'];
$activity_id=$_POST['activity_id'];
$school_annual_fees=$_POST['school_annual_fees'];
$board = implode(", ",$board_id);


$combineContactStr = $school_contact0.','.$school_contact1.','.$school_contact2;

$sql="INSERT INTO tbl_school_master (school_name, school_address, school_email, gender_id, medium_id, school_website, school_contact, board_id, activity_id, school_annual_fees) VALUES('$school_name', '$school_address', '$school_email', '$gender_id', '$medium_id', '$school_website', '$combineContactStr', '$board', '$activity_id', '$school_annual_fees')";

if ($conn->query($sql) === TRUE) {
	
	//$last_id = $conn->school_master_id;
	$last_inserted_id = $conn->insert_id;
    echo "New record created successfully";//.$last_inserted_id;
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
				
				$teacher_stud_ratio1=$_POST['teacher_stud_ratio1'];
				$teacher_stud_ratio2=$_POST['teacher_stud_ratio2'];
				$student_count=$_POST['student_count'];
				
				$school_timing1=$_POST['school_timing1'];
				$school_timing2=$_POST['school_timing2'];
				$purpose1=$_POST['purpose1'];
				
				$school_timing3=$_POST['school_timing3'];
				$school_timing4=$_POST['school_timing4'];
				$purpose2=$_POST['purpose2'];
				
				$school_timing5=$_POST['school_timing5'];
				$school_timing6=$_POST['school_timing6'];
				$purpose3=$_POST['purpose3'];
				
				$classes=$_POST['classes'];
				$establish_in=$_POST['establish_in'];

				$ratio = $teacher_stud_ratio1.':'.$teacher_stud_ratio2;
				
				if($school_timing3 != null && $school_timing4 != null && $school_timing5 == null && $school_timing6 == null){
					$timing = $school_timing1.' - '.$school_timing2.'('.$purpose1.')'.' , '.$school_timing3.' - '.$school_timing4.'('.$purpose2.')';
					
				}else if( $school_timing5 != null && $school_timing6 != null){
					
					$timing = $school_timing1.' - '.$school_timing2.'('.$purpose1.')'.' , '.$school_timing3.' - '.$school_timing4.'('.$purpose2.')'.' , '.$school_timing5.' - '.$school_timing6.'('.$purpose3.')';
				}else{
					$timing = $school_timing1.' - '.$school_timing2.'('.$purpose1.')';
				}
				
				 
				$sql = "INSERT INTO tbl_school ( school_master_id, teacher_stud_ratio, student_count, school_timing, classes, establish_in ) VALUES('$last_inserted_id', '$ratio', '$student_count', '$timing', '$classes', '$establish_in' )";
				
				
				if ($conn->query($sql) === TRUE) {
					$msg = "New record created successfully";
				} else {
					$msg = "Error: " . $sql . "<br>" . $conn->error;
				}
			//echo $board;
//header("Location:view_info.php");	 
$conn->close();	
}
?> 

<?php
//include_once "includes/sides.php";
?>
<div class="col-sm-10 text-center user">    
  

    <div class="col-sm-6 text-left marginAuto AddUser"> 
     <center><h1>Add School Information</h1></center>
      <form action="" method="post" class="form-horizontal" id="schoolForm">
		  
		  <div class="form-group">
            <label class="control-label col-sm-4" for="email">School's name:</label>
            <div class="col-sm-8">
              <input type="text" onkeyup="lattersOnly(this)" data-validation="alphanumeric" data-validation-allowing="-'.() " name="school_name" class="form-control" id="addname" placeholder="Enter School's Name" required>
            </div>
          </div>
		  
		  <div class="form-group">
            <label class="control-label col-sm-4" for="email">School's Address:</label>
            <div class="col-sm-8">
              <input type="text" name="school_address" class="form-control" id="addaddress" placeholder="Enter school's Address" required>
            </div>
          </div>
		  
		   <div class="form-group">
            <label class="control-label col-sm-4" for="email">School's Email:</label>
            <div class="col-sm-8">
              <input type="text" data-validation="email" name="school_email" class="form-control" id="addemail" placeholder="Enter school's Email" required>
            </div>
          </div>
		 
		   <div class="form-group">
            <label class="control-label col-sm-4" for="email">School's Website:</label>
            <div class="col-sm-8">
              <input type="text" data-validation="url" name="school_website" class="form-control" id="addemail" placeholder="Enter school's Website" required>
            </div>
          </div>
		  
		   <div class="form-group">
            <label class="control-label col-sm-4" for="email">School's Contact:</label>
            <div class="col-sm-8">
				<div class="add_img">
				  <input type "text" onkeyup="numberOnly(this);" data-validation="length" data-validation-length="8-10" name="school_contact0" class="form-control" id="addmobile" placeholder="Enter school's Contact No" required>
				   <img class="add plus" src="img/add.png" alt="">
				</div>
				
				
				<div class="add_img hide"> 
				  <input type "text" onkeyup="numberOnly(this)" data-validation="length" data-validation-length="8-10" name="school_contact1" class="form-control" id="addmobile1" placeholder="Enter school's Contact No">
				  <img class="add plus" src="img/add.png" alt="">
				  <img class="add del" src="img/del.png" alt="">
				</div>
				
				<div class="add_img hide">
				  <input type "text" onkeyup="numberOnly(this)" data-validation="length" data-validation-length="8-10" name="school_contact2" class="form-control" id="addmobile2" placeholder="Enter school's Contact No">
				  <img class="add plus" src="img/add.png" alt="">
				  <img class="add del" src="img/del.png" alt="">
				</div>
			
			</div>
		  </div>
			 <input type="hidden" name="school_id">
		  <div class="form-group">
            <label class="control-label col-sm-4" for="email">Teacher Student Ratio:</label>
            <div class="col-sm-8">
			 <input type="text" onkeyup="numberOnly(this)" data-validation="length" data-validation-length="1-4" name="teacher_stud_ratio1" class="form-control inline" id="addratio1" required> <b>:</b>
			 <input type="text" onkeyup="numberOnly(this)" data-validation="length" data-validation-length="1-4" name="teacher_stud_ratio2" class="form-control inline" id="addratio2" required>
            </div>
          </div>
		  
		  <div class="form-group">
            <label class="control-label col-sm-4" for="email">Student Count:</label>
            <div class="col-sm-8">
			 <input type="text" onkeyup="numberOnly(this)" name="student_count" class="form-control" id="addcount" placeholder="Enter Student Count" required>
            </div>
          </div>
		  
		  
		  		  <div class="form-group">
          <label class="control-label col-sm-4" for="pwd">Gender :</label>
          <div class="col-sm-8">
              <select name="gender_id" class="gender_id form-control" id="gender_id" required>
                <option value="">Select</option>
		      <?php 
					
                    $sql1 = "SELECT * FROM tbl_gender";
                    $result1 = mysqli_query($conn, $sql1) or die("Error in Selecting " . mysqli_error($conn));
                    while($row1=mysqli_fetch_array($result1)){ 
					
                 ?>
		   
                 <option value="<?php echo $row1[0];?>"><?php echo $row1[1];?></option>
                  <?php
                    }
					
                  ?>
				  
              </select>
          </div>
      </div>
	  
	  
	  <div class="form-group">
          <label class="control-label col-sm-4" for="pwd">Medium :</label>
          <div class="col-sm-8">
              <select name="medium_id" class="medium_id form-control" id="medium_id" required>
                <option value="">Select</option>
		      <?php 
					
                    $sql2 = "SELECT * FROM tbl_medium";
                    $result2 = mysqli_query($conn, $sql2) or die("Error in Selecting " . mysqli_error($conn));
                    while($row2=mysqli_fetch_array($result2)){ 
					
                 ?>
		   
                 <option value="<?php echo $row2[0];?>"><?php echo $row2[1];?></option>
                  <?php
                    }
                  ?>
              </select>
          </div>
      </div>
		  
		  
		  <div class="form-group">
		  <div id=""></div>
          <label class="control-label col-sm-4" for="pwd">Board :</label>
          <div class="col-sm-8">
              <select name="board_id[]" class="board_id form-control js-example-basic-multiple" id="board_id" multiple="multiple">
                <option value=""></option>
		      <?php 
					
                    $sql3 = "SELECT * FROM tbl_board";
                    $result3 = mysqli_query($conn, $sql3) or die("Error in Selecting " . mysqli_error($conn));
                    while($row3=mysqli_fetch_array($result3)){ 
					
                 ?>
		   
                 <option value="<?php echo $row3[0];?>"><?php echo $row3[1];?></option>
                  <?php
                    }
                  ?>
              </select>
          </div>
      </div>
	  
	  <div class="form-group">
		  <div id=""></div>
          <label class="control-label col-sm-4" for="pwd">Co Curricular Activity :</label>
          <div class="col-sm-8">
              <select name="activity_id" class="activity_id form-control" id="activity_id" required>
                <option value="">Select</option>
		      <?php 
					
                    $sql4 = "SELECT * FROM tbl_co_curricular_activities";
                    $result4 = mysqli_query($conn, $sql4) or die("Error in Selecting " . mysqli_error($conn));
                    while($row4=mysqli_fetch_array($result4)){ 
					
                 ?>
		   
                 <option value="<?php echo $row4[0];?>"><?php echo $row4[1];?></option>
                  <?php
                    }
                  ?>
              </select>
          </div>
      </div>
	  
		   <div class="form-group">
				<label class="control-label col-sm-4" for="email">School Timing:</label>
			   <!--div class="col-sm-3">
					<input type="text" class="form-control" id="from" name="school_timing" placeholder="From">
				</div>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="to" name="school_timing" placeholder="To">
				</div-->
				<div class="col-sm-8">
					<div class="add_img"> 
						<div class="col-sm-3 padding0">
							<input type="text" class="form-control" id="from1" name="school_timing1" placeholder="From" required>
						</div>
						<div class="col-sm-3 padding0">
							<input type="text" class="form-control" id="to2" name="school_timing2" placeholder="To" required>
						</div>
						<div class="col-sm-4 padding0">
							<input type="text" class="form-control" id="purpose1" name="purpose1" placeholder="purpose">
						</div>
					  <img class="add plus" src="img/add.png" alt="">
					</div>
					<div class="add_img hide"> 
						<div class="col-sm-3 padding0">
							<input type="text" class="form-control" id="from3" name="school_timing3" placeholder="From" >
						</div>
						<div class="col-sm-3 padding0">
							<input type="text" class="form-control" id="to4" name="school_timing4" placeholder="To">
						</div>
						<div class="col-sm-4 padding0">
							<input type="text" class="form-control" id="purpose2" name="purpose2" placeholder="purpose">
						</div>
					  <img class="add plus" src="img/add.png" alt="">
					  <img class="add del" src="img/del.png" alt="">
					</div>
					<div class="add_img hide"> 
						<div class="col-sm-3 padding0">
							<input type="text" class="form-control" id="from5" name="school_timing5" placeholder="From" >
						</div>
						<div class="col-sm-3 padding0">
							<input type="text" class="form-control" id="to6" name="school_timing6" placeholder="To">
						</div>
						<div class="col-sm-4 padding0">
							<input type="text" class="form-control" id="purpose3" name="purpose3" placeholder="purpose">
						</div>
					  <img class="add plus" src="img/add.png" alt="">
					  <img class="add del" src="img/del.png" alt="">
					</div>
			  </div>
		  </div>
		  
		  <div class="form-group">
            <label class="control-label col-sm-4" for="email">Classes:</label>
            <div class="col-sm-8">
			 <input type="text" onkeyup="numberOnly(this)" data-validation="length" data-validation-length="1-12" name="classes" class="form-control" id="addclass" placeholder="Enter Classes" required>
			 <p class="range hide">Invalide Range</p>
            </div>
          </div>
		 
		  <div class="form-group">
            <label class="control-label col-sm-4" for="email">School's Annual Fees:</label>
            <div class="col-sm-8">
			 <input type="text" onkeyup="numberOnly(this)" data-validation="number" data-validation-allowing="range[100;1000]" name="school_annual_fees" class="form-control" id="addfees" placeholder="Enter school's annual Fees" required>
            </div>
          </div>
		   
		  <div class="form-group">
            <label class="control-label col-sm-4" for="email">Establish In:</label>
            <div class="col-sm-8">
			 <input type="text" onkeyup="numberOnly(this)" data-validation="length" data-validation-length="4-4" name="establish_in" class="form-control" id="addestablish" placeholder="Enter Establish In" required>
            </div>
          </div>
		  
			<div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
			
              <!--?php 
              if( $_SESSION['type'] != 100 ){
            ?-->
            <center><button type="submit" name="submit" class="btn btn-success" >Submit</button>
            <?php 
              //}
            ?>
			  <!--a href="view_customer.php" type="button" class="btn btn-success back">Back</a--></center>
            </div>
          </div>
         
        </form> 
    </div>
 
</div>
<?php
	include_once "includes/footer.php";
?>
<script>

function lattersOnly(input) {
	
		var regex = /[^a-z-w w'w(w)w.w]/gi;
	    input.value = input.value.replace(regex, "");
}

function numberOnly(input) {
	
		var regex = /[^0-9-w]/g;
	    input.value = input.value.replace(regex, "");
		
		//var regex = /(^[0-1]$|^1[2-2]$);
	    //input.value = input.value.replace(regex, "");
	
}

function stringSplit(input) {
	var str = input;
    var res = str.split("-");
	//console.log(res[0]);
	
	if(res[0] >=1 && res[0]<=12 && res[1] >=1 && res[1]<=12){
			$('.range').addClass('hide');
			return true;
	}
	else{
		$('.range').removeClass('hide');
		return false;
	}
	
	if(res[0] == res[1]){
		$('.range').removeClass('hide');
	}
	
		
}


$(document).ready(function(){
	
$('#addclass').blur(function(){
	var s_class = $(this).val();
	stringSplit(s_class)
})

$("#schoolForm").submit(function(e){
	var s_class = $('#addclass').val();
	var isTrue = stringSplit(s_class);
	
	if(isTrue != true){
		e.preventDefault();
	}
	   });


	var prevLen = 0;

$('.add_img').find('.plus').click(function(){
	var s_con = $(this).parent().find('input').val();
	
	if(s_con != null && s_con != ""){
    $(this).parent().next().removeClass('hide')
    }
		
})

$('.add_img').find('.del').click(function(){
	$(this).parent().find('input').val("");
    $(this).parent().addClass('hide')
		
})

  $.validate({
  
   modules : 'date'
  });
  
 
	$('#from1').timepicker();
	$('#to2').timepicker();

	$('#from3').timepicker();
	$('#to4').timepicker(); 

	$('#from5').timepicker();
	$('#to6').timepicker();
	
	$('#board_id').select2();
	
})


</script>