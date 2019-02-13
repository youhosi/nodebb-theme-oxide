<div class="oxide-usercard Table">
	<div class="usercard-avatar Table-item">
		<a href="{config.relative_path}/user/{userslug}">
			<!-- IF !banned -->
			<i component="user/status" class="fa fa-circle status {status}" title="[[global:{status}]]"></i>
			<!-- ENDIF !banned -->

			<!-- IF picture -->
			<img class="usercard-picture" src="{picture}"
				alt="<!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname -->">
			<!-- ELSE -->
			<div class="usercard-picture" style="background-color: {icon:bgColor};">{icon:text}</div>
			<!-- ENDIF picture -->
		</a>
	</div>

	<div class="usercard-body Table-item">
		<a class="usercard-name" href="{config.relative_path}/user/{userslug}">
			<span class="usercard-fullname"><!-- IF fullname -->{fullname}<!-- ELSE -->{username}<!-- ENDIF fullname --></span>
			<span class="usercard-username"><!-- IF !banned -->@{username}<!-- ELSE -->[[user:banned]]<!-- ENDIF !banned --></span>
		</a>

		<div class="usercard-stats">
			<span class="stats">{postcount} [[global:posts]]</span>
			<span class="stats px-1">·</span>
			<span class="stats">{reputation} [[global:reputation]]</span>
		</div>
	</div>

	<!-- IF !banned -->
	<div class="usercard-morph Table-item">
		<button class="btn-morph fab">
			<span>
				<span class="s1"></span>
				<span class="s2"></span>
				<span class="s3"></span>
			</span>
		</button>
	</div>
	<!-- ENDIF !banned -->
</div>