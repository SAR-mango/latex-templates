## LaTeX Templates
This repository contains four templates:
- Homework (primary file: `homework.tex`)
- Explainers (primary file: `explainers.tex`)
- Lab reports for ECE 147B (primary file: `147b_lab.tex`)
- Lab reports for ECE 152A (primary file: `152a_lab.tex`)

I use the homework template over 95% of the time.

The explainers template is for short documents that explain a single concept. It's similar to the homework template, but problems/parts/subparts are not enumerated.

The 147B and 152A lab report templates are for specific classes at UCSB.

All templates are strongly geared towards electrical engineering students.
## Features of the Homework Template
This template has evolved into something fairly sophisticated and powerful over the past year. It contains several speed-enhancing features:
### Automatic problem/part/subpart enumeration
- `\prob` to enumerate a problem, i.e. Problem 1, Problem 2, ...
- `pp` environment for a part of a problem, i.e. (a), (b), ...
- `spart` environment for a subpart of a part, i.e. i., ii., ...
### Quantity commands
Many commands are defined to make it easy to type quantities with properly formatted units. For example:
- `\quf{}` for microfarads
- `\qkr{}` for kohms
- `\qm{}` for meters
- `\qGhz{}` for gigahertz
For maximal typing speed, capital letters are only used in metric prefixes such as M for mega and G for giga.
### Dashed Quantity commands
There are also commands for units as modifiers. For example, "a 1.8-kΩ resistor" could be written as `a \dqkr{1.8} resistor`. Each quantity command has a matching dashed quantity command.
### Subscript variable commands
Variables for voltage, current, etc. almost always require a subscript. Commands are defined to provide a math-mode variable with a *text-mode* subscript. For example:
- `\V{in}` is equivalent to `V_{\text{in}}`
- `\Rr{ds}` is equivalent to `r_{\text{ds}}` (small-signal drain-source resistance)
### Other commands
There are some additional commands and shortcuts defined at the top of `commands.tex`. For example:
- `\w` for `\omega`
- `\e` for `\epsilon`, `\ve` for `\varepsilon`, 
- `\union` instead of `\cup` for the union symbol
- `\intersect` instead of `\cap` for the intersection symbol
### Title and date
- Date automatically updates upon compilation
- `class` and `title` parameters in `homework.tex` can be set to create the title
### K-maps
In `setup.tex`, uncomment `\usetikzlibrary{karnaugh}` and the `k-map configuration` section. Refer to the [documentation](https://ctan.org/pkg/tikz-karnaugh?lang=en) for more details.
### Plots
In `setup.tex`, uncomment `\usepackage{pgfplots}` and the `setup for plots` section. This gives a clean baseline configuration for plots.
### Other packages
The following packages are commented out by default. To reduce compile time, only uncomment what you need.
- `cancel` allows you to cancel out terms in math mode; for example `x + \cancel{0x} = 1`.
- `enumitem` allows you to configure bulleted and numbered lists.
- `graphicx` allows you to include images and PDFs.
- `xcolor` gives additional colors, and its predefined colors are more reasonable than the default ones.
- `circuitikz` lets you draw circuits. Use [this website](https://circuit2tikz.tf.fau.de/designer/) to draw them graphically and obtain the TikZ code.
- `steinmetz` lets you type the "angle of" symbol in math mode; for example, `\phase{H(s)}`.
- `epsfig` lets you include `eps` figures generated from Matlab. These are vector graphics and they look excellent.
- `matlab-prettifier` and the configuration line below it allow you to include Matlab code formatted as in Matlab.
- `nicematrix` allows for extensive customization of matrices.
- `systeme` allows for convenient formatting of systems of equations.
