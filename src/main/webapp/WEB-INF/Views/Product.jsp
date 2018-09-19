<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
    font-family: "Lato", sans-serif;
}
.sidenav a.active {
  background-color: #15EA56  ;
  color: white;
}
.sidenav a:hover:not(.active) {
  background-color: #3F78AA;
  color: white;
}
.dubai{
 width: 200px;
 height: 50px;
 background-color:#ffab1c;
}
.dubai {
font-size: 25px;
    color: #818181;
    display: block;
}
.sidenav {
    height: 90%;
    width: 200px;
    position: fixed;
    z-index: 1;
    top: 0px;
    left: 0;
    background-color: #ebff70 ;
    overflow-x: hidden;
    padding-top: 0px;
}

.sidenav a {
 
    text-decoration: none;
    font-size: 15px;
    color: #818181;
    display: block;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.main {
    margin-left: 200px; /* Same as the width of the sidenav */
    font-size: 28px; /* Increased text to enable scrolling */
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"/>

<div class="sidenav">
<div class="dubai">
<center>Dubai Shopieee</center>
</div>
   <a href="Product" style="background-color:#56f7a1;">Men</a>
  <a href="#denim">DENIM</a>
  <a href="#shirts">SHIRTS</a>
  <a href="#pants">PANTS</a>
  <a href="#tshirts">TSHIRTS</a>
  <a href="#outerWear">OUTER WEAR</a>
  <a href="#traditionalWear">TRADITIONAL WEAR</a>
  <a href="#shorts">SHORTS</a>
  <a href="#" style="background-color:#56f7a1;">Women</a>
  <a href="#denimWomen">DENIM</a>
  <a href="#">T-SHIRTS</a>
  <a href="#">SKIRTS</a>
  <a href="#">BRIDAL WEAR</a>
  <a href="#">SAREES</a>
  <a href="#">SALWARS</a>
  <a href="#" style="background-color:#56f7a1;">KIDS</a>
 <a href="#">BOYS CLOTHING</a>
  <a href="#">GIRLS CLOTHING</a>
</div>
<div class="main" >
<div id="men">

<a href="#denim"><img src="C:\Images\denimMale\mainJean.jpg" alt="HTML tutorial" style="width:150px;height:150px;border:;">></a>
<a href="#shirts"><img src="C:\Images\shirtsMale\mainshirts.jpg" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#pants"><img src="C:\Images\pantsMale\mainPant.jpg" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#tshirts"><img src="C:\Images\tshirtsMale\mainTshirt.jpg" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#outerWear"><img src="C:\Images\outerWearMale\mainOuterWear.jpg" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#traditionalWear"><img src="C:\Images\traditionalWearMale\mainTraditionalWear.jpg" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#shorts"><img src="C:\Images\shortsMale\mainShorts.jpg" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
</div>

<div id="women">
<a href="#denimWomen"><img src="C:\Images\denimFemale\mainJean.jpg" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#tshirts"><img src="C:\Images\shirt.png" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#skirts"><img src="C:\Images\shirt.png" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#bridalWear"><img src="C:\Images\shirt.png" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#Sarees"><img src="C:\Images\shirt.png" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#salwars"><img src="C:\Images\shirt.png" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
</div>


<div id="kids">
<a href="#boysClothing"><img src="C:\Images\shirt.png" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
<a href="#girlsClothing"><img src="C:\Images\shirt.png" alt="HTML tutorial" style="width:150px;height:150px;border:;"></a>
</div>
<div id="menPage">
<h2 align="center">Men's collections</h2>

<h1 align="center">Denims</h1>
<div class="denim" id="denim">
<img src="C:\Images\denimMale\mainJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimMale\dualJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimMale\blueJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimMale\greyJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimMale\skinnyJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimMale\starJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimMale\tonedJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimMale\whiteJean.jpg" alt="jean" style="width:200px;height:200px;">
</div>
<h1 align="center">Shirts</h1>
<div class="shirts" id="shirts">
<img src="C:\Images\shirtsMale\blackShirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shirtsMale\darkBlueShirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shirtsMale\checkedShirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shirtsMale\whiteShirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shirtsMale\dualShirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shirtsMale\darkShirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shirtsMale\shinyShirt.jpg" alt="jean" style="width:200px;height:200px;">

</div>

<h1 align="center">Pants</h1>
<div class="pants" id="pants">
<img src="C:\Images\pantsMale\blackPant.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\pantsMale\lightGreyPant.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\pantsMale\darkGreyPant.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\pantsMale\blueCheckedPant.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\pantsMale\bluePant.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\pantsMale\greenPant.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\pantsMale\brownPant.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\pantsMale\checkedPant.jpg" alt="jean" style="width:200px;height:200px;">

</div>

<h1 align="center">tshirts</h1>
<div class="tshirts" id="tshirts">
<img src="C:\Images\tshirtsMale\redTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\levisTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\adidasTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\pumaTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\printedTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\quotedTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\captainTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\grayTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\modelTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\multiTshirt.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\tshirtsMale\whiteFullTshirt.jpg" alt="jean" style="width:200px;height:200px;">

<img src="C:\Images\tshirtsMale\vneckBlackTshirt.jpg" alt="jean" style="width:200px;height:200px;">
</div>

<h1 align="center">Outer Wear</h1>
<div class="outerWear" id="outerWear">
<img src="C:\Images\outerWearMale\armyOutfit.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\bikerZipSuit.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\Blazzer.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\shinyBlazer.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\greyCoat.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\rainCoat.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\hairyJacket.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\floweredBlazzer.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\buttonCoat.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\denimJacket.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\outerWearMale\greenJacket.jpg" alt="jean" style="width:200px;height:200px;">
</div>

<h1 align="center">Traditional Wear</h1>
<div class="traditionalWear" id="traditionalWear">
<img src="C:\Images\traditionalWearMale\bluePyjama.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\traditionalWearMale\pyjamaDhoti.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\traditionalWearMale\designerPyjama.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\traditionalWearMale\kingTurban.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\traditionalWearMale\shinyPyjama.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\traditionalWearMale\silkDhotiSet.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\traditionalWearMale\whiteDhotiSet.jpg" alt="jean" style="width:200px;height:200px;">

</div>
<h1 align="center">Shorts</h1>
<div class="shorts" id="shorts">
<img src="C:\Images\shortsMale\adidasShorts.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shortsMale\armyShorts.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shortsMale\brownShorts.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shortsMale\blueShorts.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shortsMale\cargoShorts.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shortsMale\flowerShorts.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shortsMale\jeanShorts.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shortsMale\nikeShorts.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\shortsMale\ropedShorts.jpg" alt="jean" style="width:200px;height:200px;">
</div>
</div>

<div id="womenPage">
<h1 align="center">Women's Collections</h1>
<h1 align="center">Denim</h1>
<div class="denimWomen" id="denimWomen">
<img src="C:\Images\denimFeMale\blackJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\blueJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\darkBlueJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\lightBlueJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\halfWhiteJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\looseJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\tonnedJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\navyJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\pinkJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\redJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\shinyJean.jpg" alt="jean" style="width:200px;height:200px;">
<img src="C:\Images\denimFeMale\tonedLadyJean.jpg" alt="jean" style="width:200px;height:200px;">
</div>
</div>
</div>

  <jsp:include page="Footer.jsp"/>
</body>

</html> 
