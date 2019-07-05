<li class="item-forum">
	<div class="header-post">
		
		<div class="table-forum">
			<?php /*<div class="collist-forum"><!--<i class="fas fa-user"></i>--></div> */?>
			<div class="collist-forum colNome">
				<a href="<?php the_permalink(); ?>"><strong><?php the_title(); ?></strong></a>
				<?php the_excerpt(); ?>

				<div class="cat-forum">
					<?php 
						$categorias = wp_get_post_terms( $post->ID, 'categoria_forum' );
						foreach ( $categorias as $categoria ) { ?>
							<span class="label"><?php echo $categoria->name; ?></span>
						<?php }
					?>
					<span class="autor">
						<strong><?php echo get_the_title(get_field('autor-forum')); ?></strong>
						<span> - <?php echo get_the_date(); ?> <?php the_time( 'à\s H:i' ); ?></span>
					</span>
				</div>	

			</div>
			<div class="collist-forum colNum">9</div>	
			<div class="collist-forum colUltPost">
				<span class="autor">
					<strong>Suelen</strong>
					<span><?php echo get_the_date(); ?></span>
					<span><?php the_time( 'à\s H:i' ); ?></span>
				</span>
			</div>
		</div>

	</div>
</li>