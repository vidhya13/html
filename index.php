<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>


</script>
</head>
<body>
<div id="page-wrapper">
  <div class="container-fluid">
               <div class="row">
                   <div class="col-lg-12">
                       <h2 class="page-header">
                            Statistics
                       </h2>
                   </div>
               </div>
               <div class="row">
                   <div class="col-lg-4 col-md-4">
                       <div class="panel panel-primary">
                           <div class="panel-heading">
                               <div class="row">
                                   <div class="col-xs-3">
                                   <i class="fa fa-list-ul fa-5x"></i>
                                   </div>
                                   <div class="col-xs-9 text-right">
                                       <div class="huge"></div>
                                       <div>Tenants Registration</div>
                                   </div>
                               </div>
                           </div>
                           <a href="/report">
                               <div class="panel-footer">
                                   <span class="pull-left">View Details</span>
                                   <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                   <div class="clearfix"></div>
                               </div>
                           </a>
                       </div>
                   </div>
                   <div class="col-lg-4 col-md-4">
                       <div class="panel panel-green">
                           <div class="panel-heading">
                               <div class="row">
                                   <div class="col-xs-3">
                                       <i class="fa fa-list-ul fa-5x"></i>
                                   </div>
                                   <div class="col-xs-9 text-right">
                                       <div class="huge"></div>
                                       <div>Police Registration</div>
                                   </div>
                               </div>
                           </div>
                           <a href="/adminreport">
                               <div class="panel-footer">
                                   <span class="pull-left">View Details</span>
                                   <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                   <div class="clearfix"></div>
                               </div>
                           </a>
                       </div>
                   </div>
                   <div class="col-lg-4 col-md-4">
                       <div class="panel panel-yellow">
                           <div class="panel-heading">
                               <div class="row">
                                   <div class="col-xs-3">
                                       <i class="fa fa-list-ul fa-5x"></i>
                                   </div>
                                   <div class="col-xs-9 text-right">
                                       <div class="huge"></div>
                                       <div>Police Stations</div>
                                   </div>
                               </div>
                           </div>
                           <a href="/station">
                               <div class="panel-footer">
                                   <span class="pull-left">View Details</span>
                                   <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                   <div class="clearfix"></div>
                               </div>
                           </a>
                       </div>
                   </div>
           </div>

<br/>
<br/>
<br/>

        <!-- Morris Charts -->

        <!-- /.row -->

        <div class="row">
          <div class="col-lg-12">
              <div class="panel panel-red">
                  <div class="panel-heading">
                      <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i>Tenant Registrations</h3>
                  </div>
                  <ul class="nav nav-pills ranges">
                      <li class="active"><a href="#" data-range='7'>7 Days</a></li>
                      <li><a href="#" data-range='30'>Month</a></li>
                      <li><a href="#" data-range='60'>60 Days</a></li>
                      <li><a href="#" data-range='90'>90 Days</a></li>
                  </ul>
                  <div class="panel-body">
                      <div id="morris-line-chart"></div>

                  </div>
              </div>
          </div>
      </div>
      <br/>
      <div class="row">
          <div class="col-lg-12">
              <div id="stats-container" style="height: 250px;"></div>
          </div>
      </div>
</div>
  </div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>

<script src="morris.min.js"></script>
<!-- <script src="js/plugins/morris/morris-data.js"></script> -->
 <table>
    <tbody>
<?php
$con=mysql_connect("localhost","root","");
mysql_select_db("cloudcoderdb",$con);
$query=mysql_query("select * from cc_courses");
$json_date=array();  
$json_count=array();
while($row=mysql_fetch_array($query))
{

 $json_array1['label']=$row['name'];  
    $json_array2['label']=$row['title'];  
    array_push($json_date,$json_array1);  
	array_push($json_count,$json_array2);  
?>
 
  
<tr>
  <td id='u'><?php echo $row['name']; ?></td>
  <td id='ud'><?php echo $row['title']; ?></td></tr>
<?php 
} 

echo json_encode($json_date);
echo json_encode($json_count);
?>

</tbody>
  </table>
<p>fff</p>
<script>
// Morris.js Charts sample data for SB Admin template

$(function() {
var date=<?php echo json_encode($json_date); ?>;
var counts = <?php echo json_encode($json_date); ?>;
console.log(date);
		for (var label in date) {
  if (date.hasOwnProperty(label)) {
    console.log(label + " -> " + date[label]);
  }
}
    
 //console.log(record);
    // Area Chart
	    $("table tbody").find('tr').each(function (i) {
                   var $tds = $(this).find('td'),
                       productId = $tds.eq(0).text(),
                       product = $tds.eq(1).text();

                   // do something with productId, product, Quantity
                   alert('Row ' + (i + 1) + ':\nId: ' + productId
                         + '\nProduct: ' + product);
    });


    // Line Chart
    Morris.Line({
        // ID of the element in which to draw the chart.
   
        element: 'morris-line-chart',
        // Chart data records -- each entry in this array corresponds to a point on
        // the chart.


    
                         data: [
                           {
          date:<?php echo json_encode($json_date); ?>,
          counts : <?php echo json_encode($json_count); ?>
        },
        ],
      

  //  });


        // The name of the data record attribute that contains x-visitss.
        xkey: 'date',
        // A list of names of data record attributes that contain y-visitss.
        ykeys: ['counts'],
        // Labels for the ykeys -- will be displayed when you hover over the
        // chart.
        labels: ['Registers'],
        // Disables line smoothing
        smooth: false,
        resize: true
    });
  });
   
</script>





</body>
</html>
