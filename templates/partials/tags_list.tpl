<ul class="tag-list">
	{{{each tags}}}
	<li class="pull-left">
		<a href="{config.relative_path}/tags/{tags.valueEscaped}" data-value="{tags.valueEscaped}" class="tag" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">
			<span class="tag-item" data-tag="{tags.valueEscaped}">
				{tags.valueEscaped}
				<span class="tag-topic-count" title="{tags.score}">{tags.score}</span>
			</span>
		</a>
	</li>
	{{{end}}}
</ul>