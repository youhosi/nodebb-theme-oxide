<!-- IF roomId -->
<div component="chat/messages" class="expanded-chat" data-roomid="{roomId}">
	<div component="chat/header">
		<div class="chat-header">
			<!-- IF !roomName -->
			<!-- BEGIN users -->
			<a href="{config.relative_path}/uid/{../uid}" class="title" title="[[modules:chat.chatting_with]] {../username}">{../username}</a><!-- IF !@last -->,<!-- END -->
			<!-- END users -->
			<!-- ELSE -->
			<span class="title">{roomName}</span>
			<!-- ENDIF !roomName -->
		</div>

		<div class="chat-menu">
			<div class="dropdown chat-item">
				<button class="close" data-toggle="dropdown" component="chat/controlsToggle"><i class="fa fa-gear"></i></button>
				<ul class="dropdown-menu dropdown-menu-right pull-right" component="chat/controls">
					<!-- IF users.length -->
					<li class="dropdown-header">[[modules:chat.in-room]]</li>
					<!-- BEGIN users -->
					<li>
						<a href="{config.relative_path}/uid/{../uid}">
							<!-- IF ../picture -->
							<img class="avatar avatar-sm" component="user/picture" src="{../picture}" itemprop="image"/>
							<!-- ELSE -->
							<div class="avatar avatar-sm" component="user/picture" style="background-color:{../icon:bgColor};">{../icon:text}</div>
							<!-- END -->
							{../username}
						</a>
					</li>
					<!-- END -->
					<li role="separator" class="divider"></li>
					<!-- END -->
					<li class="dropdown-header">[[modules:chat.options]]</li>
					<li>
						<a href="#" data-action="members"><i class="fa fa-fw fa-cog"></i> [[modules:chat.manage-room]]</a>
					</li>
					<!-- IF isOwner -->
					<li>
						<a href="#" data-action="rename"><i class="fa fa-fw fa-edit"></i> [[modules:chat.rename-room]]</a>
					</li>
					<!-- ENDIF isOwner -->
					<li>
						<a href="#" data-action="leave"><i class="fa fa-fw fa-sign-out"></i> [[modules:chat.leave]]</a>
					</li>
				</ul>
			</div>
			<button type="button" class="close chat-item" data-action="pop-out"><span aria-hidden="true"><i class="fa fa-compress"></i></span><span class="sr-only">[[modules:chat.pop-out]]</span></button>
		</div>
	</div>

	<ul class="chat-content">
		<!-- IMPORT partials/chats/messages.tpl -->
	</ul>

	<div component="chat/composer">
		<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap"></textarea>
		<button class="btn" type="button" data-action="send"><i class="fa fa-arrow-up"></i></button>
		<span component="chat/message/remaining" class="hidden">{maximumChatMessageLength}</span>
	</div>
</div>
<!-- ELSE -->
<div class="alert alert-info">
	[[modules:chat.no-messages]]
</div>
<!-- ENDIF roomId -->