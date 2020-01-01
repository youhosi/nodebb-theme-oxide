"use strict";

const striptags = require("striptags");
const meta = require.main.require("./src/meta");
const user = require.main.require("./src/user");

let library = {};

library.init = ({ router, middleware }, callback) => {
	const app = router;

	app.get("/admin/plugins/oxide", middleware.admin.buildHeader, renderAdmin);
	app.get("/api/admin/plugins/oxide", renderAdmin);

	callback();
};

library.addAdminNavigation = (header, callback) => {
	header.plugins.push({
		route: "/plugins/oxide",
		icon: "fa-paint-brush",
		name: "Oxide Theme",
	});

	callback(null, header);
};

library.getTeasers = (data, callback) => {
	data.teasers.forEach((teaser) =>
		teaser && teaser.content ? (teaser.content = striptags(teaser.content, ["img"])) : ""
	);

	callback(null, data);
};

library.defineWidgetAreas = (areas, callback) => {
	const localAreas = [
		{
			name: "Categories Sidebar",
			template: "categories.tpl",
			location: "sidebar",
		},
		{
			name: "Category Sidebar",
			template: "category.tpl",
			location: "sidebar",
		},
		{
			name: "Topic Sidebar",
			template: "topic.tpl",
			location: "sidebar",
		},
		{
			name: "Categories Header",
			template: "categories.tpl",
			location: "header",
		},
		{
			name: "Category Header",
			template: "category.tpl",
			location: "header",
		},
		{
			name: "Topic Header",
			template: "topic.tpl",
			location: "header",
		},
		{
			name: "Categories Footer",
			template: "categories.tpl",
			location: "footer",
		},
		{
			name: "Category Footer",
			template: "category.tpl",
			location: "footer",
		},
		{
			name: "Topic Footer",
			template: "topic.tpl",
			location: "footer",
		},
	];

	callback(null, [...areas, ...localAreas]);
};

library.getThemeConfig = (config, callback) => {
	meta.settings.get("oxide", (err, settings) => {
		if (err) return callback(err);

		const {
			hideSubCategories,
			hideCategoryLastPost,
			enableQuickReply,
			enableShowTid,
			enableCategoryIcon,
			enableShowUserAllGroupsInProfile,
			enableShowIpInUserProfile,
		} = settings;

		config.hideSubCategories = hideSubCategories === "on";
		config.hideCategoryLastPost = hideCategoryLastPost === "on";
		config.enableQuickReply = enableQuickReply === "on";
		config.enableShowTid = enableShowTid === "on";
		config.enableCategoryIcon = enableCategoryIcon === "on";
		config.enableShowUserAllGroupsInProfile = enableShowUserAllGroupsInProfile === "on";
		config.enableShowIpInUserProfile = enableShowIpInUserProfile === "on";
	});

	callback(null, config);
};

const renderAdmin = (req, res) => res.render("admin/plugins/oxide");

library.addUserToTopic = (data, callback) => {
	const {
		req: { user: reqUser = {} },
	} = data;

	if (reqUser) {
		user.getUserData(reqUser.uid, (err, userdata) => {
			if (err) return callback(err);

			data.templateData.loggedInUser = userdata;

			callback(null, data);
		});
	} else {
		data.templateData.loggedInUser = {
			uid: 0,
			username: "[[global:guest]]",
			picture: user.getDefaultAvatar(),
			"icon:text": "?",
			"icon:bgColor": "#aaa",
		};

		callback(null, data);
	}
};

library.getLinkTags = (data, callback) => {
	data.links.push({
		rel: "prefetch stylesheet",
		type: "",
		href: "https://fonts.googleapis.com/css?family=Roboto:300,400,500,700",
	});

	callback(null, data);
};

module.exports = library;
