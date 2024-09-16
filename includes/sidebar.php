<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">
			
				<li class="ts-label">Main</li>
				<?PHP if(isset($_SESSION['id']))
				{ ?>
					<li><a href="dashboard.php"><i class="fa fa-desktop"></i>Dashboard</a></li>
					<li><a href="my-profile.php"><i class="fa fa-user"></i> My Profile</a></li>
<li><a href="change-password.php"><i class="fa fa-files-o"></i>Change Password</a></li>
<li><a href="book-hostel.php"><i class="fa fa-file-o"></i>Book Hostel</a></li>
<li><a href="room-details.php"><i class="fa fa-file-o"></i>Room Details</a></li>
<li><a href="access-log.php"><i class="fa fa-file-o"></i>Access log</a></li>
<li><a href="fee.php"><i class="fa fa-file-o"></i>fee payment</a></li>
<li><a href="feedetails.php"><i class="fa fa-file-o"></i>fee details</a></li>
<?php } else { ?>
				
				
				<li><a href="index.php"><i class="fa fa-users"></i> User Login</a></li>
			
				<li><a href="#"><i class="fa fa-desktop"></i> Registration</a>
					<ul>
						<li><a href="registration.php">user register</a></li>
						<li><a href="guestregi.php">guest register</a></li>
					</ul>
				</li>
				<?php } ?>

			</ul>
		</nav>