<?php
	if( isset($_POST['candidato']) ):
		if($_POST['candidato'] != ''):

			$new_candidato = $_POST['candidato'];
			$new_row = $_POST['candidato_row'];

			if( have_rows('associados_votacao','option') ):
				while ( have_rows('associados_votacao','option') ) : the_row();

					$row_candidato = get_sub_field('candidato_votacao','option');
					$row_candidato->ID.' = '.$new_candidato;

					if($row_candidato->ID == $new_candidato):
						$total_votos = get_sub_field('votos_votacao','option');
						$total_votos = $total_votos+1;
					endif;

				endwhile;
			endif;

			update_sub_field( array('associados_votacao', $new_row, 'votos_votacao'), $total_votos , 'option' );
			update_field( 'status_votacao_associado', true, $post->ID );

		endif;
	endif;

//update_field( 'descricao_votação', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.', 'option' );

/*
			update_sub_row($selector, $row, $value, [$post_id])


			'candidato_votacao','option'

			update_sub_field( array('associados_votacao', 1, 'sub_repeater', 2, 'candidato_votacao'), 'This value is for repeater row 1, and sub_repeater row 2!' );

			update_field( 'autor-forum', $autor, $candidato );

			/*$new_post = array(
				'post_title'	=> $_POST['forum_titulo'],
				'post_content'  => $_POST['forum_texto'],
				'post_excerpt'  => $_POST['forum_resumo'],
				'post_type'		=> 'forum',
				'post_status'	=> 'publish'
			);*/

			// insert the post into the database
			//if($id_newPost = wp_insert_post( $new_post )):

				//session_start();
				//$autor = get_post( $_SESSION['associado']['id'] );
				//echo '<br><br>'.$_SESSION['associado']['id'];
				//var_dump($autor);
				//update_field( 'autor-forum', $autor, $id_newPost );
				//wp_set_post_terms( $id_newPost, $_POST['forum_categoria'], 'categoria_forum' );

				//header("Location: " . get_permalink($id_newPost));
			//endif;
?>

<?php get_header(); ?>

<?php while ( have_posts() ) : the_post(); ?>

	<section class="box-content padding-top-40 no-padding-bottom associado detalhe">
		<div class="container">
			
			<div class="row">
				<div class="col-9">

					<?php
						if( $_SESSION['associado']['id'] == $post->ID ):
							get_template_part( 'content-associado-on', get_post_format() );
						else:
							get_template_part( 'content-associado', get_post_format() );
						endif;
					?>

				</div>

				<div class="col-3">

					<?php get_template_part( 'sidebar-associado', get_post_format() ); ?>

				</div>	
			</div>

		</div>
	</section>

	<!-- NOTÍCIAS SECUNDÁRIA -->
	<section class="box-content no-padding-top">
		<div class="container">
			
			<div class="row">
				<div class="col-m-1 col-10">

					<div class="noticias list-noticias noticias-recentes">

						<h3 class="border mid">
							<span>NOTÍCIAS RECENTES</span>
							<a href="#" class="button pequeno transparent">mais notícias <i class="fas fa-chevron-right"></i></a>
						</h3>

						<div class="row row-mini">

							<?php
								$args_noticias = array(
									'posts_per_page' => 4,
									'post_type' => 'post'
								);

								$current_prod = $post->ID;
								query_posts( $args_noticias );
								$i = 0;
								while ( have_posts() ) : the_post();
									if($current_prod != $post->ID){

										$i++;
										if($i <= 3){
										
											$categorias = wp_get_post_terms( $post->ID, 'category' ); 
											$imagem = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'mini-post' ); ?>

											<div class="col-4 item-noticias">
												<div class="img-noticias">
													<?php foreach ( $categorias as $categoria ) { ?>
														<span class="label laranja"><?php echo $categoria->name; ?></span>
													<?php } ?>	
													<img src="<?php if($imagem[0]){ echo $imagem[0]; } ?>">
												</div>

												<div class="cont-noticias">
													<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
														<h2><?php the_title(); ?></h2>
													</a>
													<span class="data"><?php echo get_the_date(); ?></span>
												</div>
											</div>
										
										<?php }

									}
								endwhile;
								wp_reset_query();
							?>

						</div>
					</div>

				</div>
			</div>

		</div>
	</section>
	<!-- NOTÍCIAS SECUNDÁRIA -->

<?php endwhile; ?>

<?php get_footer(); ?>