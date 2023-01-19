local filesystem = require("gears.filesystem")
local config_dir = filesystem.get_configuration_dir()
local utils_dir = config_dir .. "utilities/"

return {
	-- Default Applications
	default = {
		-- Default terminal emulator
		terminal = "kitty",
		-- Defalut music client
		music_player = "kitty --class music -e ncmpcpp",
		-- Default text editor
		text_editor = "kitty -e nvim",
		-- Default code editor
		code_editor = "code",
		-- Default web browser
		web_browser = "firefox -height 1010 -width 1890",
		-- Default file manager
		file_manager = "thunar",
		-- Default network manager
		network_manager = "nm-connection-editor",
		-- Default bluetooth manager
		bluetooth_manager = "blueman-manager",
		-- Default power manager
		power_manager = "xfce4-power-manager",
		-- Default rofi global menu
		app_launcher = "rofi -no-lazy-grab -show drun -modi drun -theme " .. config_dir .. "configuration/rofi.rasi",
	},

	-- List of binaries/shell scripts that will execute for a certain task
	utils = {
		-- Fullscreen screenshot
		full_screenshot = utils_dir .. "screensht full",
		-- Area screenshot
		area_screenshot = utils_dir .. "screensht area",
		-- Color Picker
		color_picker = utils_dir .. "xcolor-pick",
	},
}
