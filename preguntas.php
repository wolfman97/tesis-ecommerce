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
<div class="container">
  <div class="row">
    <div class="col-lg-12">
      <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
      	
        <!--panel 1-->
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapse">
                Comprando en Anser Muebles E.I.R.L.
                </a>
               </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" align="justify">
            <div class="panel-body">
            <link rel="stylesheet" type="text/css" href="css/estilo.css">
              Compra en línea y ahorra tiempo. En Anser Muebles E.I.R.L. tienes a tu disposición productos 
              hechos a base de madera:<br> Puertas, Muebles, Sillas, Mesas Camas, Ventanas. Además, en Anser Muebles E.I.R.L. te ofrecemos servicio profesional <br> de armado, instalación y despacho a domicilio.
            </div>
          </div>
        </div>

        <!--panel 2-->
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingtwo">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsetwo" aria-expanded="true" aria-controls="collapse">
                Registro y Gestión de mi cuenta
                </a>
               </h4>
          </div>
          <div id="collapsetwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingtwo">
            <div class="panel-body">
            <link rel="stylesheet" type="text/css" href="css/estilo.css">
              ¿Es necesario registrarme antes de hacer una compra?<br>
              Sí, debes registrarte (en caso de no tener cuenta) o ingresar a tu cuenta actual con tu usuario y contraseña.<br><br>

              ¿Por qué necesito registrarme para realizar mis compras?<br>
              Necesitas registrarte en Anser Muebles E.I.R.L. antes de realizar tu pedido para que tu experiencia de compra <br>sea más rápida y ordenada. Además, al tener tus datos, sabremos a qué dirección llevar tu pedido y, si por alguna <br>razón hay un problema con el inventario, podremos contactarte para informarte.<br><br>

              ¿Cómo puedo registrarme?<br>
              Para registrarte, debes seguir estos pasos: 1. Ubica el cursor en la opción Registrarse que se encuentra en la<br> parte superior izquierda de 2. Si ya te registraste, debes dar clic en Iniciar Sesión. 3. Si no tienes una cuenta,<br> debes dar clic en Regístrate y llenar los campos con tu información.<br>
            </div>
          </div>
        </div>

        <!--panel 3-->
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingthree">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsethree" aria-expanded="true" aria-controls="collapse">
                Sobre tu orden / pedido en Anser Muebles E.I.R.L.
                </a>
               </h4>
          </div>
          <div id="collapsethree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingthree">
            <div class="panel-body">
            <link rel="stylesheet" type="text/css" href="css/estilo.css">
              ¿Cómo puedo encontrar productos en Anser Muebles E.I.R.L.?<br>
              Existen varias maneras para encontrar el producto que buscas. Sin embargo, te recomendamos dos: El primero, con el buscador <br>interno de Anser Muebles E.I.R.L.; ubicado en la parte superior izquierda de la página. Úsalo escribiendo palabras claves <br> del producto. El segundo, con el uso del menú principal de Anser Muebles E.I.R.L. Debes elegir la categoría a la que pertenece <br>el producto de tu interés. Cada clic te llevará a una página que ofrece más información y productos.<br><br>

              ¿Cuáles son los pasos para hacer mi compra en Anser Muebles E.I.R.L.?<br>
              1. Regístrate. 2. Selecciona tu producto y envío. 3. Paga tus compras.<br><br>

              ¿Cómo puedo hacer seguimiento a mi pedido?<br>
              El día del despacho de tu mercadería, recibirás un correo en el que te confirmamos que tu pedido está en camino, así como la <br> hora aproximada de llegada.<br><br>

              ¿Cómo puedo saber si hice mi compra correctamente?<br>
              Si realizaste tu compra correctamente, recibirás una notificación de compra en tu correo en la que se detalla tu pedido, el plazo <br> de entrega de tu compra o la fecha de recojo en tienda.<br>
            </div>
          </div>
        </div>

        <!--panel 4-->
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingfour">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsefour" aria-expanded="true" aria-controls="collapse">
                Opciones de entrega de Anser Muebles E.I.R.L.
                </a>
               </h4>
          </div>
          <div id="collapsefour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfour">
            <div class="panel-body">
            <link rel="stylesheet" type="text/css" href="css/estilo.css">
              ¿Cuáles son las opciones de entrega?<br>
              Existen dos maneras de entregar tu pedido: Despacho a Domicilio y Retiro en Tienda. Este último aplica para las tiendas que<br> cuenten con este servicio de entrega y stock del producto.<br><br>

              ¿Cómo sé cuáles son los productos que se pueden recoger en tienda?<br>
              Esta información está visible en la página de los productos y podrás verla, incluso, desde antes que empieces tu compra.<br><br>

              ¿Cómo recoger mi producto en tienda?<br>
              Si la compra que hiciste en Carpintería Palomino S.R.L. fue con la modalidad de Retiro en Tienda, debes acercarte a la empresa,<br> indicar que realizaste una compra con esta modalidad de entrega y presentar tu DNI. Si al momento de la compra autorizaste a <br> otra persona a recoger el producto, deberá también seguir los mismos pasos.<br><br>

              Retira tu producto en la empresa sin costo de despacho.<br><br>

              Av. Colectora Urb. El Alamo Mz.G Lt.26 (frente al colegio Maria Reina De La Esperanza)<br><br>

              ¿Cómo sé si mi pedido está listo para recogerlo en la tienda?<br>
              Cuando tu orden esté lista para el recojo, te enviaremos un correo a la dirección de correo electrónico que consignaste al<br> momento de la compra, en el cual se te informará que la orden está lista para que la recojas.<br><br>

              ¿Qué documentos debo llevar a tienda para recoger mi pedido?<br>
              Para una rápida atención y poder entregarte tu producto, por favor lleva a la tienda que seleccionaste para el recojo, <br>tu Documento Nacional de Identidad (DNI).<br><br>

              Si realicé mi compra en Anser Muebles E.I.R.L. y escogí que mis productos sean despachados a mi domicilio,<br>¿cuándo recibiré mi pedido?<br>
              El plazo más próximo de entrega es de 48 horas luego de validada tu compra.<br><br>

              ¿Cuáles son los destinos/ distritos a los que hacen en el envío?<br>
              Las zonas de reparto son válidas a nivel nacional<br><br>

              ¿Puedo enviar mi pedido a provincias?<br>
              Si, puedes comprar por Venta telefónica y Anser Muebles E.I.R.L.
            </div>
          </div>
        </div>

        <!--panel 5-->
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingfive">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsefive" aria-expanded="true" aria-controls="collapse">
                Facturacion, Pagos, Precios y Promociones
                </a>
               </h4>
          </div>
          <div id="collapsefive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingfive">
            <div class="panel-body">
            <link rel="stylesheet" type="text/css" href="css/estilo.css">
             ¿Cuáles son los métodos de pago aceptados en Anser Muebles E.I.R.L.?<br>
             Puedes pagar tu compra en Carpintería Palomino S.R.L. con las siguientes tarjetas: tarjetas de crédito o débito Visa, MasterCard <br> y American Express. También puedes escoger Pago Efectivo, realizando el pago del código que te genere la orden de compra, en<br> las agencias de los bancos que permitan esta modalidad y que te informamos en nuestra página.<br><br>
            </div>
          </div>
        </div>

        <!--panel 6-->
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingsix">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsesix" aria-expanded="true" aria-controls="collapse">
                Cambios y Devoluciones
                </a>
               </h4>
          </div>
          <div id="collapsesix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingsix">
            <div class="panel-body">
            <link rel="stylesheet" type="text/css" href="css/estilo.css">
              ¿Qué pasa si recibo un producto dañado?<br>
              Si recibes un producto dañado por la compañía de entrega, debes reportarlo llamando al +51 982-898-618. Los productos deben <br> ser inspeccionados a fondo en el momento de la entrega. De ser necesario, rechaza el artículo antes de firmar el recibo de entrega.
            </div>
          </div>
        </div>

        <!--panel 7-->
        <div class="panel panel-default">
          <div class="panel-heading" role="tab" id="headingseven">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseseven" aria-expanded="true" aria-controls="collapse">
                Otras Preguntas
                </a>
               </h4>
          </div>
          <div id="collapseseven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingseven">
            <div class="panel-body">
            <link rel="stylesheet" type="text/css" href="css/estilo.css">
              ¿El carrito de compras calcula de manera automática el costo de envío?<br>
              Sí, el carrito de compras mostrará el costo del producto y el flete.<br><br>

              Si no puedo finalizar mi compra en Sodimac.com.pe, ¿puedo solicitar ayuda telefónica?<br>
              Sí, puedes solicitar asistencia telefónica para completar tu compra en sodimac.com.pe. Debes llamar al 615 6002.<br><br>

              ¿Puedo comprar en Anser Muebles E.I.R.L. para que llegue a la dirección de otra persona?<br>
              Sí, tienes la posibilidad de pedir el artículo (s) en línea como un regalo para otra persona. Debes introducir el nombre <br>del destinatario, dirección de correo electrónico y dirección de domicilio.
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>


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
