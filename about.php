<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>За нас</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
   
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'components/user_header.php'; ?>

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about-img.svg" alt="">
      </div>

      <div class="content">
         <h3>Защо да изберете нас?</h3>
         <p>В Smartpone предлагаме най-новите смартфони на топ цени, с гарантирано качество и бърза доставка. 
            Доверете се на нашия професионален екип, който ще ви помогне да изберете идеалното устройство за вашите нужди. 
            Пазарувайте с увереност – Smartpone е вашият надежден партньор в света на технологиите</p>
         <a href="contact.php" class="btn">Свържете се с нас</a>
      </div>

   </div>

</section>

<section class="reviews">
   
   <h1 class="heading">Често задавани въпроси</h1>

   <div class="swiper reviews-slider">

   <div class="swiper-wrapper">

      <div class="swiper-slide slide">
         <img src="images/question.png" alt="">
         <h3>Какви марки смартфони предлагате?</h3>
         <p>Предлагаме широка гама от водещи марки като Apple, Samsung, Xiaomi, Nothing, Huawei и много други.</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/question.png" alt="">
         <h3>Какви са вариантите за плащане?</h3>
         <p>Приемаме плащане с кредитна/дебитна карта, банков превод и наложен платеж при доставка.</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/question.png" alt="">
         <h3>Имат ли смартфоните гаранция?</h3>
         <p>Да, всички наши устройства идват с официална гаранция, която варира между 12 и 24 месеца, в зависимост от производителя.</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/question.png" alt="">
         <h3>Колко време отнема доставката?</h3>
         <p>Обикновено доставяме поръчките в рамките на 4-5 работни дни за цялата страна.</p>
      </div>

      <div class="swiper-slide slide">
         <img src="images/question.png" alt="">
         <h3>Мога ли да върна или заменя закупен телефон?</h3>
         <p>Да, предлагаме право на връщане или замяна в рамките на 14 дни, ако устройството е в оригиналния си вид и опаковка.</p>
         
      </div>

      <div class="swiper-slide slide">
         <img src="images/question.png" alt="">
         <h3>Kак мога да се свържа с вас за повече въпроси?</h3>
         <p>Можете да се свържете с нас чрез телефон, имейл или нашата контактна форма на уебсайта. Нашият екип с удоволствие ще ви помогне!</p>
         
      </div>

   </div>

   <div class="swiper-pagination"></div>

   </div>

</section>









<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
        slidesPerView:1,
      },
      768: {
        slidesPerView: 2,
      },
      991: {
        slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>