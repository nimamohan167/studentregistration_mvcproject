<?php include("superuserbase.php");
?>
<div class="container-fluid bg-style media1">
			
	<div class="row">
					
		<div class="col-md-12 log-style">
<!----------------------------form to display profile------------------------>
			<div class="form-group">
			<table class="table table-striped card-text bg-light">
		<thead>
			<tr>
				
				<th>StudentName</th>
				<th>RegisterNo</th>
				<th>DOB</th>
			
				<th>Gender</th>
				<th>Phone No</th>
				
				<th>Qualification</th>
				<th>Batch</th>
				<th>Username</th>
				<th>Password</th>

				<th>Action</th>
				
			</tr>
		</thead>
<?php
		include '../controller/Mycontroller.php';
		$obj=new Mycontroller();
		$result=$obj->stdview();
		while($row=mysqli_fetch_assoc($result))
		{
			?>
			
			<tbody>
								
				
						<tr>
						<form method="post">
							<td scope="row"><input type="text" name="name" value="<?php echo $row['name'];?>"</td>
							<td scope="row"><?php echo $row['regno'];?></td>
							<td scope="row"><?php echo $row['dob'];?></td>
						
							<td scope="row"><?php echo $row['gender'];?></td>
							<td scope="row"><?php echo $row['phoneno'];?></td>
							
							<td scope="row"><?php echo $row['qualification'];?></td>
							<td scope="row"><?php echo $row['batch'];?></td>
							<td scope="row"><?php echo $row['username'];?></td>
							<td scope="row"><?php echo $row['password'];?></td>
							
							<td><input type="submit" value="remove" class="btn-danger" name="remove"></td>
						</form>
						</tr>
					 
						
					</tbody>
		
		<?php
							}
							if(isset($_POST['remove']))
							{
								$obj->removestd($_POST['name']);
							}
						?>
						</table>
		</div>
	</div>
	</div>
	
	
	</div>
  </body>
</html>