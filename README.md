# masters-econ-models

This repository serves as an archive of time series models I used during my master's studies in economics. It is intended for future reproduction, reference, and further organization.

---

## 1. TVP-VAR (Matlab)

### 📁 File Structure

- `code/`: Contains modified scripts (e.g., `try_11.m`);
- `ref/`: Original TVP-VAR package. The `mcmc.m` file has been modified with the following changes:
  - Output for `sa2` was added;
  - Line 122: changed the value of `npmt` to 6;
  - Line 216: added `mSig(2,2)`;
  - Line 255: added `'sa2'`;
  - Line 257: added `'s_{a2}'`.

### 📌 Notes

- The current code is for academic experimentation and reproducibility. It has not yet been systematically documented or annotated.
- Original TVP-VAR package by Nakajima, J. (2011). Source: https://sites.google.com/site/jnakajimaweb/tvpvar?pli=1

---

