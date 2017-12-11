<html>
    <body>
        <?php
        ini_set('display_startup_errors', 1);
        ini_set('display_errors', 1);
        error_reporting(-1);
        include 'dbconnect.php';

        $query="SELECT * FROM Executive_Board";

        $result=$conn->query($query);

        function sql_to_html_table($sqlresult, $delim="\n") {
            // starting table
            $htmltable =  "<table border='1'>" . $delim ;   
            $counter   = 0 ;
            // putting in lines
            while( $row = $sqlresult->fetch_assoc()  ){
              if ( $counter===0 ) {
                // table header
                $htmltable .=   "<tr>"  . $delim;
                foreach ($row as $key => $value ) {
                    $htmltable .=   "<th>" . $key . "</th>"  . $delim ;
                }
                $htmltable .=   "</tr>"  . $delim ; 
                $counter = 22;
              } 
                // table body
                $htmltable .=   "<tr>"  . $delim ;
                foreach ($row as $key => $value ) {
                    $htmltable .=   "<td>" . $value . "</td>"  . $delim ;
                }
                $htmltable .=   "</tr>"   . $delim ;
            }
            // closing table
            $htmltable .=   "</table>"   . $delim ; 
            // return
            return( $htmltable ) ; 
          }
          echo sql_to_html_table($result);
        ?>
        
    </body>
</html>