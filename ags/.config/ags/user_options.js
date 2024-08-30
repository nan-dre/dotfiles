// For every option, see ~/.config/ags/modules/.configuration/user_options.js
// (vscode users ctrl+click this: file://./modules/.configuration/user_options.js)
// (vim users: `:vsp` to split window, move cursor to this path, press `gf`. `Ctrl-w` twice to switch between)
//   options listed in this file will override the default ones in the above file

const userConfigOptions = {
    'search': {
        'enableFeatures': {
            'actions': true,
            'commands': true,
            'mathResults': true,
            'directorySearch': true,
            'aiSearch': false,
            'webSearch': false,
        }
    },
    'sidebar': {
        'pages': {
            'order' : ["apis", "tools"],
            'apis': {
                'order': ["gemini"]
            }
        }
    }
}

export default userConfigOptions;
