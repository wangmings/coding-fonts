# coding-fonts

编程字体集合，通过 jsDelivr CDN 提供远程加载。所有字体使用 WOFF2 格式，压缩率高，加载更快。

## 包含字体

| 字体名 | 变体 | 说明 |
|--------|------|------|
| JetBrains Mono | 8 (标准~特粗 × 正常+斜体) | 英文等宽编程字体，中英文比例 1:2 |
| JetBrains Maple Mono | 16 (细体~特粗 × 正常+斜体) | 中英等宽编程字体，中英文比例 1:2 |
| JetBrainsMono Nerd Font | 16 (细体~特粗 × 正常+斜体) | JetBrains Mono + Nerd 图标 |
| JetBrainsMono Nerd Font Mono | 16 (细体~特粗 × 正常+斜体) | JetBrains Mono + Nerd 图标 |
| JetBrainsMonoNL Nerd Font | 16 (细体~特粗 × 正常+斜体) | JetBrains Mono + Nerd 图标（无连字） |
| JetBrainsMonoNL Nerd Font Mono | 16 (细体~特粗 × 正常+斜体) | JetBrains Mono + Nerd 图标（无连字） |
| LXGW WenKai | 标准 / 中等 | 霞鹜文楷 |
| LXGW WenKai Mono | 标准 | 霞鹜文楷等宽版 |
| LXGW WenKai Screen | 标准 | 霞鹜文楷屏幕优化版 |
| Zed Mono | 4 (标准/粗体 × 正常+斜体) | Zed 编辑器等宽扩展字体 |
| TsangerJinKai02-W04 | 标准 | 仓耳今楷 |
| Symbols Nerd Font Mono | 标准 | Nerd Font 图标字体 |

## 使用方式

在 HTML 中引入 CSS 即可使用全部字体：

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/fonts.css">
```

### 字体调用示例

```css
/* JetBrains Mono 系列 */
font-family: 'JetBrains Mono', monospace;
font-family: 'JetBrains Maple Mono', monospace;
font-family: 'JetBrainsMono Nerd Font', monospace;
font-family: 'JetBrainsMono Nerd Font Mono', monospace;
font-family: 'JetBrainsMonoNL Nerd Font', monospace;
font-family: 'JetBrainsMonoNL Nerd Font Mono', monospace;

/* LXGW 文楷系列 */
font-family: 'LXGW WenKai', cursive;
font-family: 'LXGW WenKai Mono', monospace;
font-family: 'LXGW WenKai Screen', cursive;

/* 其他 */
font-family: 'Zed Mono', monospace;
font-family: 'TsangerJinKai02-W04', cursive;
font-family: 'Symbols Nerd Font Mono', monospace;
```

字重：JetBrains 系列支持 `100`(Thin) ~ `800`(ExtraBold)，LXGW 支持 `normal`/`500`，Zed Mono 支持 `normal`/`bold`。均可搭配 `italic`。

### 直接引用单个字体文件

```
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/woff2/JetBrainsMono-Regular.woff2
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/woff2/JetBrainsMapleMono-Regular.woff2
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/woff2/LXGWWenKai-Regular.woff2
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/woff2/zed-mono-extended.woff2
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/woff2/TsangerJinKai02-W04.woff2
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/woff2/SymbolsNerdFontMono-Regular.woff2
```

## 测试

用浏览器打开 `test-fonts.html` 可查看所有字体渲染效果。

