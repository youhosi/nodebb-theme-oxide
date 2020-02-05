<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

			<h1 class="section-title">[[pages:account/best, {username}]]</h1>
			<div class="topic">
				<!-- IF !bestPosts.length -->
				<div class="alert alert-warning">[[user:has_no_posts]]</div>
				<!-- ENDIF !bestPosts.length -->

				<ul component="posts" class="posts-list">
					{{{each bestPosts}}}
					<!-- IMPORT partials/posts_list_item.tpl -->
					{{{end}}}
				</ul>
			</div>

			<h1 class="section-title">[[pages:account/latest-posts, {username}]]</h1>
			<div class="topic">
				<!-- IF !latestPosts.length -->
				<div class="alert alert-warning">[[user:has_no_posts]]</div>
				<!-- ENDIF !latestPosts.length -->

				<ul component="posts" class="posts-list">
					{{{each latestPosts}}}
					<!-- IMPORT partials/posts_list_item.tpl -->
					{{{end}}}
				</ul>
			</div>
		</div>
	</div>

	<div id="user-action-alert" class="alert alert-success hide"></div>
</div>