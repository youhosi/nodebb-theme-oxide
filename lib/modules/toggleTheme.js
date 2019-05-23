"use strict";

$(document).ready(() => {
	require(["storage"], storage => {

		const toggleButton = $("#toggle-theme");

		const setTheme = dark => {
			const html = $(document.documentElement);
			let className = null;

			(dark === true || dark === "true") ? className = "on" : className = "off";

			html.removeAttr().attr("dark", dark);
			toggleButton.removeClass().addClass(className);
			storage.setItem("user:dark", dark);
		};

		const toggleTheme = () => {
			(toggleButton.hasClass("off") === true) ? setTheme(true) : setTheme(false);
		};

		(storage.getItem("user:dark") === null) ? setTheme(false) : setTheme(storage.getItem("user:dark"));
		toggleButton.on("click", toggleTheme);

	});
});