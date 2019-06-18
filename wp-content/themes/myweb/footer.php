
	<footer class="footer">
		<nav class="nav">
			<ul>
				<li class="">
					<a href="<?php echo get_home_url(); ?>" title="HOME">HOME</a>
				</li>

				<li class="submenu">
					<a href="<?php //echo get_permalink(get_page_by_path('sobre')); ?>" title="SOBRE">SOBRE <i class="fas fa-chevron-down"></i></a>
				</li>

				<li class="">
					<a href="<?php //echo get_home_url(); ?>" title="CURSOS">CURSOS</a>
				</li>

				<li class="">
					<a href="<?php //echo get_permalink(get_page_by_path('co-found')); ?>" title="EVENTOS">EVENTOS</a>
				</li>

				<li class="">
					<a href="<?php //echo get_home_url(); ?>" title="NOTÍCIAS">NOTÍCIAS</a>
				</li>

				<li class="">
					<a href="<?php //echo get_permalink(get_page_by_path('contato')); ?>" title="CONTATO">CONTATO</a>
				</li>

				<li class="">
					<a href="<?php //echo get_permalink(get_page_by_path('contato')); ?>" class="button associar-se" title="ASSOCIAR-SE">ASSOCIAR-SE</a>
				</li>
			</ul>
		</nav>

		<div class="content-footer">
			<div class="container">
				<div class="row">
					
					<div class="col-6">
						<img class="img-footer" src="<?php //the_field('logo_header', 'option'); ?><?php echo get_template_directory_uri(); ?>/assets/images/logo-aeago-footer.png" alt="<?php //the_field('titulo', 'option'); ?>">
						<div class="endereco-footer">
						<span class="legend-footer">ENDEREÇO</span>
						<p>Rua 220, Nº 805, Setor Leste Universitário, Goiânia – GO<br>CEP 74603-140</p>
						</div>
					</div>
					<div class="col-3">
						<span class="legend-footer">TELEFONE</span>
						<span class="info-footer"><em>(62)</em> 3218-2914</span>
					</div>
					<div class="col-3">
						<span class="legend-footer">E-MAIL</span>
						<span class="info-footer">contato@aeago.org.br</span>
					</div>
				</div>
				
				<?php /*<div class="row">

					<?php if( have_rows('redes_sociais','option') ): ?>
						<div class="redes">						
							<?php while ( have_rows('redes_sociais','option') ) : the_row(); ?>

								<a href="<?php the_sub_field('url','option'); ?>" title="<?php the_sub_field('nome','option'); ?>" target="_blank">
									<img src="<?php the_sub_field('icone','option'); ?>" alt="<?php the_field('nome', 'option'); ?>">
								</a>
							<?php endwhile; ?>
						</div>
					<?php endif; ?>

					<div class="tel_footer">
						<span><?php the_field('telefone_1', 'option'); ?></span>
						<?php
							if(get_field('telefone_2', 'option')){ ?>
								<span><?php the_field('telefone_2', 'option'); ?></span>
							<?php }
						 ?>
					</div>
					<img src="<?php the_field('logo_header', 'option'); ?>" alt="<?php the_field('titulo', 'option'); ?>" class="logo_footer">
					
				</div>*/?>
			</div>
		</div>

		<p class="copy"><i class="far fa-copyright"></i><?php echo date('Y'); ?>. Todos os direitos reservados.</p>
	</footer>

	<?php wp_footer(); ?>

</body>
</html>

