{{{each posts}}}
<li class="quick-search-item">
	<a href="{config.relative_path}/post/{posts.pid}">
		<p class="quick-search-title">{posts.topic.title}</p>

		<span class="quick-search-content">
			{posts.snippet}
		</span>

		<div class="quick-search-info">
			<span class="quick-search-meta">
				<i style="{function.generateCategoryBackground, posts.category}" class="fa {posts.category.icon} quick-search-icon"></i>
				{posts.category.name}
			</span>

			<span class="px-1">·</span>

			<span class="timeago" title="{posts.timestampISO}"></span>
		</div>
	 </a>
</li>
{{{end}}}
<!-- IF multiplePages -->
<li class="text-center">
	<a href="{url}" class="quick-search-show-more">[[search:see-more-results, {matchCount}]]</a>
</li>
<!-- ENDIF multiplePages -->