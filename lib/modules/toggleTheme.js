/* globals  ajaxify */

"use strict";

(() => {
	const isDefault = document.documentElement.dataset.initialDark === "true";
	if (isDefault) return;

	const _updateTheme = (state) => {
		document.documentElement.setAttribute("dark", state);
		localStorage.setItem("user:dark", state);
	};

	const _setTheme = (e, btn) => {
		e.preventDefault();

		isDarkmode = !isDarkmode;

		const btnState = isDarkmode ? "on" : "off";

		btn.className = btnState;
		_updateTheme(isDarkmode);
	};

	let isDarkmode = localStorage.getItem("user:dark") === "true";
	_updateTheme(isDarkmode);

	$(window).on("action:ajaxify.end", () => {
		if (!ajaxify.data.loggedIn) return null;

		const btn = document.querySelector("#toggle-theme");
		isDarkmode ? (btn.className = "on") : (btn.className = "off");

		btn.addEventListener("click", (e) => _setTheme(e, btn), false);
	});
})();
