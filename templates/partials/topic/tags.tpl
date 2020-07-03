<ul class="tags">
	{{{each tags}}}
	<li>
		<a href="{config.relative_path}/tags/{tags.value}" class="tag" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">
			<span class="tag-item" data-tag="{tags.value}">{tags.valueEscaped}</span>
		</a>
	</li>
	{{{end}}}
</ul>