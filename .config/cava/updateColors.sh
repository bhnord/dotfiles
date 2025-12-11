#!/bin/bash
CAVA_CONFIG="$HOME/.config/cava/config"
WAL_COLORS="$HOME/.cache/wal/colors.json"

# Generate gradient lines from Pywal
python3 <<EOF
import json
from pathlib import Path

cava_config = Path("$CAVA_CONFIG")
colors_file = Path("$WAL_COLORS")

with open(colors_file) as f:
    colors = json.load(f)["colors"]

gradient_lines = [
    f'gradient_color_1 = "{colors["color0"]}"',
    f'gradient_color_2 = "{colors["color1"]}"',
    f'gradient_color_3 = "{colors["color2"]}"',
    f'gradient_color_4 = "{colors["color3"]}"',
    f'gradient_color_5 = "{colors["color4"]}"',
    f'gradient_color_6 = "{colors["color5"]}"',
    f'gradient_color_7 = "{colors["color6"]}"',
    f'gradient_color_8 = "{colors["color7"]}"',
]

# Read existing config
lines = cava_config.read_text().splitlines()
new_lines = []
inserted = False
for line in lines:
    # Keep all lines except old gradient lines
    if line.startswith("gradient_color_"):
        continue
    new_lines.append(line)
    # Insert gradient lines right after 'gradient = 1'
    if not inserted and line.strip() == "gradient = 1":
        new_lines.extend(gradient_lines)
        inserted = True

# Write updated config
cava_config.write_text("\n".join(new_lines))
EOF
