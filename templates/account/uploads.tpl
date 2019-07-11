<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

			<div class="uploads">
				<h1 class="section-title">{title}</h1>

				<!-- IF !uploads.length -->
				<div class="alert alert-warning text-center">[[uploads:no-uploads-found]]</div>
				<!-- ELSE -->
				<div class="panel panel-default">
					<div class="panel-body">
						<!-- IF privateUploads -->
						<div class="alert alert-info text-center private">[[uploads:private-uploads-info]]</div>
						<!-- ELSE -->
						<div class="alert alert-info text-center public">[[uploads:public-uploads-info]]</div>
						<!-- ENDIF privateUploads -->
					</div>

					<ul class="list-group">
						{{{each uploads}}}
						<li class="list-group-item Table" data-name="{uploads.name}">
							<div class="source-link Table-item">
								<a class="" href="{config.relative_path}{uploads.url}">{uploads.url}</a>
							</div>

							<div class="delete-button Table-item">
								<button class="btn btn-danger btn-xs" data-action="delete"><i class="fa fa-trash"></i></button>
							</div>
						</li>
						{{{end}}}
					</ul>

					<!-- IMPORT partials/paginator.tpl -->
				</div>
				<!-- ENDIF !uploads.length -->
			</div>
		</div>
	</div>
</div>