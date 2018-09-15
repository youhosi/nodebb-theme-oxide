'use strict';
/* globals $, app */

define('admin/plugins/oxide', ['settings'], function(Settings) {

	var ACP = {};

	ACP.init = function() {
		Settings.load('oxide', $('.oxide-settings'));

		$('#save').on('click', function() {
			Settings.save('oxide', $('.persona-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'persona-saved',
					title: 'Settings Saved',
					message: 'Oxide settings saved'
				});
			});
		});
	};

	return ACP;
});