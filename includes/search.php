<?php
include_once "db.php";


  $button = $_GET ['submit'];
  $search = $_GET ['search'];

  // connect to database
//   $con=mysqli_connect("localhost","username","password","database_name");

    $sql ="SELECT * FROM posts WHERE MATCH(post_id,post_title,post_by) AGAINST ('%" . $search . "%')";

    $run = mysqli_query($con,$sql);
    $foundnum = mysqli_num_rows($run);


    if ($foundnum==0)
    {
      echo "We were unable to find a product with a search term of '<b>$search</b>'.";
    }
    else{
      echo "<h1><strong> $foundnum Results Found for \"" .$search."\" </strong></h1>";      

      // get num of results stored in database
      $sql = "SELECT * FROM posts WHERE MATCH(post_title,post_id,post_by) AGAINST ('%" . $search . "%')";
      $getquery = mysqli_query($con,$sql);

      while($runrows = mysqli_fetch_array($getquery))
      {
        $buyLink = $runrows["URL"];
        $imageLink = $runrows["IMAGE_URL"];

        echo"<h5 class='card-title'>". $runrows["post_id"] ."</h5>";
        echo"<h5 class='card-title'>". $runrows["post_title"] ."</h5>";
        echo"<h5 class='card-title'>". $runrows["post_by"] ."</h5>";
        // echo"<h5 class='card-title'>". $runrows["VENDOR"] ."</h5>";
        // echo"<h5 class='card-title'>". $runrows["PRICE"] ."</h5>";
        echo "-------------------------------------------------------------------------------------------------------";
        }}

    mysqli_close($con);
?>