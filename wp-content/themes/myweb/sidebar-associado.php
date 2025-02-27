<div class="sidebar">
	
	<?php if (!is_page('sair')) : ?>
		<div class="box-sidebar bg-cinza">
			<h3 class="border center">TORNE-SE UM ASSOCIADO</h3>
			<p class="center">Ao associar-se, você estará contribuindo para o fortalecimento da nossa classe, além de poder aproveitar os vários benefícios que oferecemos aos nossos sócios.</p>
			<a href="<?php echo get_home_url(); ?>/cadastro" class="button btn-full vermelho margin-top-20">QUERO SER SÓCIO!</a>
		</div>
	<?php endif; ?>

	<?php if (!is_page('sair')) : ?>
		<div class="box-sidebar">
			<div class="redes-sociais">
				<span>SIGA-NOS</span>
				<a href="<?php //echo get_permalink(get_page_by_path('contato')); ?>" class="" title="FACEBOOK"><i class="fab fa-facebook-square"></i></a>
				<a href="<?php //echo get_permalink(get_page_by_path('contato')); ?>" class="" title="INSTAGRAM"><i class="fab fa-instagram"></i></a>
			</div>
		</div>
	<?php endif; ?>
	
	<div class="box-sidebar bg-cinza margin-top-30">
		<h3 class="border center">NEWSLETTER</h3>
		<p class="center">Digite seu e-mail abaixo para assinar o nosso informativo e ficar por dentro de todas as novidades!</p>
		<a href="#" class="button btn-full laranja margin-top-20">ASSINAR</a>
	</div>

</div>