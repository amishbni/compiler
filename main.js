let {app, BrowserWindow} = require("electron");

let main_window;

function create_main_window() {
	main_window = new BrowserWindow({
		width: 800,
		height: 600,
		webPreferences: {
			nodeIntegration: true
		}
	});

	main_window.loadFile("assets/html/main_window.html");
	main_window.removeMenu();
	main_window.webContents.openDevTools();
	main_window.on("closed", () => {
		main_window = null;
	});

}

app.on("ready", create_main_window);

app.on("window-all-closed", () => {
	if(process.platform !== "darwin") {
		app.quit();
	}
});

app.on("activate", () => {
	if(main_window === null) {
		create_main_window();
	}
});
