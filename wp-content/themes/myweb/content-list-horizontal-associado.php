		
		<div class="row row-mini item-list-horizontal">
				<div class="col-3">
					<?php 
						$imagem = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'mini-post' ); 
						if($imagem[0]){ ?>
							<img src="<?php echo $imagem[0]; ?>">
						<?php }
					?>
				</div>

				<div class="col-9">
					<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>" class="" style="">
						<span class="label azul">Engenheiro</span>
						<h2><?php the_title(); ?></h2>
						
						<?php the_excerpt(); ?>
					</a>
				</div>

		</div>