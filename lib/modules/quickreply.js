"use strict";

/*globals ajaxify, socket*/

define("oxide/quickreply", ["components", "composer/autocomplete"], (components, autocomplete) => {
	let QuickReply = {};

	QuickReply.init = () => {
		const element = components.get("topic/quickreply/text");
		const data = {
			element: element,
			strategies: [],
			options: {
				style: {
					"z-index": 100,
				},
			},
		};

		$(window).trigger("composer:autocomplete:init", data);

		autocomplete._active["oxide_qr"] = autocomplete.setup(data);

		components.get("topic/quickreply/button").on("click", (e) => {
			e.preventDefault();

			const replyMsg = components.get("topic/quickreply/text").val();
			const replyData = {
				tid: ajaxify.data.tid,
				handle: undefined,
				content: replyMsg,
			};

			socket.emit("posts.reply", replyData, (err, data) => {
				if (err) return app.alertError(err.message);

				if (data && data.queued) {
					components.get("topic/quickreply/text").val("");
					autocomplete._active["oxide_qr"].hide();

					app.alertSuccess(data.message);
				}
			});
		});
	};

	return QuickReply;
});
