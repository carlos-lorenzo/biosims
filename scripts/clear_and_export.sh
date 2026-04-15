#!/usr/bin/env bash
set -euo pipefail

# Clear outputs from notebooks and export scripts for release
echo "Clearing notebook outputs (in-place) and exporting .py scripts..."

jupyter nbconvert --ClearOutputPreprocessor.enabled=True --inplace HH/*.ipynb LIF/*.ipynb snn_torch/*.ipynb || true
jupyter nbconvert --to script HH/*.ipynb LIF/*.ipynb snn_torch/*.ipynb || true

echo "Done. Converted notebooks to clean scripts in their folders."
