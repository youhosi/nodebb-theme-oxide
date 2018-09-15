<ul class="tag-list">
	<!-- BEGIN tags -->
	<li class="pull-left">
		<a href="{config.relative_path}/tags/{tags.value}" class="tag" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->" data-value="{tags.value}">
			<span class="tag-item" data-tag="{tags.value}">
				{tags.valueEscaped}
				<span class="tag-topic-count" title="{tags.score}">{tags.score}</span>
			</span>
		</a>
	</li>
	<!-- END tags -->
</ul>