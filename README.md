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

## 2. DCC-GARCH (R)

This section is for backup purposes only.

The script `during_covid-19_DCC.R` contains my working notes from applying the DCC-GARCH model during the COVID-19 period. It represents a snapshot of the modeling process at the time and is **not** a fully cleaned or reproducible analysis pipeline.

This is simply a working version I had back then — uploaded here for safekeeping and future reference.
