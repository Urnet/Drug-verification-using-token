
<!-- header -->
<?php include "includes/header.php";?>

    <!-- Navigation -->
<?php //include "include/navigation.php";?>


    <!-- Page Content -->
    <div class="container-login100"> 

    <div class="row" >
    <div class="col-md-3" ></div>
    <div class="col-md-6" >
  
              <?php

if(isset($_GET['p_id'])){

  $the_post_id = $_GET['p_id'];
//  $the_post_author = $_GET['author'];

$view_query = "UPDATE posts SET post_views_count = post_views_count + 1 WHERE post_id = $the_post_id";
$send_query = mysqli_query($connection,$view_query);
  if (!$send_query) {
die("QUERY FAILED");
  }

            if (isset($_SESSION['user_role']) && $_SESSION['user_role'] == 'admin') {
                  $query = "SELECT * FROM posts WHERE post_id = $the_post_id";
                  $select_all_posts_query = mysqli_query($connection,$query);
             }else {
               $query = "SELECT * FROM posts WHERE post_id = $the_post_id AND post_status = 'published'";
               $select_all_posts_query = mysqli_query($connection,$query);
                           }

     if (mysqli_num_rows($select_all_posts_query) < 1) {
               echo "<h1 class='text-center'>Drug not available or Might be fake be careful</h1>";
     }else {

              $query = "SELECT * FROM posts WHERE post_id = $the_post_id";
              $select_all_posts_query = mysqli_query($connection,$query);

              while($row = mysqli_fetch_assoc($select_all_posts_query)) {
              $post_title = $row['post_title'];
              $post_author = $row['post_author'];
              $post_date = $row['post_date'];
              $post_image = $row['post_image'];
            //   $post_pdf = $row['post_pdf'];
            // $post_audio = $row['post_audio'];
            //       $post_video = $row['post_video'];
              $post_content = $row['post_content'];
              $post_publisher = $row['post_publisher'];
               $post_id = $row['post_id'];    
                  
 
              ?> 

              <!-- First Blog Post -->
               <h2>
                  <a href="post.php?p_id=<?php echo "$post_id"; ?>" style="color:#c6164e;"><?php echo "$post_title"; ?></a>
              </h2>
              <p class="lead">
                by <a href="authors_posts.php?author=<?php echo $post_author;?>&p_id=<?php echo $the_post_id; ?>"> <?php echo "$post_author"; ?> </a>
              </p>
              <!-- <p>Posted by -->
                 <?php //echo $post_publisher; ?>
              <!-- <span class="glyphicon glyphicon-time"></span>  -->
              <?php //echo "$post_date"; ?></p>
              <hr/><br/>
              
                  
                          
       <?php
                  echo " <div>";
                   if ( empty($post_image) || !$post_image) {
echo "<h4>image Copy not available yet...</h4>";
                   }else{
         
      
         echo    "</div> <br/>";
            echo    "<img class='img-responsive' src='images/$post_image' alt='No Image'/>";
                   }
            ?>
<!--                </div>-->
             <!-- <div class='embed-responsive embed-responsive-16by9 quotes'> -->
                          
    <?php
                  
                  //  if ( empty($post_pdf) || !$post_pdf) {
//     echo "<embed class='embed-reponsive-item' src='pdf/adobe.pdf' type='application/pdf'/>";
// echo "<h4>pdf Copy not available yet...</h4>";

//                    }else{                  
//       echo "<embed src='pdf/$post_pdf' type='application/pdf' width='40%' height='600px' />";
                          
//                   }
 
       ?>
              <!-- </div> -->
    <?php
      // if ( empty($post_pdf) || !$post_pdf) {}
      //             else{
  // echo     "<p>Share pdf on: <a href='whatsapp://send?file=$post_pdf' data-href='http://localhost/www/mychoirsongs/post.php?$post_pdf'  data-action='share/whatsapp/share' target='_blank'><img src='img/whatsapp.svg' width='20' /></a> ";        
      
  //  echo   " | <a href='pdf/$post_pdf'>Download Pdf</a></p>";                    
    //               }
                  
    // ?>              
              <hr/><br/>

                    
                 
            
                <p><?php echo $post_content; ?></p>
                <br/><hr/><br/>                   
    
             
  <?php
        }


     ?> 

      </div>
<div class="col-md-3" ></div>

                  <hr/> 
                <br/><br/> 
                <!-- Blog Comments -->
 
             
<?php

if(isset($_POST['create_comment'])){
  $the_post_id = $_GET['p_id'];

$comment_content =escape(strip_tags($_POST['comment_content']));
$comment_email = escape($_POST['comment_email']);
$comment_author = escape($_POST['comment_author']);

      if (!empty($comment_author) && !empty($comment_content) && !empty($comment_author) ) {
            $query = "INSERT INTO comments (comment_post_id, comment_author,comment_email,
            comment_content, comment_status,comment_date)";
            $query .= "VALUES ($the_post_id, '{$comment_author}', '{$comment_email}',
            '{$comment_content}', 'Unapproved',now())";

            $creat_comment_query = mysqli_query($connection,$query);

    if(!$creat_comment_query){
      die('QUERY FAILED' . mysqli_error($connection));
    }


// $query = "UPDATE posts SET post_comment_count = post_comment_count + 1 ";
// $query .= "WHERE post_id = $the_post_id";
//
// $update_comment_count =  mysqli_query($connection,$query);

} else {
  echo "<script>alert('Field can not be empty')</script>";
}
  }
 ?>
 
                
    <!-- Posted Comments -->
            <h4>Comments:</h4>

<?php

$query = "SELECT * FROM comments WHERE comment_post_id = {$the_post_id} ";
$query .= "AND comment_status = 'approved' ";
$query .= "ORDER BY comment_id DESC ";
$select_comment_query = mysqli_query($connection, $query);

if(!$select_comment_query){
  die('QUERY FAILED' . mysqli_error($connection));
}
  while ($row = mysqli_fetch_array($select_comment_query)) {
    // code...
    $comment_date = $row['comment_date'];
    $comment_content = $row['comment_content'];
    $comment_author =$row['comment_author'];

 ?>
 
                        <!-- Comment -->
                        <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="http://placehold.it/64x64" alt="">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading"><?php echo "$comment_author"; ?>
                                    <small><?php echo $comment_date; ?></small>
                                </h4>
                                  <?php echo $comment_content; ?>
                    </div>
                        </div>
  

<?php }}
}else {

header( "Location:index.php");

}?>
          
            <div class="row" >

            <div class="col-md" >
            <br/><hr/><br/>
              <!-- Comments Form -->
                        <div class="well">
                            <h4>Leave a Comment:</h4>
                            <form action="" method="post" role="form">

                              <div class="form-group">
                                <label for="Author">Author</label>
                                  <input class="form-control" type="text" name="comment_author">
                              </div>

                              <div class="form-group">
                                <label for="Email">Email</label>
                                  <input class="form-control" type="email" name="comment_email">
                              </div>
                                <div class="form-group">
                                  <label for="Comment">Comment</label>
                                    <textarea class="form-control" rows="3" name="comment_content"></textarea>
                                </div>
                                <button type="submit" name="create_comment" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
            <hr/>
            </div></div>  
                                <!-- End Nested Comment -->
            </div>      
        </div>

             

        <!-- Footer -->
    <?php require_once "includes/footer.php";?>
