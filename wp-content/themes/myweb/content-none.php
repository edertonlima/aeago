<div class="container">
	<div class="row">
		
		<div class="col-12 center">

			<div class="cont-noticias">
				<h2>Desculpe, nenhum post encontrado! :(</h2>
				<span class="data"><?php echo get_the_date(); ?></span>
			</div>
		</div>

	</div>
</div>


		<!-- NOTÍCIAS SECUNDÁRIA -->
		<section class="box-content no-padding-top">
			<div class="container">
				
				<div class="row">
					<div class="col-12">

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