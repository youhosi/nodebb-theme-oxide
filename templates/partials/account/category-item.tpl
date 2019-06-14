<li component="categories/category" data-cid="{../cid}" data-parent-cid="{../parentCid}" class="row clearfix">
	<meta itemprop="name" content="{../name}">

	<div class="clearfix col-md-9 col-sm-9 category-details depth-{../depth}">
		<div class="content">
			<div class="hidden-xs CategoryIcon contentItem">
				<div class="icon" style="{function.generateCategoryBackground}">
					<i class="fa fa-fw {../icon}"></i>
				</div>
			</div>

			<div class="col-md-10 contentItem">
				<h2 class="title">
					<!-- IMPORT partials/categories/link.tpl -->
				</h2>

				<!-- IF ../descriptionParsed -->
				<div class="description">
					{../descriptionParsed}
				</div>
				<!-- ENDIF ../descriptionParsed -->
			</div>
		</div>
	</div>

	<div class="col-md-3 col-sm-3 hidden-xs teaser">
		<!-- IMPORT partials/category/watch.tpl -->
	</div>
</li>