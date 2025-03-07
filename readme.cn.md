
## Win-Mac-Keyboard-Mapping

[English](./readme.md) | 中文

它能帮助你在windows下拥有像mac一样的按键行为。

> 默认在windows下win键对应mac环境的command键。

例如（映射前按键 -> 映射后按键）：
- 复制：`win + c` -> `ctrl + c`
- 粘贴：`win + v` -> `ctrl + v`
- 撤销：`win + z` -> `ctrl + z`
- 剪切：`win + x` -> `ctrl + x`
- 全选：`win + a` -> `ctrl + a`
- 等等...

由[SharpKeys](https://github.com/randyrants/sharpkeys) + [AutoHotKey](https://github.com/AutoHotkey/AutoHotkey)组合使用。

### 原理
1. 用SharpKeys将ctrl键和win键进行交换（基于注册表的方式），能实现大部分的按键行为。
2. 用AutoHotKey完善剩下的按键行为（基于运行脚本的方式，AutoHotKey v2语法版本），例如切换窗口应用、锁屏等。

### 使用
1. 下载安装SharpKeys，将ctrl键和win键交换。
2. 下载安装AutoHotKey，将[mac-keyboard.ahk](./mac-keyboard.ahk)下载到本地，右键用管理员运行该脚本。

### 支持
- windows 10 22H2测试下工作正常。
- 其他windows系统版本。

### 已知问题
- 锁屏快捷键与Microsoft快速助手按键冲突，需要在系统->可选功能->删除Microsoft快速助手，或者选择更换别的快捷键避免冲突。
- 映射以后，结束终端因习惯问题会按ctrl+c，实际上触发的是win+c，误唤起Cortana，也建议将其卸载。
- 要想使phpstorm拥有和mac一样的快捷键，在运行本脚本后需要在phpstorm中安装[macos-for-all](https://plugins.jetbrains.com/plugin/13968-macos-for-all)按键插件。
- 切换窗口应用快捷键和`dev-c++`应用程序的ctrl+tab快捷键冲突，建议调整`dev-c++`的快捷键。