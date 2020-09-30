<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
    <link rel="stylesheet" href="{!! asset('task/style.css') !!}">

</head>
<body>
       <div class="container">
         <div class="col-md-12">

                 <div class="form-group">
                     <label for="sel2">Şəhər</label>
                     <select  class="form-control" id="city" name="city">
                         <option value="">Şəhəri seçin</option>
                         <option value="Bakı">Bakı</option>
                         <option value="Sumqayıt">Sumqayıt</option>
                         <option value="Gəncə">Gəncə</option>
                         <option value="Ağdaş">Ağdaş</option>
                         <option value="Aghjabadi">Ağcəbədi</option>
                         <option value="Ağstafa">Agstafa</option>
                         <option value="Zangilan">Zangilan</option>
                         <option value="Qəbələ">Qəbələ</option>
                         <option value="Qax">Qakh</option>
                         <option value="Shakhbuz">Shakhbuz</option>
                         <option value="Kəlbəcər">Kəlbəcər</option>
                         <option value="Masally">Masally</option>
                         <option value="Zangilan">Zangilan</option>
                         <option value="Lankaran">Lankaran</option>
                         <option value="Tovuz">Tovuz</option>
                         <option value="Hacıqabul">Hacıqabul</option>
                         <option value="Mingəçevir">Mingəçevir</option>
                     </select>
                 </div>
                 <button type="button" class="btn btn-primary" id="submit">Submit</button>
             <br>
             <br>
             <br>
         </div>
           <div class="row">
               <div class="col-md-4 col-md-offset-4">
                   <div class="weather" id="msg">

                   </div>
               </div>
           </div>
       </div>
       <script>
           $(document).ready(function(){

               $("#msg").hide();

               $("#submit").click(function(){
                   $("#msg").show();

                   var city = $("#city").val();
                   var token = $("#token").val();
                   $.ajax({
                       type: "post",
                       data: {city:city ,_token: '{{csrf_token()}}'},
                       url: '/getweather',
                       success:function(data){
                           $("#msg").html("<div class=\"weather\">\n" +
                               "<div class=\"current\">\n" +
                               "<div class=\"info\" id=\"msg\"><div>&nbsp;</div>\n" +
                               "<div class=\"city\"><small>Şəhər: </small>"+city+"</div>\n" +
                               "<div class=\"temp\">"+data+"&deg; <small>C</small></div>\n" +
                               "<div>&nbsp;</div>   </div>\n" +
                               "<div class=\"icon\">\n" +
                               "<span class=\"wi-day-sunny\"></span>\n" +
                               "</div>\n" +
                               "</div>\n" +
                               "</div>");

                       }
                   });
               });





           });
       </script>
</body>
</html>
