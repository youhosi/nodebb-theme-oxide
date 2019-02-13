"use strict";

/*globals $, app, ajaxify, socket*/

define('oxide/quickreply', ['components', 'composer/autocomplete'], function (components, autocomplete) {
	var QuickReply = {};

	QuickReply.init = function () {

		var element = components.get('topic/quickreply/text');
		var data = {
			element: element,
			strategies: [],
			options: {
				style: {
					'z-index': 100,
				}
			}
		};

		$(window).trigger('composer:autocomplete:init', data);
		autocomplete._active['oxide_qr'] = autocomplete.setup(data);

		components.get('topic/quickreply/button').on('click', function (e) {
			e.preventDefault();
			var replyMsg = components.get('topic/quickreply/text').val();
			var replyData = {
				tid: ajaxify.data.tid,
				handle: undefined,
				content: replyMsg
			};

			socket.emit('posts.reply', replyData, function (err, data) {
				if (err) {
					app.alertError(err.message);
				}
				if (data && data.queued) {
					app.alertSuccess(data.message);
				}

				components.get('topic/quickreply/text').val('');
				autocomplete._active['oxide_qr'].hide();
			});
		});
	};

	return QuickReply;
});