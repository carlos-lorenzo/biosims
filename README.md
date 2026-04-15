# biosims

A compact collection of small neuron and spiking neural network simulations used for exploration, teaching, and blog demonstrations.

This repository contains short, self-contained notebooks and reference scripts implementing biologically inspired models (Hodgkin–Huxley, leaky integrate-and-fire, and small PyTorch-based SNNs). The goal is reproducible demos you can run locally and figures you can use in writeups.

Repository layout
- `HH/` — Hodgkin–Huxley single-neuron demo.
- `LIF/` — Leaky integrate-and-fire demos and classifiers (multiple notebooks).
- `snn_torch/` — PyTorch + snntorch examples and single-neuron demos.
- `scripts/` — helper scripts for cleaning/exporting notebooks and small runners.
- `requirements.txt`, `LICENSE`, `README.md` — top-level project files.

Quickstart (generate a demo figure)

1. Create and activate a virtual environment, then install dependencies:

```bash
python -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

2. (Optional) Clear notebook outputs and export cleaned scripts for release:

```bash
bash scripts/clear_and_export.sh
```


Notes and best practices
- Notebooks are intended to be pedagogical and exploratory; some cells contain fast demo settings and others are longer experiments. For reproducible blog figures use the small runner scripts in `scripts/` or run notebooks from top to bottom in a fresh kernel.
- Time units: most code uses SI seconds internally; where values are originally in milliseconds the notebooks have been adjusted to use seconds (e.g., `TAU = 20e-3` means 20 ms).
- If you plan to run the `snn_torch` examples, ensure `torch` and `snntorch` versions in `requirements.txt` are compatible with your platform (CPU-only or GPU).

