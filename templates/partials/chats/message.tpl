<li component="chat/message" class="chat-message clear<!-- IF ../deleted --> deleted<!-- END --><!-- IF !messages.self --><!-- IF ../fromUser.banned --> user-banned<!-- END --><!-- IF ../fromUser.deleted --> user-deleted<!-- END --><!-- ENDIF !messages.self -->" data-index="{messages.index}" data-mid="{messages.messageId}" data-uid="{messages.fromuid}" data-self="{messages.self}" data-break="{messages.newSet}" data-timestamp="{messages.timestamp}">
	<div class="message-block">
		<!-- IF !messages.self -->
		<div class="message-avatar">
			<a href="{config.relative_path}/user/{messages.fromUser.userslug}">
				<!-- IF messages.fromUser.picture -->
				<img class="chat-user-image not-responsive" title="{messages.fromUser.username} <!-- IF !messages.self --><!-- IF ../fromUser.banned --> · [[user:banned]]<!-- END --><!-- IF ../fromUser.deleted --> · [[user:deleted]]<!-- END --><!-- ENDIF !messages.self -->" src="{messages.fromUser.picture}">
				<!-- ELSE -->
				<div class="user-icon chat-user-image" title="{messages.fromUser.username} <!-- IF !messages.self --><!-- IF ../fromUser.banned --> · [[user:banned]]<!-- END --><!-- IF ../fromUser.deleted --> · [[user:deleted]]<!-- END --><!-- ENDIF !messages.self -->" style="background-color:{messages.fromUser.icon:bgColor};">{messages.fromUser.icon:text}</div>
				<!-- ENDIF messages.fromUser.picture -->
			</a>
		</div>
		<!-- ENDIF !messages.self -->

		<div class="message-wrapper" tabindex="-1">
			<div class="message-header">
				<span class="chat-timestamp timeago" title="{messages.timestampISO}"></span>

				<!-- IF !config.disableChatMessageEditing -->
				<!-- IF messages.self -->
				<span class="px-1">·</span>
				<div class="btn-group controls">
					<span class="btn btn-xs btn-link" data-action="edit"><i class="fa fa-pencil"></i></span>
					<span class="btn btn-xs btn-link" data-action="delete"><i class="fa fa-times"></i></span>
					<span class="btn btn-xs btn-link" data-action="restore"><i class="fa fa-repeat"></i></span>
					<!-- IF isAdminOrGlobalMod -->
					<span class="btn btn-xs btn-link chat-ip" title="[[modules:chat.show-ip]]"><i class="fa fa-info-circle chat-ip-button"></i></span>
					<!-- ENDIF isAdminOrGlobalMod -->
				</div>
				<!-- ENDIF messages.self -->
				<!-- ENDIF !config.disableChatMessageEditing -->

				<!-- IF messages.edited -->
				<span class="px-1">·</span>
				<span class="message-edited" title="[[global:edited]] {messages.editedISO}"><i class="fa fa-edit"></i></span></span>
				<!-- ENDIF messages.edited -->
			</div>

			<div component="chat/message/body" class="message-body">
				{messages.content}
			</div>
		</div>
	</div>
</li>