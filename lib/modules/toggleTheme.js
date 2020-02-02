/* globals  ajaxify */

(() => {
	"use strict";

	const isDefault = document.documentElement.dataset.initialDark ? true : false;
	if (isDefault) return;

	const _updateTheme = (state) => {
		document.documentElement.setAttribute("dark", state);
		localStorage.setItem("user:dark", state);
	};

	const _setTheme = (e, btn) => {
		e.preventDefault();

		window.darkmode = !window.darkmode;

		const btnState = window.darkmode ? "on" : "off";

		btn.className = btnState;
		_updateTheme(window.darkmode);
	};

	window.darkmode = Boolean(localStorage.getItem("user:dark"));
	_updateTheme(window.darkmode);

	$(window).on("action:ajaxify.end", () => {
		if (!ajaxify.data.loggedIn) return null;

		const btn = document.querySelector("#toggle-theme");
		window.darkmode ? (btn.className = "on") : (btn.className = "off");

		btn.addEventListener("click", (e) => _setTheme(e, btn), false);
	});
})();
