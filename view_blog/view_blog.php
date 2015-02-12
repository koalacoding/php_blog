<?php include('../to_include.php'); ?>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="view_blog.css">
		<meta charset="utf-8" />
		<title>Blog</title>
	</head>
	<body>
		<?php
			if (isset($_GET['username'])) {
				include ('../sql_connexion.php');

				$request = $bdd->prepare("SELECT username FROM users WHERE username=:username");
				$request->execute(array('username'=>$_GET['username']));

				if ($request->rowCount() > 0) {
		?>
					<div id="core">
						<div id="header">
							<div id="banner">
							Blog of <?php echo $_GET['username']?>
							</div>
						</div>
						<div id="menu">
							<div>
								<span class="menu_element_left actual_page">Blog</span>
								<a href="" class="menu_element_left">About</a>
								<a href="" class="menu_element_left">Contact</a>
							</div>
							<div class="menu_element_right">
								<a href="../index.php">Return to index</a>
							</div>
						</div>

						<div id="right_core">
							<div class="right_core_group">
								<span class="right_core_title">Last comments</span>
								<p>John : GOod blog</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
								<p>Mike : About 33 ?</p>
							</div>

							<div class="right_core_group">
								<span class="right_core_title">Archives</span>
							</div>
						</div>


						<div id="left_core">
		<?php
								// Getting all the posts where the author is $_GET['username']
								$request = $bdd->prepare("SELECT * FROM posts WHERE author=:username");
								$request->execute(array('username'=>$_GET['username']));

								while ($posts = $request->fetch()) {
		?>
									<div class="entry">
										<span class="title">
											<a href="view_post/view_post.php?id=<?php echo $posts['id'] ?>">
												Title : <?php echo htmlspecialchars($posts['title']) ?></a>
										</span>
										<span class="post_date"><br />Published : <?php echo $posts['post_date'] ?></span>
										<span class="post"><?php echo htmlspecialchars($posts['post']) ?><br /></span>
									</div>
		<?php					
								}
		?>
						</div>
					</div>
		<?php
				}

				else {
					echo "This blog doesn't exist. Redirection in 2 seconds...";
					header("refresh:2;url=index.php");
				}
			}

			else {
				echo "No blog name specified. Redirection in 2 seconds...";
				header("refresh:2;url=index.php");
			}
		?>
	</body>
</html>