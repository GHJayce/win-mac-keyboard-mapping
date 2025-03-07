## Win-Mac-Keyboard-Mapping

English | [中文](./readme.cn.md)

It helps you have Mac-like key behavior on Windows.

> By default, the Win key on Windows corresponds to the Command key in the Mac environment.

For example (before mapping -> after mapping):
- Copy: `win + c` -> `ctrl + c`
- Paste: `win + v` -> `ctrl + v`
- Undo: `win + z` -> `ctrl + z`
- Cut: `win + x` -> `ctrl + x`
- Select All: `win + a` -> `ctrl + a`
- And so on...

It uses a combination of [SharpKeys](https://github.com/randyrants/sharpkeys) + [AutoHotKey](https://github.com/AutoHotkey/AutoHotkey).

### Principle
1. Use SharpKeys to swap the Ctrl key and the Win key (based on the registry), which can achieve most key behaviors.
2. Use AutoHotKey to complete the remaining key behaviors (based on running scripts, AutoHotKey v2 syntax version), such as switching window applications, locking the screen, etc.

### Usage
1. Download and install SharpKeys, swap the Ctrl key and the Win key.
2. Download and install AutoHotKey, download [mac-keyboard.ahk](./mac-keyboard.ahk) locally, right-click and run the script as an administrator.

### Support
- Works fine on Windows 10 22H2.
- Other Windows versions.

### Known Issues
- The lock screen shortcut key conflicts with Microsoft Quick Assist. You need to go to System -> Optional Features -> Remove Microsoft Quick Assist, or choose another shortcut key to avoid conflicts.
- After mapping, ending the terminal by habit will press Ctrl+C, which actually triggers Win+C, mistakenly invoking Cortana. It is also recommended to uninstall it.
- To make PhpStorm have the same shortcuts as Mac, after running this script, you need to install the [macos-for-all](https://plugins.jetbrains.com/plugin/13968-macos-for-all) key plugin in PhpStorm.
- The switching window applications shortcut key conflicts with the Ctrl+Tab shortcut key of the Dev-C++ application. It is recommended to adjust the shortcut key of Dev-C++.