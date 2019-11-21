"use strict";

define("admin/plugins/oxide", ["settings"], (settings) => {
	let ACP = {};

	ACP.init = () => {
		settings.load("oxide", $(".oxide-settings"));

		$("#save").on("click", () => {
			settings.save("oxide", $(".oxide-settings"), () => {
				app.alert({
					type: "success",
					alert_id: "oxide-saved",
					title: "Settings Saved",
					message: "Oxide settings saved",
				});
			});
		});
	};

	return ACP;
});
