<div class="profile-card">
	<div class="cover" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
		<!-- IF allowCoverPicture -->
		<!-- IF canEdit -->
		<div class="controls">
			<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
			<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
			<span class="remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
		</div>

		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		<!-- ENDIF canEdit -->
		<!-- ENDIF allowCoverPicture -->

		<!-- IF loggedIn -->
		<!-- IF !isSelf -->
		<button class="btn-morph fab <!-- IF isFollowing -->heart<!-- ELSE -->plus<!-- ENDIF isFollowing --><!-- IF banned --> hide<!-- ENDIF banned -->"
			title="<!-- IF isFollowing -->[[global:unfollow]]<!-- ELSE -->[[global:follow]]<!-- ENDIF isFollowing -->">
			<span>
				<span class="s1"></span>
				<span class="s2"></span>
				<span class="s3"></span>
			</span>
		</button>
		<!-- ENDIF !isSelf -->
		<!-- ENDIF loggedIn -->
	</div>

	<div class="card-info">
		<div class="avatar-wrapper" data-uid="{uid}">
			<!-- IF picture -->
				<img src="{picture}" class="avatar avatar-xl avatar-rounded"/>
			<!-- ELSE -->
				<div class="avatar avatar-xl avatar-rounded" style="background-color: {icon:bgColor};" title="{username}">{icon:text}</div>
			<!-- ENDIF picture -->
		</div>

		<div class="profile-name">
			<h2 class="fullname">
				<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>
				<!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname -->
				<!-- IF !banned --><i>(@{username})</i><!-- ELSE --><i>([[user:banned]])</i><!-- ENDIF !banned -->
			</h1>
		</div>

		<div class="account-stats">
			<!-- IF !reputation:disabled -->
			<div class="stat">
				<div class="human-readable-number" title="{reputation}">{reputation}</div>
				<span class="stat-label">[[global:reputation]]</span>
			</div>
			<!-- ENDIF !reputation:disabled -->
		
			<div class="stat">
				<div class="human-readable-number" title="{postcount}">{postcount}</div>
				<span class="stat-label">[[global:posts]]</span>
			</div>
		
			<div class="stat">
				<div class="human-readable-number" title="{profileviews}">{profileviews}</div>
				<span class="stat-label">[[user:profile_views]]</span>
			</div>
		
			<div class="stat">
				<div class="human-readable-number" title="{followerCount}">{followerCount}</div>
				<span class="stat-label">[[user:followers]]</span>
			</div>
		
			<div class="stat">
				<div class="human-readable-number" title="{followingCount}">{followingCount}</div>
				<span class="stat-label">[[user:following]]</span>
			</div>
		</div>

		<!-- IMPORT partials/account/menu.tpl -->
	</div>
</div>

<div class="row">
	<div class="col-md-4">
		<!-- IF ips.length -->
		<div class="profile-card hidden">
			<h2 class="card-title">
				[[global:recentips]]
			</h2>

			<!-- BEGIN ips -->
			<div class="data-item">
				<span>{ips.ip}</span>
			</div>
			<!-- END ips -->
		</div>
		<!-- ENDIF ips.length -->

		<div class="profile-card">
			<h2 class="card-title">
				[[oxide:card-information]] 
				<!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname -->
			</h2>

			<!-- IF config.enableShowUserAllGroupsInProfile -->
			<div class="user-group">
				<!-- BEGIN groups -->
				<a href="{config.relative_path}/groups/{groups.slug}">
					<span class="label group-label inline-block" style="background-color: {groups.labelColor};">
						<!-- IF groups.icon --><i class="fa {groups.icon}"></i> <!-- ENDIF groups.icon -->{groups.userTitle}
					</span>
				</a>
				<!-- END groups -->
			</div>
			<!-- ELSE -->
			<!-- IF selectedGroup.length -->
			<div class="user-group">
				<!-- BEGIN selectedGroup -->
				<!-- IF selectedGroup.slug -->
				<a href="{config.relative_path}/groups/{selectedGroup.slug}">
					<small class="label group-label inline-block" style="background-color: {selectedGroup.labelColor};">
						<!-- IF selectedGroup.icon --><i class="fa {selectedGroup.icon}"></i> <!-- ENDIF selectedGroup.icon -->{selectedGroup.userTitle}
					</small>
				</a>
				<!-- ENDIF selectedGroup.slug -->
				<!-- END selectedGroup -->
			</div>
			<!-- ENDIF selectedGroup.length -->
			<!-- ENDIF config.enableShowUserAllGroupsInProfile -->

			<div class="data-item">
				<div class="data-header"><span>[[user:joined]]</span></div>
				<strong class="timeago" title="{joindateISO}"></strong>
			</div>
			<div class="data-item">
				<div class="data-header"><span>[[user:lastonline]]</span></div>
				<strong class="timeago" title="{lastonlineISO}"></strong>
			</div>
			<!-- IF email -->
			<div class="data-item">
				<div class="data-header"><span>[[user:email]]</span></div>
				<strong><i class="fa fa-eye-slash {emailClass}" title="[[user:email_hidden]]"></i> {email}</strong>
			</div>
			<!-- ENDIF email -->
			<!-- IF websiteName -->
			<div class="data-item">
				<div class="data-header"><span>[[user:website]]</span></div>
				<strong><a href="{websiteLink}" rel="nofollow noopener noreferrer">{websiteName}</a></strong>
			</div>
			<!-- ENDIF websiteName -->
			<!-- IF location -->
			<div class="data-item">
				<div class="data-header"><span>[[user:location]]</span></div>
				<strong>{location}</strong>
			</div>
			<!-- ENDIF location -->
			<!-- IF age -->
			<div class="data-item">
				<div class="data-header"><span>[[user:age]]</span></div>
				<strong>{age}</strong>
			</div>
			<!-- ENDIF age -->
		</div>

		<!-- IF aboutme -->
		<div class="profile-card">
			<h2 class="card-title">
				[[oxide:aboutme]]
			</h2>

			<div class="data-item">
				<span component="aboutme">{aboutme}</span>
			</div>
		</div>
		<!-- ENDIF aboutme -->

		<div widget-area="sidebar">
			<!-- BEGIN widgets.sidebar -->
			{{widgets.sidebar.html}}
			<!-- END widgets.sidebar -->
		</div>
	</div>
	
	<div class="col-md-8">
		<!-- IF isAdminOrGlobalModeratorOrModerator -->
		<!-- IF banned -->
		<div class="alert alert-danger banned">
		<!-- IF banned_until -->
		[[user:info.banned-until, {banned_until_readable}]]
		<!-- ELSE -->
		[[user:info.banned-permanently]]
		<!-- ENDIF banned_until -->
		</div>
		<!-- ENDIF banned -->
		<!-- ENDIF isAdminOrGlobalModeratorOrModerator -->