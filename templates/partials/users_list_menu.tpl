<ul class="nav-pills btn-group users-list-menu" role="group">
	<li class="btn btn-default"><a href="{config.relative_path}/users?section=online">[[global:online]]</a></li>
	<li class="btn btn-default"><a href="{config.relative_path}/users?section=sort-posts">[[users:top_posters]]</a></li>
	<!-- IF !reputation:disabled -->
	<li class="btn btn-default"><a href="{config.relative_path}/users?section=sort-reputation">[[users:most_reputation]]</a></li>
	<!-- ENDIF !reputation:disabled -->

	<!-- IF isAdminOrGlobalMod -->
	<div class="btn-group bottom-sheet" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		[[oxide:show-more]]
		<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="{config.relative_path}/users?section=flagged">[[users:most_flags]]</a></li>
			<li><a href="{config.relative_path}/users?section=banned">[[user:banned]]</a></li>
		</ul>
	</div>
	<!-- ENDIF isAdminOrGlobalMod -->
</ul>