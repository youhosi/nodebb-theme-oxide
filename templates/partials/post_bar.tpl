<div class="clearfix">
	<ul class="tags hidden">
		<!-- BEGIN tags -->
		<li>
			<a href="{config.relative_path}/tags/{tags.value}" class="tag" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">
				<span class="tag-item" data-tag="{tags.value}">{tags.valueEscaped}</span>
			</a>
		</li>
		<!-- END tags -->
	</ul>

	<!-- IMPORT partials/topic/browsing-users.tpl -->

	<div class="topic-main-buttons pull-right">
		<span class="loading-indicator btn pull-left hidden" done="0">
			<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
		</span>

		<!-- IMPORT partials/topic/stats.tpl -->

		<!-- IMPORT partials/topic/reply-button.tpl -->

		<!-- IF loggedIn -->
		<button component="topic/mark-unread" class="btn btn-default">
			<i class="fa fa-inbox"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[topic:mark_unread]]</span>
		</button>
		<!-- ENDIF loggedIn -->

		<!-- IMPORT partials/topic/watch.tpl -->

		<!-- IMPORT partials/topic/sort.tpl -->

		<div class="pull-right">&nbsp;
		<!-- IMPORT partials/thread_tools.tpl -->
		</div>
	</div>
</div>