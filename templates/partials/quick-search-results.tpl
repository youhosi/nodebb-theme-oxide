{{{each posts}}}
<li class="quick-search-item">
	<a href="{config.relative_path}/post/{posts.pid}">
		<p class="quick-search-title">{posts.topic.title}</p>
		<span class="quick-search-content">
			{posts.snippet}
		</span>
	 </a>
</li>
{{{end}}}
<!-- IF multiplePages -->
<li class="text-center">
	<a href="{url}" class="quick-search-show-more">[[search:see-more-results, {matchCount}]]</a>
</li>
<!-- ENDIF multiplePages -->