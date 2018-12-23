<!-- BEGIN posts -->
<!-- IF @first -->
<!-- IF !config.hideCategoryLastPost -->
<div component="category/posts">
	<div class="avatar">
		<a href="{config.relative_path}/user/{../user.userslug}">
			<!-- IF ../user.picture -->
			<img class="user-img" title="{../user.username}" alt="{../user.username}" src="{../user.picture}">
			<!-- ELSE -->
			<span class="user-icon user-img" title="{../user.username}" style="background-color: {../user.icon:bgColor};">{../user.icon:text}</span>
			<!-- ENDIF ../user.picture -->
		</a>
	</div>

	<div class="info">
		<div class="title">
			<a href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">{../topic.title}</a>
		</div>

		<div class="by-user">
			<a href="{config.relative_path}/user/{../user.userslug}">{../user.username}</a>,
		</div>

		<div class="time">
			<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				<small class="timeago" title="{../timestampISO}"></small>
			</a>
		</div>
	</div>
</div>
<!-- ENDIF !config.hideCategoryLastPost -->
<!-- ENDIF @first -->
<!-- END posts -->

<!-- IF !../posts.length -->
<div component="category/posts">
	<div class="post-content">
		[[category:no_new_posts]]
	</div>
</div>
<!-- ENDIF !../posts.length -->