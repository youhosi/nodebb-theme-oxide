<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

			<div class="categories-box">
				<h1 class="section-title">{title}</h1>

				<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
					{{{each categories}}}
					<!-- IMPORT partials/account/category-item.tpl -->
					{{{end}}}
				</ul>
			</div>
		</div>
	</div>
</div>