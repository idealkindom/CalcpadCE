# Plotting

Besides functions, Calcpad provides special commands for advanced operations.
They accept functions and expressions as arguments and perform plotting, iterative solutions and numerical methods.
Their names start with "\$" to be distinguished from normal functions.
Their parameters must be enclosed in curly brackets: "{" and "}". Such is the plotting command \$Plot.
It can plot a function of one variable in the specified interval.
It has the following format:

\$Plot{**y**(*x*) @ *x* = *a* : *b*} , where:

> **y**(*x*) - the function to be plotted.
Instead of **y**(*x*) you can put any valid expression.
It will be used to calculate the ordinate values;
>
> *x* - the name of the variable along the abscissa.
You can put here only a single name.
It is not required to define the variable preliminary;
>
> *a* and *b* are the limits of the interval for the *x* variable.
Instead of *a* and *b* you can put numbers, variables or any valid expressions.

For example, if you enter: \$Plot{*x*^2 - 5\**x* + 3 @ x = -1:6}, you will get the following result:

<img src="../media/image20.png" style="width:4.01795in;height:2.81417in" alt="Картина, която съдържа диаграма, заговорнича, линия Описанието е генерирано автоматично" />

The above command plots only one function of one variable at a time.
There are also other formats that you can use:

> \$Plot{**x**(*t*)\|**y**(*t*) @ *t* = *a*:*b*} - parametric plot: both coordinates are functions of a parameter;  
> \$Plot{**y**1(*x*) & **y**2(*x*) & … @ *x* = *a*:*b*} - multiple: plots several functions on a single graph;  
> \$Plot{**x**1(*t*)\|**y**1(*t*) & **x**2(*t*)\|**y**2(*t*) & … @ *t* = *a*:*b*} - multiple parametric;  
> \$Map{**f**(*x*; *y*) @ *x* = *a*:*b* & *y* = *c*:*d*} - draws a 2D color map of a 3D surface, defined by **f**(*x*; *y*).

The \$Plot function must be the first thing on a line.
You can have only spaces and tabs before, not even comments.
Otherwise, the program will return an error.
Any text after the closing bracket "}" will be ignored.
Plotting supports only real numbers.
You can use it in complex mode, only if *x* and *y* are real and the function returns real result along the plotting interval.

You can specify the size of the plot area by defining two variables: *PlotWidth* and *PlotHeight* in pixels.
The default values are *PlotWidth* = 400 and *PlotHeight* = 250. Plots can be in either in raster (PNG) or vector (SVG) format.
The vector format is usually smaller and faster than the raster one.
However, you may have problems with export to older version of Word or other software that does not support SVG.
You can turn this option on and off by setting the *PlotSVG* variable to 1 and 0, respectively.
Any nonzero value is equivalent to setting it to one.

Plotting a function requires multiple evaluations.
This is performed at uniformly spaced points of a dense mesh so that to catch any variations of function values.
However, if evaluations are computationally expensive, this approach can be very time-consuming.
In such cases, you can use adaptive plotting.
It starts with a coarse mesh and condenses it adaptively to the curvature.
Where the function is smoother, the mesh remains coarser, so that the total number of points is optimal and much less than for uniform mesh.
You can switch adaptive plotting on and off by clicking the "**Adaptive**" checkbox or setting the *PlotAdaptive* variable to 1 and 0, respectively.
Adaptive potting will work for relatively smooth plots with limited number of breaks and jumps.
If you have rapidly oscillating functions, it is possible to miss some peaks, so it is recommended to turn it off.

The \$Map function can work with different color palettes.
Select the preferred one from the "**Palette**" combo box on the bottom of the program window.
If you check the "**Smooth**" checkbox, the coloring will be displayed as a smooth gradient.
Otherwise, the program will display strips.
You can also add 3D effects to the graph by selecting the "**Shadows**" checkbox.
You can also specify light direction by the respective combo.
Besides UI controls, you can specify these options by using variables at worksheet level, as follows:

> *PlotShadows *- draw surface plots with shadows;
>
> *PlotLightDir* - direction to light source (0-7) clockwise:  
>   0 - North  
>   1 - NorthEast  
>   2 - East  
>   3 - SouthEast  
>   4 - South  
>   5 - SouthWest  
>   6 - West  
>   7 – NorthWest
>
> *PlotPalette *- the number of color palette to be used for surface plots (0-9);

| 0 -  | **None** |
|:-----|:---------|
| 1 -  |          |
| 2 -  |          |
| 3 -  |          |
| 4 -  |          |
| 5 -  |          |
| 6 -  |          |
| 7 -  |          |
| 8 -  |          |
| 9 -  |          |

*PlotSmooth* - smooth transition of colors (= 1) or isobands (= 0) for surface plots.  
Examples of different plotting methods are provided below:

<table>
<colgroup>
<col style="width: 49%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td style="text-align: left;"><strong>Parametric</strong><br />
Equation: <strong>r</strong>(<em>θ</em>) = <strong>cos</strong>(5/2*<em>θ</em>)<br />
$Plot{<strong>r</strong>(<em>θ</em>)*<strong>cos</strong>(<em>θ</em>)|<strong>r</strong>(<em>θ</em>)*<strong>sin</strong>(<em>θ</em>)<br />
@ <em>θ</em> = 0:6*π}</td>
<td style="text-align: left;"><strong>Multiple</strong><br />
Equation: <strong>y</strong>1(<em>θ</em>) = <strong>cos</strong>(<em>θ</em>) - <strong>sin</strong>(<em>θ</em>)<br />
<strong>y</strong>2(<em>θ</em>) = <strong>cos</strong>(<em>θ</em>) + <strong>sin</strong>(<em>θ</em>)<br />
$Plot{<strong>cos</strong>(<em>θ</em>) &amp; <strong>y</strong>1(<em>θ</em>) &amp; <strong>y</strong>2(<em>θ</em>) @ <em>θ</em> = 0:<em>π</em>}</td>
</tr>
<tr>
<td style="text-align: left;">Result: "rose" curve<br />
<img src="../media/image21.png" style="width:2.91319in;height:2.83472in" /></td>
<td style="text-align: left;">Result: leaf by three trigonometric functions<br />
<img src="../media/image22.png" style="width:2.91319in;height:2.83472in" /></td>
</tr>
<tr>
<td style="text-align: left;"><strong>Multiple parametric</strong><br />
Equation: <strong>x</strong>(<em>θ</em>) = <strong>sqr</strong>(<em>θ</em>)*<strong>cos</strong>(<em>θ</em>)<br />
<strong>y</strong>(<em>θ</em>) = <strong>sqr</strong>(<em>θ</em>)*<strong>sin</strong>(<em>θ</em>)<br />
$Plot{<strong>x</strong>(<em>θ</em>)|<strong>y</strong>(<em>θ</em>) &amp; -<strong>x</strong>(<em>θ</em>)|-<strong>y</strong>(<em>θ</em>) @ <em>θ</em> = 0:3*<em>π</em>}</td>
<td style="text-align: left;"><strong>Color map</strong><br />
Equation:<br />
<strong>f</strong>(<em>x</em>; <em>y</em>) = <strong>cos</strong>(<em>x</em>/3) + <strong>sin</strong>(<em>y</em>) -<strong>sin</strong>(<em>x</em>)*<strong>cos</strong>(<em>y</em>/4)<br />
$Map{<strong>f</strong>(<em>x</em>; <em>y</em>) @ <em>x</em> = -15:15 &amp; <em>y</em> = -15:15}</td>
</tr>
<tr>
<td style="text-align: left;">Result: double Fermat spiral<br />
<img src="../media/image23.png" style="width:2.91736in;height:2.83472in" /></td>
<td style="text-align: left;">Result: 2D waves<br />
<img src="../media/image24.png" style="width:3.48403in;height:2.83472in" /></td>
</tr>
</tbody>
</table>
