


<?php require_once "includes/header.php"; ?>


<div class="col-3"></div>
<div class="wrap-input100 col-6" stlye="margin: 0 auto; display: inline-block;">
<!-- <form action="search.php" method="post"> -->
<form action="search.php" method="post" class="form-group">
             <input class="input100 form-control" style="width: 80%; background-color: white;" type="search" id="search" placeholder="Search Token" name="search" />
             <span class="focus-input100 form-group" data-placeholder="&#xe82d;"></span>
             <button class="login100-form-btn btn form-group" style="width: 30%;" name="submit" type="submit">
							Search
</button>
<!-- <button class="" value="" type="submit" name="submit" value="">Verify</span> -->
</form>
</div>

<div class="col-3"></div>

<div class="container-login100"> 
				<!-- <span class="login100-form-title p-b-41">
PRODUCT VERIFICATION USING TOKEN				</span>
				                 <div class="wrap-input100" stlye="margin: 0 auto; display: inline-block;">
             <input class="input100" type="search" id="search" placeholder="Search" />
             <span class="focus-input100" data-placeholder="&#xe82d;"></span>
             <span class="login100-form-btn">
							Search
</span>
			</div> -->

         <!-- <form action="search.php" method="post">
               <input name="search" type="text" class="form-control" placeholder="Enter name of song or composer"/>
                        <span class="input-group-btn">                       
            <p data-aos="fade-up" data-aos-delay="100">
                 
                <button  name="submit" class="btn uppercase d-sm-inline" type="submit"> Search</button>
                            
          </p>     </span>
                    
                    </form>   -->
	<div class="row">
      <div class="col-4"></div>

      <div class="col-4">

	<div id="dropDownSelect1"> 
<?php include_once "search.php"; ?>

      </div>
</div>
      <div class="col-4"></div>
</div>

      </div>


<?php require_once "includes/footer.php"; ?>