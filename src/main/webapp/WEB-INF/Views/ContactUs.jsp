<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
    font-size: 17px;
}

.container {
    position: relative;
    max-width: 100%;
    margin: 0 auto;
}

.container img {vertical-align: middle;}
.address {
  margin-bottom: 1rem;
  font-style: normal;
  line-height: inherit;
}
.container .content {
    position: absolute;
    top: 0;
    background: rgba(0, 0, 0, 0.5); /* Black background with transparency */
    color: #f1f1f1;
    width: 100%;
    padding: 20px;
}

</style>
</head>
<body>
<jsp:include page="Header.jsp"/>
<div class="container">
  <img src="C:\Users\AthipanA\Pictures\Images\contact.jpg" style="width:100%;">
  <div class="content">
  <div class="address">
  ABC pvt Ltd,
  xxx street,
  yyy.
  </div>
  
  </div>
</div>
<jsp:include page="Footer.jsp"/>
</body>
</html>
