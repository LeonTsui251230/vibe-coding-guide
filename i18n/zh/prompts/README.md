# 💡 提示词库

`i18n/zh/prompts/` 是本项目的核心资产之一：用系统提示词约束 AI 的边界，用任务提示词驱动从需求到交付的完整流程。

## 目录结构

```
i18n/zh/prompts/
├── README.md
├── system_prompts/     # 系统提示词：定义 AI 工作模式
├── coding_prompts/     # 任务提示词：驱动具体开发流程
└── user_prompts/       # 个人提示词：临时、一次性、高个人化
```

## 使用路径

1. **先定边界**：选一个系统提示词作为每次对话的上下文。
2. **再跑流程**：在具体任务中按阶段挑选 coding_prompts。
3. **沉淀资产**：反复好用的提示词，升级到 `i18n/zh/skills/`。

## 快速开始

```bash
# 查看一个任务提示词
cat i18n/zh/prompts/coding_prompts/需求澄清.md

# 复制一个系统提示词到当前项目
cp i18n/zh/prompts/system_prompts/全栈开发搭档.md ./CLAUDE.md
```
