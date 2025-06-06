# masters-econ-models

本仓库用于存档我在读研期间使用的一些时间序列建模代码，便于日后复现、参考与整理。

---

## 1. TVP-VAR（Matlab）

### 📁 文件结构说明

- `code/`：包含我修改过的脚本（如 `try_11.m`, `try_22.m`）；
- `ref/`：TVP-VAR package，其中 `mcmc.m` 文件经过以下修改：
  - 添加了输出项 `sa2`；
  - 第 122 行：修改 `npmt` 的值为 6；
  - 第 216 行：添加 `mSig(2,2)`；
  - 第 255 行：添加 `'sa2'`；
  - 第 257 行：添加 `'s_{a2}'`。

### 📌 补充说明

- 当前代码用于学术探索与复现，暂未进行系统注释；
- TVP-VAR package 来源：Nakajima, J. (2011)，原始链接：https://sites.google.com/site/jnakajimaweb/tvpvar?pli=1

---
