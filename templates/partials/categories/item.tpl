<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="clearfix <!-- IF config.hideCategoryLastPost -->col-md-12 col-sm-12<!-- ELSE -->col-md-9 col-sm-9<!-- ENDIF config.hideCategoryLastPost --> category-details">
		<div class="category-color" style="background-color: {../bgColor}"></div>
		
		<div class="content">
			<!-- IF config.enableCategoryIcon -->
			<div class="hidden-xs CategoryIcon contentItem">
				<div class="icon" style="{function.generateCategoryBackground}">
					<i class="fa fa-fw {../icon}"></i>
				</div>
			</div>
			<!-- ENDIF config.enableCategoryIcon -->
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
			<div class="col-md-2 hidden-sm hidden-xs stats contentItem">
				<span class="{../unread-class} human-readable-number" title="{../totalTopicCount}">{../totalTopicCount}</span><br />
				<small>[[global:topics]]</small>
			</div>
			<div class="col-md-2 hidden-sm hidden-xs stats contentItem">
				<span class="{../unread-class} human-readable-number" title="{../totalPostCount}">{../totalPostCount}</span><br />
				<small>[[global:posts]]</small>
			</div>
			<!-- IF ../teaser.timestampISO -->
			<div class="visible-xs col-xs-12">
				<a class="permalink" href="{../teaser.url}">
					<small>[[oxide:last-post]] <strong class="timeago" title="{../teaser.timestampISO}"></strong></small>
				</a>
			</div>
			<!-- ENDIF ../teaser.timestampISO -->
		</div>
		<!-- IF !config.hideSubCategories -->
		{function.generateChildrenCategories}
		<!-- ENDIF !config.hideSubCategories -->
	</div>

	<!-- IF !config.hideCategoryLastPost -->
	<!-- IF !../link -->
	<div class="col-md-3 col-sm-3 hidden-xs teaser" component="topic/teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	<!-- ELSE -->
	<div class="col-md-3 col-sm-3 hidden-xs teaser rediect">
		<span class="rediectingText">[[oxide:rediect]]</span>
	</div>
	<!-- ENDIF !../link -->
	<!-- ENDIF !config.hideCategoryLastPost -->
</li>