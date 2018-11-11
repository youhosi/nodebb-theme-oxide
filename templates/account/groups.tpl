<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

		<h1 class="section-title">[[pages:{template.name}, {username}]]</h1>
			
			<div class="groups list">
				<div component="groups/container" id="groups-list" class="row">
					<!-- IF !groups.length -->
					<div class="alert alert-warning text-center">[[groups:no_groups_found]]</div>
					<!-- ELSE -->
					<!-- IMPORT partials/groups/list.tpl -->
					<!-- ENDIF !groups.length -->
				</div>
			</div>
		</div>
	</div>
</div>