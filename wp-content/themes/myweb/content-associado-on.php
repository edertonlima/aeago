		
		
			<div class="cont-noticias login-on">

				<div class="cont-login-on image">
					<?php 
						$imagem = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'mini-post' ); 
						if($imagem[0]){ ?>
							<img src="<?php echo $imagem[0]; ?>">
						<?php }
					?>
				</div>

				<div class="cont-login-on">
					<span class="label azul">Engenheiro</span>
					<h2><?php the_title(); ?></h2>
					<p>Número de Carteira: <?php the_field('num_carteira_associado'); ?></p>
				</div>

				<div class="cont-login-on">
					<a href="<?php echo get_permalink($_SESSION['associado']['id']); ?>?editar=senha" class="button mini cinza transparent">ALTERAR SENHA</a>
					<a href="<?php echo get_permalink($_SESSION['associado']['id']); ?>?editar=perfil" class="button mini laranja">EDITAR</a>
				</div>

			</div>
		

		<?php if( ($_GET['editar'] == 'perfil') and ( $_SESSION['associado']['id'] == $post->ID )) : ?>
			<section class="box-content box-form-bg bg-cinza margin-top-30">

				<h3>EDITAR PERFIL</h3>
				
				<form id="" action="<?php echo get_permalink($_SESSION['associado']['id']); ?>" method="post">
					<fieldset class="col2">
						<input type="text" name="nome" id="sobrenome" placeholder="Seu Nome" value="<?php the_field('nome_associado'); ?>">
					</fieldset>
					<fieldset class="col2 right">
						<input type="text" name="sobrenome" id="sobrenome" placeholder="Seu Sobrenome" value="<?php the_field('sobrenome_associado'); ?>">
					</fieldset>

					<fieldset class="col2">
						<input type="text" name="email" id="email" placeholder="Seu E-mail" value="<?php the_field('email_associado'); ?>">
					</fieldset>
					<fieldset class="col2 right">
						<input type="text" name="num_carteira" id="num_carteira" placeholder="Número de Carteira" value="<?php the_field('num_carteira_associado'); ?>">
					</fieldset>

					<fieldset class="">
						<textarea placeholder="Sobre Você"><?php echo get_the_excerpt(); ?></textarea>
					</fieldset>

					<fieldset class="">
						<button class="button grande vermelho" type="submit">SALVAR</button>
					</fieldset>
				</form>

			</section>
		<?php endif;

		if( ($_GET['editar'] == 'senha') and ( $_SESSION['associado']['id'] == $post->ID )) : ?>
			<section class="box-content box-form-bg bg-cinza margin-top-30">

						<h3>ALTERAR SENHA</h3>
						
						<form id="" action="<?php echo get_permalink($_SESSION['associado']['id']); ?>" method="post">
							<fieldset class="col2">
								<input type="text" name="nome" id="sobrenome" placeholder="Nova Senha" value="">
							</fieldset>
							<fieldset class="col2 right">
								<input type="text" name="sobrenome" id="sobrenome" placeholder="Confirme sua Nova Senha" value="">
							</fieldset>

							<fieldset class="">
								<button class="button grande vermelho" type="submit">SALVAR</button>
							</fieldset>
						</form>

			</section>
		<?php endif; ?>

		<?php if(!get_field('status_votacao_associado')):
			if( have_rows('associados_votacao','option') ): ?>

				<div class="titulo-votacao">
					<h2><?php the_field('titulo_votacao','option'); ?></h2>
					<p><?php the_field('descricao_votacao','option'); ?></p>
				</div>

				<?php while ( have_rows('associados_votacao','option') ) : the_row();

					$candidato = get_sub_field('candidato_votacao','option');
					//var_dump($candidato); 

					if($post->ID != $candidato->ID){ ?>

						<div class="row row-mini item-list-horizontal votacao">
							<div class="col-3">
								<?php 
									$imagem = wp_get_attachment_image_src( get_post_thumbnail_id($candidato->ID), 'mini-post' ); 
									if($imagem[0]){ ?>
										<img src="<?php echo $imagem[0]; ?>">
									<?php }
								?>
							</div>

							<div class="col-7">

									<span class="label azul">Engenheiro</span>
									<h2><?php echo $candidato->post_title ?></h2>
									
									<?php the_excerpt(); ?>

							</div>

							<div class="col-2">
								<form action="<?php the_permalink(); ?>" method="post">
									<input type="hidden" name="candidato" value="<?php echo $candidato->ID; ?>">
									<input type="hidden" name="candidato_row" value="<?php echo get_row_index(); ?>">
									<button class="button mini laranja btn-votacao" type="submit">VOTAR</button>
								</form>
							</div>
						</div>

					<?php }
				endwhile;
			endif;
		else: ?>

				<div class="titulo-votacao">
					<h2><?php the_field('titulo_votacao','option'); ?></h2>
					<p><?php the_field('descricao_votacao_votado','option'); ?></p>
				</div>

		<?php endif; ?>


<?php /*

<?php $category = get_categories($args);  ?>

<!-- slide -->
<section class="box-content box-slide">
	<div class="slide">
		<div class="carousel slide" data-ride="carousel" data-interval="6000" id="slide">

			<div class="carousel-inner" role="listbox">

				<?php if( have_rows('slide') ):
					$slide = 0;
					while ( have_rows('slide') ) : the_row();

						if(get_sub_field('imagem')){
							$slide = $slide+1; ?>

							<div class="item <?php if($slide == 1){ echo 'active'; } ?>" style="background-image: url('<?php the_sub_field('imagem'); ?>');">

								<div class="box-height">
									<div class="box-texto">
										
										<img src="<?php the_field('ico_listagem',$category[0]->taxonomy.'_'.$category[0]->term_id); ?>" alt="<?php echo $category[0]->name; ?>" />
										<h2 class="title_page"><?php the_title(); ?></h2>
 
										<p class="texto"><?php the_sub_field('texto'); ?></p>
										<?php if(get_sub_field('sub_texto')){ ?>
											<p class="sub-texto"><?php the_sub_field('sub_texto'); ?></p>
										<?php } ?>

									</div>
								</div>
								
							</div>

						<?php }

					endwhile;
				endif; ?>

			</div>

			<ol class="carousel-indicators">
				
				<?php for($i=0; $i<$slide; $i++){ ?>
					<li data-target="#slide" data-slide-to="<?php echo $i; ?>" class="<?php if($i == 0){ echo 'active'; } ?>"></li>
				<?php } ?>
				
			</ol>

		</div>

	</div>
</section>

<section class="box-content box-sobre sombra">
	<div class="container">
		
		<div class="content-post">
			<?php the_content(); ?>
		</div>

	</div>
</section>

<?php if(get_field('imagem')){ ?>
	<img src="<?php the_field('imagem'); ?>" class="img-destaque" alt=""/>
<?php } ?>

<section class="box-content box-sobre sombra">
	<div class="container">

		<div class="content-post">
			<?php if(get_field('titulo')){ ?>
				<h5><?php the_field('titulo'); ?></h5>
			<?php } ?>
			<?php the_field('texto_adicional'); ?>
		</div>

		<?php /*
		<div class="autor">
			<span class="ico"></span>
			<span class="nome-data"><span class="nome"><?php echo get_the_author(); ?></span>&nbsp;&nbsp;|&nbsp;&nbsp;<?php the_date(); ?></span>
		</div>
		*/  /* ?>
	</div>
</section>

<section class="box-content box-sobre sombra no-padding">
	<div class="container">

		<h5 class="veja-mais">VEJA MAIS NOTÍCIAS <br> RELACIONADAS</h5>

		<div class="grid">
			<?php
				$produto = get_previous_post();
				if($produto){ $terms = get_the_category($produto->ID); ?>
					<div class="grid-item grid-left">
						<div class="">
							<a href="<?php the_permalink($produto->ID); ?>" title="<?php echo $produto->post_title; ?>">
								<article class="item">
					
									<img src="<?php the_field('imagem_listagem_post', $produto->ID); ?>" class="img-grid" alt="<?php echo $produto->post_title; ?>"/>

									<div class="hover-grid">
										<div class="cont-hover">
											<img src="<?php the_field('ico_listagem',$terms[0]->taxonomy.'_'.$terms[0]->term_id); ?>" class="" alt=""/>
											<span><?php echo $produto->post_title; ?></span>
											<?php echo $terms[0]->name; ?>
										</div>
									</div>
								</article>
							</a>
						</div>
					</div>
				<?php }
			?>

			<?php
				$produto = get_next_post();
				if($produto){ $terms = get_the_category($produto->ID); ?>
					<div class="grid-item grid-right">
						<div class="">
							<a href="<?php the_permalink($produto->ID); ?>" title="<?php echo $produto->post_title; ?>">
								<article class="item">
					
									<img src="<?php the_field('imagem_listagem_post', $produto->ID); ?>" class="img-grid" alt="<?php echo $produto->post_title; ?>"/>

									<div class="hover-grid">
										<div class="cont-hover">
											<img src="<?php the_field('ico_listagem',$terms[0]->taxonomy.'_'.$terms[0]->term_id); ?>" class="" alt=""/>
											<span><?php echo $produto->post_title; ?></span>
											<?php echo $terms[0]->name; ?>
										</div>
									</div>
								</article>
							</a>
						</div>
					</div>
				<?php }
			?>
		</div>

	</div>
</section>
*/
?>

<script type="text/javascript">
	/*jQuery('.btn-votacao').click(function(){
		candidato = jQuery(this).attr('rel');

				$.postJSON("<?php echo get_home_url(); ?>/associado/ederton-lima", { 
					candidato:candidato,
				}, function(result){
					alert();

				});
	});*/


	jQuery(window).load(function(){

		

	});

	jQuery(window).resize(function(){

	});
</script>
