<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        } );
    </script>
    <link rel="stylesheet" href="{!! asset('task/style.css') !!}">

</head>
<body>
<div class="container">
    <h1>Exchange Rates</h1>
    <div class="col-md-12">
        <label for="daterange">Select Date</label>
        <form action="{!! url('/task1') !!}" method="post">
            {!! csrf_field() !!}
            <input type="date" name="daterange" id="daterange">
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <table id="example" class="table table-striped table-bordered" style="width:100%">
            <thead>
            <tr>
                <th>Valyuta</th>
                <th>Kod</th>
                <th>Kurs</th>
                <th>Tarix</th>
            </tr>
            </thead>
            <tbody>
          @if($results!="")
              @foreach($results as $result)
                  <tr>
                      <td>{!! $result->exchange !!}</td>
                      <td>{!! $result->code !!}</td>
                      <td>{!! $result->rate !!}</td>
                      <td>{!! $result->date !!}</td>
                  </tr>
              @endforeach
              @endif
            </tbody>

        </table>
    </div>
</div>
</body>
</html>


