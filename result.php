<?php require_once "includes/header.php"; ?>


<div class="container-login100"> 

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
               echo "<h1 class='text-center'>NO Post available</h1>";
     }else {

              $query = "SELECT * FROM posts WHERE post_id = $the_post_id";
              $select_all_posts_query = mysqli_query($connection,$query);

              while($row = mysqli_fetch_assoc($select_all_posts_query)) {
              $post_title = $row['post_title'];
              $post_author = $row['post_author'];
              $post_date = $row['post_date'];
              $post_image = $row['post_image'];
              $post_pdf = $row['post_pdf'];
            $post_audio = $row['post_audio'];
                  $post_video = $row['post_video'];
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
              <p>Posted by <?php echo $post_publisher; ?><span class="glyphicon glyphicon-time"></span> <?php echo "$post_date"; ?></p>
              <hr>
              
                  
                          
       <?php
//                   echo " <div>";
//                    if ( empty($post_image) || !$post_image) {
// echo "<h4>image Copy not available yet...</h4>";
//                    }else{
//            echo     "<p>Share copy to: <a href='whatsapp://send?text=images/$post_image'  data-action='share/whatsapp/share'
//         target='_blank'><img src='img/whatsapp.svg' width='20' /></a>";
                  
//                    echo " | <a href='https://www.facebook.com/sharer/sharer.php?u=<images/$post_image>&t=<$post_title>' onclick='javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=300,width=600');return false;' target='_blank' title='Share on Facebook'><img src='img/facebook.jpg' width='20' /></a>";       
                  
//           echo     "<p> <a href='images/$post_image'>Download Song on Image </a>";
                   
      
//          echo    "</div> <br/>";
//             echo    "<img class='img-responsive' src='images/$post_image' alt='No Image'/>";
                   }
                }
            }
        
    
            ?>

</div>

<!-- <div id="dropDownSelect1"></div> -->



<?php require_once "includes/footer.php"; ?>