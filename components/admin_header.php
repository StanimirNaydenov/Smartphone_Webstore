<?php
   if(isset($message)){
      foreach($message as $message){
         echo '
         <div class="message">
            <span>'.$message.'</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
         </div>
         ';
      }
   }
?>

<header class="header">

   <section class="flex">

      <a href="../admin/dashboard.php" class="logo">Admin<span>Panel</span></a>

      <nav class="navbar">
         <a href="../admin/dashboard.php">Начало</a>
         <a href="../admin/products.php">Продукти</a>
         <a href="../admin/placed_orders.php">Поръчки</a>
         <a href="../admin/admin_accounts.php">Администратори</a>
         <a href="../admin/users_accounts.php">Потребители</a>
         <a href="../admin/messages.php">Съобщения</a>
      </nav>

      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="user-btn" class="fas fa-user"></div>
      </div>

      <div class="profile">
         <?php
            $select_profile = $conn->prepare("SELECT * FROM `admins` WHERE id = ?");
            $select_profile->execute([$admin_id]);
            $fetch_profile = $select_profile->fetch(PDO::FETCH_ASSOC);
         ?>
         <p><?= $fetch_profile['name']; ?></p>
         <a href="../admin/update_profile.php" class="btn">Обновявяне на профил</a>
         <div class="flex-btn">
            <a href="../admin/register_admin.php" class="option-btn">Регистрация</a>
            <a href="../admin/admin_login.php" class="option-btn">Вход</a>
         </div>
         <a href="../components/admin_logout.php" class="delete-btn" onclick="return confirm('logout from the website?');">Изход</a> 
      </div>

   </section>

</header>