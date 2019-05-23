"use strict";

$(document).ready(() => {
    const toggleThemeButton = $("#toggle-theme");
    const storage = localStorage;

    const replaceClass = (className) => {
        if (className == "light") {
            $("body").removeClass("dark");
            toggleThemeButton.removeClass(["on", "bold"]);

            $("body").addClass("light");
            toggleThemeButton.addClass("off");
        } else {
            $("body").removeClass("light");
            toggleThemeButton.removeClass("off");

            $("body").addClass("dark");
            toggleThemeButton.addClass(["on", "bold"]);
        }
    };

    const setTheme = (theme) => {
        (theme == "light") ? replaceClass("light") : replaceClass("dark");
    };

    const toggleTheme = () => {
        const light = toggleThemeButton.hasClass("off");

        if (light) {
            storage.setItem("user:theme", "dark");
            setTheme("dark");
        } else {
            storage.setItem("user:theme", "light");
            setTheme("light");
        }
    };

    (storage.getItem("user:theme") === null) ? storage.setItem("user:theme", "light") : setTheme(storage.getItem("user:theme"));

    toggleThemeButton.on("click", toggleTheme);
});