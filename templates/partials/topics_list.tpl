<ul component="category" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}"
	data-set="{set}">
	<meta itemprop="itemListOrder" content="descending">
	{{{each topics}}}
	<li component="category/topic" class="row clearfix {function.generateTopicClass} category-item" <!-- IMPORT partials/data/category.tpl -->>
		<meta itemprop="name" content="{function.stripTags, title}">

		<div class="col-md-1 hidden-sm hidden-xs avatar">
			<!-- IF showSelect -->
			<div class="select avatar" component="topic/select" title="{topics.user.username}">
				<!-- IF topics.thumb -->
				<img src="{topics.thumb}" class="user-img not-responsive" />
				<!-- ELSE -->
				<!-- IF topics.user.picture -->
				<img component="user/picture" data-uid="{topics.user.uid}" src="{topics.user.picture}"
					class="user-img not-responsive" />
				<!-- ELSE -->
				<div class="user-icon " style="background-color: {topics.user.icon:bgColor};">{topics.user.icon:text}</div>
				<!-- ENDIF topics.user.picture -->
				<!-- ENDIF topics.thumb -->
				<i class="fa fa-check"></i>
			</div>
			<!-- ENDIF showSelect -->

			<!-- IF !showSelect -->
			<a href="<!-- IF topics.user.userslug -->{config.relative_path}/user/{topics.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.user.userslug -->"
				class="pull-left">
				<!-- IF topics.thumb -->
				<img src="{topics.thumb}" class="user-img not-responsive" />
				<!-- ELSE -->
				<!-- IF topics.user.picture -->
				<img component="user/picture" data-uid="{topics.user.uid}" src="{topics.user.picture}"
					class="user-img not-responsive" />
				<!-- ELSE -->
				<div class="user-icon" style="background-color: {topics.user.icon:bgColor};">{topics.user.icon:text}</div>
				<!-- ENDIF topics.user.picture -->
				<!-- ENDIF topics.thumb -->
			</a>
			<!-- ENDIF !showSelect -->
		</div>

		<div class="col-md-8 col-xs-12 col-sm-8 clearfix category-details">
			<div class="content">
				<div class="col-md-8 col-xs-12 show-separator contentItem">
					<div class="pnt">
						<i component="topic/pinned"
							class="fa fa-thumb-tack <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->"
							title="[[topic:pinned]]"></i>
						<i component="topic/locked" class="fa fa-lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->"
							title="[[topic:locked]]"></i>
						<i component="topic/moved"
							class="fa fa-arrow-circle-right <!-- IF !topics.oldCid -->hide<!-- ENDIF !topics.oldCid -->"
							title="[[topic:moved]]"></i>
					</div>

					<h4 component="topic/header" class="title">
						{{{each icons}}}@value{{{end}}}

						<!-- IF !topics.noAnchor -->
						<a href="{config.relative_path}/topic/{topics.slug}<!-- IF topics.bookmark -->/{topics.bookmark}<!-- ENDIF topics.bookmark -->"itemprop="url">{topics.title}</a>
						<!-- ELSE -->
						<span>{topics.title}</span>
						<!-- ENDIF !topics.noAnchor -->
					</h4>

					<!-- IF !template.category -->
					<small class="categoryLink">
						<a href="{config.relative_path}/category/{topics.category.slug}">
							<span class="fa-stack fa-lg">
								<i style="color:{topics.category.bgColor};" class="fa fa-circle fa-stack-2x"></i>
								<i style="color:{topics.category.color};" class="fa {topics.category.icon} fa-stack-1x"></i>
							</span> {topics.category.name}
						</a>

						&bull;
					</small>
					<!-- ENDIF !template.category -->

					<small class="hidden-xs"><span class="timeago" title="{topics.timestampISO}"></span></small>

					<small class="visible-xs-inline">
						<!-- IF topics.teaser.timestamp -->
						<span class="timeago" title="{topics.teaser.timestampISO}"></span>
						<!-- ELSE -->
						<span class="timeago" title="{topics.timestampISO}"></span>
						<!-- ENDIF topics.teaser.timestamp -->

						<div class="mobile-stat pull-right">

							<a href="{config.relative_path}/topic/{topics.slug}/">
								<i class="fa fa-eye mobileItem"></i>
								<span class="human-readable-number mobileItem">{topics.viewcount}</span>
							</a>
							
							<a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
								<i class="fa fa-comment mobileItem"></i>
								<span class="human-readable-number mobileItem">{topics.postcount}</span>
							</a>
		
							
							<a href="{config.relative_path}/topic/{topics.slug}">
								<i class="fa fa-thumbs-up mobileItem"></i>
								<span class="human-readable-number mobileItem">{topics.votes}</span>
							</a>
		
						</div>
		

					</small>
				</div>


				<!-- 				
	<div class="col-md-1 hidden-sm hidden-xs stats contentItem">
					<span class="human-readable-number" title="{topics.postcount}">{topics.postcount}</span><br />
					<small>[[global:posts]]</small>
				</div> -->

				<div class="col-md-2 hidden-sm hidden-xs stats contentItem">
					<span class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span><br />
					<small>[[global:views]]</small>
				</div>

				<div class="col-md-2 hidden-sm hidden-xs stats contentItem">
					<span class="human-readable-number" title="{topics.votes}">{topics.votes}</span><br>
					<small>[[global:votes]]</small>
				</div>

			</div>

			<!-- IF topics.tags.length -->
			<div class="col-md-12 col-xs-12 box-footer">
				<ul class="tag-list">
					{{{each topics.tags}}}
					<li>
						<a href="{config.relative_path}/tags/{topics.tags.value}" class="tag"
							style="<!-- IF topics.tags.color -->color: {topics.tags.color};<!-- ENDIF topics.tags.color --><!-- IF topics.tags.bgColor -->background-color: {topics.tags.bgColor};<!-- ENDIF topics.tags.bgColor -->">
							<span class="tag-item">{topics.tags.valueEscaped}</span>
						</a>
					</li>
					{{{end}}}
				</ul>
			</div>
			<!-- ENDIF topics.tags.length -->
		</div>

		<div class="col-sm-3 hidden-xs teaser" component="topic/teaser">
			<div class="card">
				<!-- IF topics.unreplied -->
				<p>[[category:no_replies]]</p>
				<!-- ELSE -->

				<!-- IF topics.teaser.pid -->
				<p>
					<a href="{config.relative_path}/user/{topics.teaser.user.userslug}">{buildAvatar(topics.teaser.user, "24", true, "not-responsive")}</a>
					<a class="permalink" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
						<span class="timeago" title="{topics.teaser.timestampISO}"></span>
					</a>
				</p>

				<div class="post-content">
					{topics.teaser.content}
				</div>

				<!-- ENDIF topics.teaser.pid -->
				<!-- ENDIF topics.unreplied -->
			</div>
		</div>
	</li>
	{{{end}}}
</ul>