<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="<!-- IF rooms.unread -->unread<!-- ENDIF rooms.unread -->">
	<!-- IF !rooms.lastUser.uid -->
	<div class="main-avatar">
		<div class="avatar no-users"><i class="fa fa-fw fa-user-times"></i></div>
	</div>
	<!-- ELSE -->
	{{{each rooms.users}}}
	<!-- IF @first -->
	<div class="main-avatar">
		<!-- IMPORT partials/chats/user.tpl -->
	</div>
	<!-- ENDIF @first -->
	{{{end}}}
	<!-- ENDIF !rooms.lastUser.uid -->

	<span class="teaser-timestamp timeago pull-right" title="{rooms.teaser.timestampISO}"></span>

	<!-- IF !rooms.lastUser.uid -->
	<span class="room-name">[[modules:chat.no-users-in-room]]</span>
	<!-- ELSE -->
	<span component="chat/title" class="room-name"><!-- IF rooms.roomName -->{rooms.roomName}<!-- ELSE -->{rooms.usernames}<!-- ENDIF rooms.roomName --></span>
	<!-- ENDIF !rooms.lastUser.uid -->

	<span class="teaser-content">{../teaser.content}</span>

	<ul class="members">
		{{{each rooms.users}}}
		<li>
			<!-- IMPORT partials/chats/user.tpl -->
		</li>
		{{{end}}}
	</ul>
</li>