# 仓库协作指南

本文件面向所有参与本仓库的 Agent、贡献者与维护者，统一项目结构、命名约定与协作规则。

## 项目结构

```
vibe-coding-guide/
├── README.md                 # 项目总览与快速入口
├── AGENTS.md                 # 本文件：仓库协作规则
├── CODE_OF_CONDUCT.md        # 社区行为准则
├── CONTRIBUTING.md           # 贡献流程
├── LICENSE                   # 开源许可证
├── Makefile                  # 常用命令封装
├── .github/                  # GitHub 社区文件与模板
├── i18n/                     # 多语言资产
│   ├── zh/                   # 中文：方法论、提示词、技能
│   └── en/                   # English: methodology, prompts, skills
└── libs/                     # 可复用脚本与工具
    ├── common/               # 内部通用模块
    ├── database/             # 数据层（预留）
    └── external/             # 第三方集成
```

## 协作原则

1. **文档即真相源**：目录结构、命名、流程变更必须同步更新对应 README 与本文件。
2. **中文优先**：面向中文用户的文档、注释使用中文；代码符号使用英文。
3. **小而稳**：每个脚本、提示词、技能只解决一个明确问题，保持低耦合。
4. **可复用优先**：一次好用的脚本，应放到 `libs/common/`；一次好用的提示词，应沉淀到 `i18n/zh/prompts/`。

## 常用命令

- `make help`：查看可用命令
- `make lint`：Markdown 格式检查（占位，需本地安装 markdownlint-cli）
- `make build` / `make test` / `make clean`：占位命令，待具体实现后填充

## 提交规范

采用简化版 Conventional Commits：

```
<type>: <description>
```

类型：`feat`、`fix`、`docs`、`refactor`、`chore`、`test`。

示例：
- `docs: 补充 vibe coding 心法章节`
- `feat: 新增小程序实战案例提示词`
- `fix: 修正 README 中的失效链接`

## 安全与隐私

- 不要在仓库中提交 API Key、Token、密码或个人隐私信息。
- 运行 `libs/common/utils/backups/` 下的脚本前，先检查输出目录，避免覆盖私有数据。
