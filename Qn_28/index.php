<!DOCTYPE html>
<head>
    <title>Document</title>
</head>
<body>
    <h2 id="demo">When you click on the below button I'll change</h2>
    <button onclick="changeContent()">Click Me</button>

    <script>
        function changeContent(){
            var xhttp=new XMLHttpRequest();
            xhttp.onreadystatechange=function(){
                if(this.readyState==4 && this.status==200){
                    //var doc=xhttp.responseText;
                    document.getElementById("demo").innerHTML=this.responseText;
                }
            };
            xhttp.open("GET","sample.txt",true);
            xhttp.send();


        }
    </script>
</body>
</html>