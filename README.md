## LaTeX Templates
This repository contains three templates:
- Homework (primary file: `homework.tex`
- Explainers (primary file: `explainers.tex`)
- Lab reports for ECE 152A (primary file: `152a_lab.tex`)

I use the homework template over 95% of the time.

The explainers template is for short documents that explain a single concept. It's similar to the homework template, but problems/parts/subparts are not enumerated.

The 152A lab template has (thankfully) not been touched since Spring 2024.

All three templates are strongly geared towards electrical engineering students.
## Features of the Homework Template
This template has evolved into something fairly sophisticated and powerful over the past year. It contains several speed-enhancing features:
### Automatic problem/part/subpart enumeration
- `\prob` to enumerate a problem, i.e. Problem 1, Problem 2,...
- `pp` environment for a part of a problem, i.e. (a), (b),...
- `spart` environment for a subpart of a part, i.e. i., ii.,...
### Quantity commands
Many commands are defined to make it easy to type quantities with properly-formatted units. For example:
- `\quf{}` for microfarads
- `\qkr{}` for kilo-ohms
- `\qm{}` for meters
- `\qGhz{}` for gigahertz

There is a quantity command for almost any unit that an electrical engineering student would encounter. Refer to `commands.tex` to see exactly what is available.
### Subscript variable commands
Variables for voltage, current, etc. almost always require a subscript. Many commands are defined to provide a math-mode variable with a *text-mode* subscript. For example:
- `\V{in}` is equivalent to `V_{\mathrm{in}}`
- `\Rr{ds}` is equivalent to `r_{\mathrm{ds}}` (small-signal drain-source resistance)

There is a subscript variable command for most variables an electrical engineering student would encounter. Refer to `commands.tex` to see exactly what is available.
### Other commands
There are some additional commands and shortcuts defined at the top of `commands.tex`. For example:
- `\w` for `\omega`
- `\e` for `\epsilon`
- `\union` instead of `\cup` for the union symbol
- `\intersect` instead of `\cap` for the union symbol
### Boxed answers
In math mode, `\ans{}` will put a nicely highlighted box around whatever is inside it. This makes your final answers very easy to locate, which is appreciated by TAs.
### Title and date
- Date automatically updates upon compilation
- `class` and `title` parameters in `homework.tex` can be set to create the title
### K-maps
In `setup.tex`, uncomment `\usetikzlibrary{karnaugh}` and the `k-map configuration` section. Refer to the [documentation](https://ctan.org/pkg/tikz-karnaugh?lang=en) for more details.
### Augmented matrices
In `setup.tex`, uncomment the `augmented matrices` section. You can then create an augmented matrix with `\begin{bmatrix}[ccc|c]`..., where the bar would be to the right of the third column.
### Plots
In `setup.tex`, uncomment `\usepackage{pgfplots}` and the `setup for plots` section. This gives a clean baseline configuration for plots.
### Other packages
The following packages are commented out by default. To reduce compile time, only uncomment what you need.
- `cancel` allows you to cancel out terms in math mode; for example `x + \cancel{0x} = 1`
- `enumitem` allows you to configure bulleted and numbered lists
- `graphicx` allows you to include images and PDFs
- `xcolor` gives additional colors, and its predefined colors are more reasonable than the default ones.
- `circuitikz` lets you draw circuits. Use [this website](https://circuit2tikz.tf.fau.de/designer/) to draw them graphically and obtain the TikZ code.
- `steinmetz` lets you type the "angle of" symbol in math mode; for example, `\phase{H(s)}`
- `epsfig` lets you include `eps` figures generated from Matlab. These are vector graphics and they look excellent.
- `matlab-prettifier` and the configuration line below it allow you to include Matlab code formatted as in Matlab.
