<div class="chats-full">
	<div component="chat/nav-wrapper" data-loaded="<!-- IF roomId -->1<!-- ELSE -->0<!-- END -->">
		<div class="chat-search dropdown">
			<label class="search-forum">
				<input autocomplete="off" class="form-control search-forum" type="text" component="chat/search" placeholder="[[users:enter_username]]" data-toggle="dropdown" />
			</label>
			
			<ul component="chat/search/list" class="dropdown-menu"></ul>
		</div>
		<ul component="chat/recent" class="chats-list" data-nextstart="{nextStart}">
			<!-- BEGIN rooms -->
			<!-- IMPORT partials/chats/recent_room.tpl -->
			<!-- END rooms -->
		</ul>
	</div>
	<div component="chat/main-wrapper">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
</div>