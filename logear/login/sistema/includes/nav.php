		<nav>
			<ul>
				<li><a href="index.php">Historial</a></li>
                <li> 
                <?php 
				if($_SESSION['rol'] == 2){
			 ?><a href="proyectoIMG.php">Proyecto</a></li>
                <?php } ?>
                
			<?php 
				if($_SESSION['rol'] == 1){
			 ?>
                
				<li class="principal">
      
					<a href="#">usuarios</a>
					<ul>
						<li><a href="registro_usuario.php">Nuevo usuario</a></li>
						<li><a href="lista_usuarios.php">Lista de usuarios</a></li>
					</ul>
				</li>
			<?php } ?>
				