/* globals  ajaxify */

(() => {
	"use strict";

	const _updateTheme = (state) => {
		const safeState = Boolean(state);

		document.documentElement.setAttribute("dark", safeState);
		localStorage.setItem("user:dark", safeState);
	};

	const _setTheme = (e, btn) => {
		e.preventDefault();

		window.darkmode = !window.darkmode;

		const btnState = window.darkmode ? "on" : "off";

		btn.className = btnState;
		_updateTheme(window.darkmode);
	};

	const isDefault = document.documentElement.dataset.initialDark ? true : false;
	if (isDefault) return;

	window.darkmode = localStorage.getItem("user:dark") ? true : false;
	_updateTheme(window.darkmode);

	$(window).on("action:ajaxify.end", () => {
		if (!ajaxify.data.loggedIn) return null;

		const btn = document.querySelector("#toggle-theme");
		window.darkmode ? (btn.className = "on") : (btn.className = "off");

		btn.addEventListener("click", (e) => _setTheme(e, btn), false);
	});
})();
