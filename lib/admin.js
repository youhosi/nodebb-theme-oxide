'use strict';
/* globals $, app */

define('admin/plugins/oxide', ['settings'], function(Settings) {

	var ACP = {};

	ACP.init = function() {
		Settings.load('oxide', $('.oxide-settings'));

		$('#save').on('click', function() {
			Settings.save('oxide', $('.oxide-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'oxide-saved',
					title: 'Settings Saved',
					message: 'Oxide settings saved'
				});
			});
		});
	};

	return ACP;
});