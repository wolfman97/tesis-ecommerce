<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/logo1.png" alt="First slide" width='868px' height='370px'> 
		                  </div>
		                  <div class="item">
		                    <img src="images/logo2.jpg" alt="Second slide"width='868px' height='370px'>
		                  </div>
		                  <div class="item">
		                    <img src="images/logo3.jpg" alt="Third slide"width='868px' height='190px'>
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>

		            <section id="infor">

    <section id="izqu">
     	    <h2>HISTORIA</h2>
     	    <p class="parrafo">
     	       El 16 de marzo de 1997 la empresa, a nombre como persona jurídica del fundador, Rodolfo Gonzales Panduro, contaba con un local de 96 m2, 5 trabajadores y un buen estatus dentro del sector.<br><br>
               Su instalación a la AV. COLECTORA   URB. EL ALAMO  MZ. G  LT. 26, su actual ubicación, con 160 m2.
     	    </p>
    </section> <br/>

    <section class="un">
        <h2>NUESTRA VISION</h2>
            <p class="parrafo">
                “Ser reconocida como una de las cinco primeras mejores carpinterías en la Provincia Constitucional del Callao”.
            </p>
    </section> <br/>

    <section class="un do">
        <h2>NUESTRA MISION</h2>
            <p class="parrafo">
                “La muebleria Anser Muebles E.I.R.L desde su fundación se han caracterizado por su compromiso con cada cliente, procurando satisfacer las necesidades y deseos de sus clientes, ofreciendo un producto de excelente calidad”.
            </p>
    </section> <br/>

    <section class="un">
        <h2>UBICACION</h2>
            <p class="parrafo">
            	AV. COLECTORA   URB. EL ALAMO  MZ. G  LT. 26<br></br>
            	REF: Frente al colegio Maria Reina de la Esperanza.
            </p>
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d975.6491166813252!2d-77.10886717084757!3d-12.002399999468556!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTLCsDAwJzA4LjYiUyA3N8KwMDYnMzAuMCJX!5e0!3m2!1ses-419!2spe!4v1531134580939" width="850" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
    </section>
    <br/><br/>
</section>
		           
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>