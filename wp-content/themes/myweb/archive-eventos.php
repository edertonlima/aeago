<?php get_header(); ?>

<?php //var_dump($_SESSION['associado']); ?>
<section class="box-content padding-top-40 associado list-horizontal">
	<div class="container">
		
		<div class="row">
			<div class="col-9">

				<div class="noticias list-noticias noticias-recentes">
					<div class="row row-mini">
						<?php if ( have_posts() ) :
							while ( have_posts() ) : the_post();
								get_template_part( 'content-list-horizontal-associado', get_post_format() );
								//get_template_part( 'content-list-associado', get_post_format() );
							endwhile; 
						else :
							get_template_part( 'content', 'none' );
						endif ?>

					</div>
				</div>

			</div>
			<div class="col-3">

				<?php get_template_part( 'sidebar', get_post_format() ); ?>

			</div>	
		</div>

	</div>
</section>

<?php get_footer(); ?>