<li component="post" class="posts-list-item<!-- IF ../deleted --> deleted<!-- ELSE --><!-- IF ../topic.deleted --> deleted<!-- ENDIF --><!-- ENDIF -->" data-pid="{../pid}" data-uid="{../uid}">
	<div class="post-body">
		<div class="clearfix post-header">
			<div class="icon pull-left">
				<a href="{config.relative_path}/user/{../user.userslug}">
					<!-- IF ../user.picture -->
					<img title="{../user.username}" class="img-rounded user-img" src="{../user.picture}">
					<!-- ELSE -->
					<div class="user-icon user-img" style="background-color: {../user.icon:bgColor};" title="{../user.username}">{../user.icon:text}</div>
					<!-- ENDIF -->
				</a>
			</div>
		</div>

		<div class="post-body content">
			<div class="post-author">
				<strong>
					<a class="topic-title" href="{config.relative_path}/post/{../pid}"><!-- IF !../isMainPost--><i class="fa fa-fw fa-reply"></i><!-- ENDIF --> {../topic.title}</a>
				</strong>

				<span class="permalink timeago" title="{../timestampISO}"></span>
			</div>

			<div component="post/content">
				{../content}
			</div>
		</div>

		<a class="topic-category" href="{config.relative_path}/category/{../category.slug}">
			[[global:posted_in, {../category.name}]]
		</a>
	</div>
</li>