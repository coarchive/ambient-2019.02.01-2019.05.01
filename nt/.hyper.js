// See https://hyper.is#cfg for all currently supported options.
const backgroundColor = '#293340';
const foregroundColor = '#CDD2E9';
const cursorColors = [
  '#2C85F7',
  'rgba(255, 165, 0, 0.8)',
  'rgba(248, 28, 229, 0.8)',
  '#28E2FF',
  '#6CF028',
  'rgba(219, 255, 40, 0.8)',
  'rgba(255, 72, 40, 0.8)',
  'rgba(180, 40, 255, 0.8)',
];
const borderColor = '#323E4D';
const colors = {
  black: backgroundColor,
  red: '#E17E85',
  green: '#61BA86',
  yellow: '#FFEC8E',
  blue: '#2090E0', // original #4CB2FF
  magenta: '#BE86E3',
  cyan: '#2DCED0',
  white: foregroundColor,
  lightBlack: '#546386',
  lightRed: '#E17E85',
  lightGreen: '#5bfa7d',
  lightYellow: '#FFB68E',
  lightBlue: '#4CB2FF',
  lightMagenta: '#BE86E3',
  lightCyan: '#2DCED0',
  lightWhite: foregroundColor,
};
module.exports = {
  config: {
    // choose `'canary'` to do weird things!
    updateChannel: 'stable', // 'stable' | 'canary'
    // I'm blind
    fontSize: 16,
    fontFamily: 'Ubuntu Mono, monospace',
    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',
    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',
    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: cursorColors[0 | Math.random() * 8],
    // terminal text color under BLOCK cursor
    cursorAccentColor: 'black', // default: black
    cursorShape: 'BLOCK', // 'BEAM' | 'UNDERLINE' | 'BLOCK'
    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,
    // terminal selection color
    selectionColor: 'rgba(248, 28, 229, 0.3)',
    // border color (window, tabs)
    termCSS: `
      .terminal .xterm-selection div {
        background: #9198A2 !important;
      }
      .xterm-rows > div {
        font-variant-ligatures: initial;
      }
      span {
        font-weight: normal !important;
      }
    `,
    css: `
      .terminal .xterm-selection div {
        background: #9198A2 !important;
      }
    `,
    showHamburgerMenu: false, // Boolean
    showWindowControls: '', // Boolean | 'left'
    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '12px 14px',
    foregroundColor,
    backgroundColor,
    borderColor,
    colors,
    shell: 'C:\\Windows\\System32\\wsl.exe',
    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: [],
    // for environment variables
    env: {},
    bell: true, // this doesn't do anything
    copyOnSelect: false, // Boolean
    defaultSSHApp: true,
  },
  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  plugins: [],
  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],
  keymaps: {
    'tab:new': 'alt+n',
  },
  webGLRenderer: true,
};
