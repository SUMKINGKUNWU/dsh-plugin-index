# DSH Plugin Index

我的 DSH（DeepSeek Harness）插件索引，通过 GitHub Pages 提供固定 URL。

## 在 DSH 中添加

设置 → 插件 → 索引源 → 添加，填入 Pages 地址（见仓库 Pages 设置）：

```
https://<你的用户名>.github.io/<仓库名>/index.json
```

添加后即可在「发现」中浏览和安装索引里的插件。

## 更新索引

1. 编辑 `index.json`（保持 format 1 格式）；
2. 运行 `./publish.ps1 "更新说明"` 提交并推送；
3. 等 GitHub Pages 刷新（通常 1 分钟内）即可在 DSH「发现」中看到更新。

## 格式说明

`index.json` 遵循 DSH 插件索引 format 1：

- `format: 1`
- `title` / `description`：多语言显示标题
- `metadata`：`categories` / `labels` / `sortKeys` 声明
- `plugins[]`：每个插件含 `name`、`title`、`metadata`、`versions[]`
- `versions[].source`：`{ "type": "npm", "registry": "..." }` 或 Git 源
