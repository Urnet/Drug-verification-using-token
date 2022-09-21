<!-- db_connection -->
<?php include "includes/db.php";?>
<!-- header -->
<?php include "includes/header.php";?>

    <!-- Navigation -->
<?php include "includes/navigation.php";?>


    <!-- Page Content -->
    <div class="container">
        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">

              <?php

if(isset($_GET['p_id'])){

  $the_post_id = $_GET['p_id'];
  $the_post_author = $_GET['author'];

}


              $query = "SELECT * FROM posts WHERE post_author = '{$the_post_author}' ";
              $select_all_posts_query = mysqli_query($connection,$query);

              while($row = mysqli_fetch_assoc($select_all_posts_query)) {
              $post_title = $row['post_title'];
              $post_author = $row['post_author'];
              $post_date = $row['post_date'];
              $post_image = $row['post_image'];
              $post_content = $row['post_content'];
              $post_publisher = $row['post_publisher'];
             $post_id = $row['post_id'];
              ?>
           

              <!-- First Blog Post -->
                
               <h2>
                  <a href="post.php?p_id=<?php echo "$post_id"; ?>" style="color:#c6164e;"><?php echo "$post_title"; ?></a>
              </h2>
              <p class="lead">
                by <a href="authors_posts.php?author=<?php echo $post_author;?>&p_id=<?php echo $post_id; ?>"> <?php echo "$post_author"; ?> </a>
              </p>
              <p>Posted by: <?php echo $post_publisher; ?><span class="glyphicon glyphicon-time"></span> <?php echo " $post_date"; ?></p>
              <hr>
<!--             <div class="col-xs-6">-->
<!--              <img class="img-responsive" src="images/<?php //echo "$post_image"; ?>" />-->
         
<!--            </div>-->
<!--                <div class="col-xs-6 pb-3 embed-responsive embed-responsive-16by9 quotes">                        -->
<!--      <iframe class="embed-reponsive-item" src="admin/<?php //echo $post_pdf;?>"></iframe> -->
<!--          </div>-->
              <hr>
              <p><?php echo $post_content; ?></p>
               <a style="background-color:#c6164e;" class="btn btn-primary" href="post.php?p_id=<?php echo "$post_id"; ?>">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
 <a style="background-color:#c6164e;" class="btn btn-primary" href="post.php?p_id=<?php echo "$post_id"; ?>">Download <span class="glyphicon glyphicon-chevron-down"></span></a>
              <hr/>

                
  <?php
        } ?>


                                <!-- End Nested Comment -->
                            </div>


            <!-- Blog Sidebar Widgets Column -->
 
<?php include "includes/Sidebar.php";?>

        </div>
</div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
    <?php include "includes/footer.php";?>
