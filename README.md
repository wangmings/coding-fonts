# coding-fonts

编程字体集合，通过 jsDelivr CDN 提供远程加载。

## 包含字体

| 字体名 | 文件 | 说明 |
|--------|------|------|
| JetBrains Mono | Regular / Italic / Medium / Medium-Italic / Bold / Bold-Italic / ExtraBold / ExtraBold-Italic | 等宽编程字体，8 种变体 |
| TsangerJinKai02-W04 | Regular | 仓劲楷体，中文手写风格 |
| Symbols Nerd Font Mono | Regular | Nerd Font 图标字体 |

## 使用方式

在 HTML 中引入 CSS 即可使用全部字体：

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/fonts.css">
```

### 字体调用

| 用途 | CSS |
|------|-----|
| JetBrains Mono 常规 | `font-family: 'JetBrains Mono', monospace;` |
| JetBrains Mono 加粗 | `font-family: 'JetBrains Mono', monospace; font-weight: bold;` |
| JetBrains Mono 斜体 | `font-family: 'JetBrains Mono', monospace; font-style: italic;` |
| 仓劲楷体 | `font-family: 'TsangerJinKai02-W04', cursive;` |
| Nerd Font 图标 | `font-family: 'Symbols Nerd Font Mono', monospace;` |

JetBrains Mono 支持的字重：`normal`(400)、`500`、`bold`(700)、`800`，均可搭配 `italic`。

### 直接引用单个字体文件

```
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/JetBrainsMono-Regular.ttf
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/TsangerJinKai02-W04.ttf
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/SymbolsNerdFontMono-Regular.ttf
```

## 测试

用浏览器打开 `test-fonts.html` 可查看所有字体渲染效果。
