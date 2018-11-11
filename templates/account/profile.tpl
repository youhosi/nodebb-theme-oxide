<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

			<h1 class="section-title">[[pages:account/posts, {username}]]</h1>

			<div class="topic">
				<!-- IF !posts.length -->
				<div class="alert alert-warning">[[user:has_no_posts]]</div>
				<!-- ENDIF !posts.length -->

				<!-- IMPORT partials/posts_list.tpl -->

				<!-- IF config.usePagination -->
					<!-- IMPORT partials/paginator.tpl -->
				<!-- ENDIF config.usePagination -->
			</div>
		</div>
	</div>

	<div id="user-action-alert" class="alert alert-success hide"></div>
</div>
