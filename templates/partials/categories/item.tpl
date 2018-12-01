<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="clearfix <!-- IF config.hideCategoryLastPost -->col-md-10 col-sm-12<!-- ELSE -->col-md-9 col-sm-9<!-- ENDIF config.hideCategoryLastPost --> category-details">
		<div class="category-color" style="background-color: {../bgColor}"></div>

		<div class="content">
			<div class="col-md-8 show-separator contentItem">
				<h4 class="title">
					<!-- IMPORT partials/categories/link.tpl -->
				</h4>
				<!-- IF ../descriptionParsed -->
				<div class="description">
					{../descriptionParsed}
				</div>
				<!-- ENDIF ../descriptionParsed -->
			</div>
			<!-- IF !../link -->
			<div class="col-md-2 hidden-sm hidden-xs stats contentItem">
				<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
				<small>[[global:topics]]</small>
			</div>
			<div class="col-md-2 hidden-sm hidden-xs stats contentItem">
				<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
				<small>[[global:posts]]</small>
			</div>
			<span class="visible-xs col-xs-12">
				<!-- IF ../teaser.timestampISO -->
				<a class="permalink" href="{../teaser.url}">
					<small>[[oxide:last-post]] <strong class="timeago" title="{../teaser.timestampISO}"></strong></small>
				</a>
				<!-- ENDIF ../teaser.timestampISO -->
			</span>
		</div>
		
		<!-- IF !config.hideSubCategories -->
		{function.generateChildrenCategories}
		<!-- ENDIF !config.hideSubCategories -->
	</div>

	<!-- IF !config.hideCategoryLastPost -->
	<div class="col-md-3 col-sm-3 hidden-xs teaser" component="topic/teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ENDIF !config.hideCategoryLastPost -->
	<!-- ENDIF !../link -->
</li>
