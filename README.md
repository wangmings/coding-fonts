# coding-fonts

编程字体集合，通过 jsDelivr CDN 提供远程加载。

## 包含字体

| 字体名 | 变体 | 说明 |
|--------|------|------|
| JetBrains Mono | 8 (Regular~ExtraBold × 正常+斜体) | 等宽编程字体 |
| JetBrains Maple Mono | 16 (Thin~ExtraBold × 正常+斜体) | JetBrains 带连字风格 |
| JetBrainsMono Nerd Font | 16 (Thin~ExtraBold × 正常+斜体) | JetBrains Mono + Nerd 图标 |
| JetBrainsMono Nerd Font Mono | 16 (Thin~ExtraBold × 正常+斜体) | 同上，等宽版本 |
| JetBrainsMonoNL Nerd Font | 16 (Thin~ExtraBold × 正常+斜体) | JetBrains Mono + Nerd 图标（无连字） |
| JetBrainsMonoNL Nerd Font Mono | 16 (Thin~ExtraBold × 正常+斜体) | 同上，等宽版本 |
| LXGW WenKai | Regular / Medium | 霞鹜文楷 |
| LXGW WenKai Mono | Regular | 霞鹜文楷等宽版 |
| LXGW WenKai Screen | Regular | 霞鹜文楷屏幕优化版 |
| Zed Mono | 4 (Regular/Bold × 正常+斜体) | Zed 编辑器等宽扩展字体 |
| TsangerJinKai02-W04 | Regular | 仓劲楷体 |
| Symbols Nerd Font Mono | Regular | Nerd Font 图标字体 |

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
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/JetBrainsMono-Regular.ttf
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/JetBrainsMapleMono-Regular.ttf
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/LXGWWenKai-Regular.ttf
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/zed-mono-extended.ttf
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/TsangerJinKai02-W04.ttf
https://cdn.jsdelivr.net/gh/wangmings/coding-fonts@main/ttf/SymbolsNerdFontMono-Regular.ttf
```

## 测试

用浏览器打开 `test-fonts.html` 可查看所有字体渲染效果。
