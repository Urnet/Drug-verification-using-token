 
<!-- header -->
<?php require_once "includes/header.php";?>
 
 
    <!-- Page Content -->
    <div class="container-login100"> 
      <div class="row">
    <div class="col-md-4" ></div>
    <div class="col-md-4" >

              <?php
 
              if(isset($_POST['submit'])){

                $search =  $_POST['search'];

                // $query = "SELECT * FROM posts WHERE post_tags LIKE '%$search%' ";
                $query = "SELECT * FROM posts WHERE post_tags LIKE '$search' ";
                $search_query = mysqli_query($connection,$query);

              if(!$search_query){
                die("QUERY FAILED". mysqli_error($connection));
              }

              $count = mysqli_num_rows($search_query);
              if($count == 0){
                echo "<h1>No Result </h1>";
                
              }else{
                // $query = "SELECT * FROM posts";
                // $select_all_posts_query = mysqli_query($connection,$query);

                       while($row = mysqli_fetch_assoc($search_query)) {
                       $post_title = $row['post_title'];
                       $post_author = $row['post_author'];
                       $post_date = $row['post_date'];
                       $post_image = $row['post_image'];
                       $post_content = $row['post_content'];
                       $post_id = $row['post_id'];
                       $post_tag = $row['post_tags'];
                       ?>
                    

                       <!-- First Blog Post -->
                       <h2>
                           <a href="post.php?p_id=<?php echo "$post_id"; ?>"><?php echo "$post_tag"; ?></a>
                       </h2>
<!--                        
                       <h2>
                           <a href="post.php?p_id=<?php //echo "$post_id"; ?>"><?php //echo "$post_title"; ?></a>
                       </h2>
                       <p class="lead">
                           by <a href="post.php?p_id=<?php// echo "$post_id"; ?>"><?php //echo "$post_author"; ?></a>
                       </p> -->
                       <!-- <p><span class="glyphicon glyphicon-time"></span> <?php //echo "$post_date"; ?></p>
                       <hr>
                       <img class="img-responsive" src="images/<?php// echo "$post_image"?>" alt="">
                       <hr> -->
                       <p><?php// echo $post_content; ?></p>
                        <a style="background-color:#c6164e;" class="btn btn-primary" href="post.php?p_id=<?php echo "$post_id"; ?>">Verify Now <span class="glyphicon glyphicon-chevron-right"></span></a>

                       <hr>

  <?php    }
   }
     } ?>
</div>
<div class="col-md-4" ></div>

                </div>
 
 
        <hr>

        <!-- Footer -->
    <?php require_once "includes/footer.php";?>
