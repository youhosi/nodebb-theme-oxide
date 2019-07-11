<!-- IMPORT partials/breadcrumbs.tpl -->
<div widget-area="header">
	{{{each widgets.header}}}
		{{widgets.header.html}}
	{{{end}}}
</div>
<div class="users">
	<div class="row">
		<div class="col-lg-8 col-sm-8">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<!-- IF displayUserSearch -->
		<div class="col-lg-4 col-sm-4 col-xs-12">
			<div class="search">
				<div class="input-group">
					<div class="input-group-btn">
						<!-- IF inviteOnly -->
						<!-- IF loggedIn -->
						<button component="user/invite" class="btn btn-success"><i class="fa fa-users"></i> [[users:invite]]</button>
						<!-- ENDIF loggedIn -->
						<!-- ENDIF inviteOnly -->
						<span class="btn btn-default"><i component="user/search/icon" class="fa fa-fw fa-at"></i></span>
					</div>
					<input class="form-control" id="search-user" type="text" placeholder="[[users:enter_username]]"/>
				</div>
			</div>
		</div>
		<!-- ENDIF displayUserSearch -->
	</div>

	<ul id="users-container" class="users-container">
		<!-- IMPORT partials/users_list.tpl -->
		<!-- IF anonymousUserCount -->
		<li class="users-box anon-user">
			<div class="user-icon">G</div>
			<br/>
			<div class="user-info">
				<span id="online_anon_count">{anonymousUserCount}</span>
				<span>[[global:guests]]</span>
			</div>
		</li>
		<!-- ENDIF anonymousUserCount -->
	</ul>

	<!-- IMPORT partials/paginator.tpl -->
</div>