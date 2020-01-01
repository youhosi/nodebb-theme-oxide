/* globals  ajaxify */

(() => {
	"use strict";

	const setTheme = (isDark) => {
		const safeBool = Boolean(isDark);

		document.documentElement.setAttribute("dark", safeBool);
		localStorage.setItem("user:dark", safeBool);
	};

	const toggleTheme = (e) => {
		e.stopPropagation();

		const { target } = e;

		if (target.classList.contains("off")) {
			setTheme(true);

			target.classList.remove("off");
			target.classList.add("on");
		} else {
			setTheme(false);

			target.classList.remove("on");
			target.classList.add("off");
		}
	};

	const addButton = () => {
		if (!ajaxify.data.loggedIn) return null;

		const toggleBtn = document.querySelector("#toggle-theme");
		isDark ? toggleBtn.classList.add("on") : toggleBtn.classList.add("off");

		toggleBtn.addEventListener("click", toggleTheme);
	};

	const isDark = JSON.parse(localStorage.getItem("user:dark"));

	localStorage.getItem("user:dark") === null ? setTheme(false) : setTheme(isDark);

	$(window).on("action:ajaxify.end", addButton);
})();
