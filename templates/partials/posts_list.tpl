<ul component="posts" class="posts posts-list" data-nextstart="{nextStart}">

	<!-- BEGIN posts -->
	<li component="post" class="posts-list-item <!-- IF posts.deleted --> deleted<!-- ELSE --><!-- IF posts.topic.deleted --> deleted<!-- ENDIF posts.topic.deleted --><!-- ENDIF posts.deleted -->" data-pid="{posts.pid}" data-uid="{posts.uid}">
		<div class="post-body">
			<div class="clearfix post-header">
				<div class="icon pull-left">
					<a href="{config.relative_path}/user/{posts.user.userslug}">
						<!-- IF posts.user.picture -->
						<img title="{posts.user.username}" class="img-rounded user-img" src="{posts.user.picture}">
						<!-- ELSE -->
						<div class="user-icon user-img" style="background-color: {posts.user.icon:bgColor};" title="{posts.user.username}">{posts.user.icon:text}</div>
						<!-- ENDIF posts.user.picture -->
					</a>
				</div>
			</div>

			<div class="post-body content">
				<div class="post-author">
					<strong>
						<a class="topic-title" href="{config.relative_path}/post/{posts.pid}"><!-- IF !posts.isMainPost --><!-- ENDIF !posts.isMainPost -->{posts.topic.title}</a>
					</strong>
					
					<span class="permalink timeago" title="{posts.timestampISO}"></span>
				</div>

				<div component="post/content">
					{posts.content}
				</div>
			</div>

			<a class="topic-category" href="{config.relative_path}/category/{posts.category.slug}">
				[[global:posted_in, {posts.category.name}]]
			</a>
		</div>
	</li>
	<!-- END posts -->
</ul>

<div component="posts/loading" class="loading-indicator text-center hidden">
	<i class="fa fa-refresh fa-spin"></i>
</div>