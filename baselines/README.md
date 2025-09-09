# Baselines

This directory is intended to hold baseline implementations used for comparison with NeuPAN.

## Downloading

Run the following script to clone open-source baseline repositories:

```bash
bash scripts/fetch_baselines.sh
```

Currently, the script fetches:

- [TEB Local Planner](https://github.com/rst-tu-dortmund/teb_local_planner)
- [AEMCARL](https://github.com/SJWang2015/AEMCARL)
- [OBCA](https://github.com/XiaojingGeorgeZhang/OBCA)

Other baselines such as RDA, Falco, and STT require manual setup or do not have publicly available code. Place their
implementations under this directory as needed and follow their individual build instructions.
