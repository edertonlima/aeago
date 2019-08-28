<?php
	if( $_POST['associado_nome'] != '' ):

			$new_post = array(
				'post_title'	=> $_POST['associado_nome'].' '.$_POST['associado_sobrenome'],
				//'post_content'  => $_POST['forum_texto'],
				'post_excerpt'  => $_POST['associado_resumo'],
				'post_type'		=> 'associado',
				'post_status'	=> 'pending'
			);

			// insert the post into the database
			if($id_newPost = wp_insert_post( $new_post )):

				//session_start();
				//$autor = get_post( $_SESSION['associado']['id'] );
				//echo '<br><br>'.$_SESSION['associado']['id'];
				//var_dump($autor);
				
				update_field( 'nome_associado', $_POST['associado_nome'], $id_newPost );
				update_field( 'sobrenome_associado', $_POST['associado_sobrenome'], $id_newPost );
				
				update_field( 'associado_celular', $_POST['associado_celular'], $id_newPost );
				update_field( 'associado_telefone', $_POST['associado_telefone'], $id_newPost );
				
				update_field( 'associado_datanascimento', $_POST['associado_datanascimento'], $id_newPost );
				update_field( 'associado_formacao', $_POST['associado_formacao'], $id_newPost );
				update_field( 'num_carteira_associado', $_POST['associado_matricula'], $id_newPost );
				
				update_field( 'associado_telcomercial', $_POST['associado_telcomercial'], $id_newPost );
				update_field( 'associado_setor', $_POST['associado_setor'], $id_newPost );
				update_field( 'associado_ramal', $_POST['associado_ramal'], $id_newPost );
				
				update_field( 'associado_cpf', $_POST['associado_cpf'], $id_newPost );
				update_field( 'associado_rg', $_POST['associado_rg'], $id_newPost );
				update_field( 'associado_crea', $_POST['associado_crea'], $id_newPost );

				update_field( 'associado_endereco', $_POST['associado_endereco'], $id_newPost );
				update_field( 'associado_numero', $_POST['associado_numero'], $id_newPost );
				update_field( 'associado_bairro', $_POST['associado_bairro'], $id_newPost );

				update_field( 'associado_cep', $_POST['associado_cep'], $id_newPost );
				update_field( 'associado_cidade', $_POST['associado_cidade'], $id_newPost );
				update_field( 'associado_uf', $_POST['associado_uf'], $id_newPost );
				
				update_field( 'email_associado', $_POST['associado_email'], $id_newPost );
				update_field( 'senha_associado', $_POST['associado_senha'], $id_newPost );
				
				//wp_set_post_terms( $id_newPost, $_POST['forum_categoria'], 'categoria_forum' );

				//header("Location: " . get_permalink($id_newPost));*/

				$mensagem = 'Cadastro realizado com sucesso! Em preve entreremos em contato, obrigado. :)';
			else: 
				$mensagem = 'Não foi possível enviar os seus dados, por favor, tente novamente mais tarde! :(';

			endif;	
	endif;
?>

<?php get_header(); ?>

	<?php while ( have_posts() ) : the_post(); ?>

		<section class="box-content">
			<div class="container">
				<div class="row">

					<div class="col-9">	

						<div class="cont-noticias">
							<h2 class="left">QUERO SER SÓCIO</h2>
							<h2 class="sub-tituto">Já é uma associado? <a href="javascript:" class="link" id="open-login">Clique aqui!</a></h2>
							<?php if($mensagem){
								echo '<br><br>'.$mensagem;
							} ?>
						</div>		


							
						<form id="" action="<?php echo get_home_url(); ?>/cadastro" method="post" class="form-page row row-mini">
							<fieldset class="col-4">
								<input type="text" name="associado_nome" placeholder="Nome">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_sobrenome" id="" placeholder="Sobrenome">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_email" id="" placeholder="E-mail">
							</fieldset>

							<fieldset class="col-12">
								<textarea name="associado_resumo" id="" placeholder="Conte-nos um pouco sobre você..."></textarea>
							</fieldset>

							<fieldset class="col-6">
								<input type="text" name="associado_telefone" placeholder="Telefone">
							</fieldset>
							<fieldset class="col-6">
								<input type="text" name="associado_celular" id="" placeholder="Celular">
							</fieldset>

							<fieldset class="col-4">
								<input type="text" name="associado_datanascimento" id="" placeholder="Data Nascimento">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_matricula" placeholder="Matrícula">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_formacao" id="" placeholder="Formação">
							</fieldset>

							<fieldset class="col-4">
								<input type="text" name="associado_telcomercial" placeholder="Telefone Comercial">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_setor" id="" placeholder="Setor">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_ramal" id="" placeholder="Ramal">
							</fieldset>

							<fieldset class="col-4">
								<input type="text" name="associado_cpf" placeholder="CPF">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_rg" id="" placeholder="RG">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_crea" id="" placeholder="CREA">
							</fieldset>

							<fieldset class="col-6">
								<input type="text" name="associado_endereco" placeholder="Endereço">
							</fieldset>
							<fieldset class="col-2">
								<input type="text" name="associado_numero" id="" placeholder="Nº">
							</fieldset>
							<fieldset class="col-4">
								<input type="text" name="associado_bairro" id="" placeholder="Bairro">
							</fieldset>

							<fieldset class="col-5">
								<input type="text" name="associado_cep" id="" placeholder="CEP">
							</fieldset>
							<fieldset class="col-5">
								<input type="text" name="associado_cidade" id="" placeholder="Cidade">
							</fieldset>
							<fieldset class="col-2">
								<input type="text" name="associado_uf" placeholder="UF">
							</fieldset>

							<fieldset class="col-6 form-footer">
								<label>Sua senha:</label>
								<input type="password" name="associado_senha" placeholder="****">
							</fieldset>

							<fieldset class="col-12 form-footer">
								<button class="button grande vermelho" type="submit">CADASTRAR</button>
							</fieldset>
						</form>

					</div>

					<div class="col-3">
						<?php get_template_part( 'sidebar', get_post_format() ); ?>
					</div>

				</div>
			</div>
		</section>

	<?php endwhile; ?>

<?php get_footer(); ?>