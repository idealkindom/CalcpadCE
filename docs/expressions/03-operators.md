# Operators

The following operators are supported by the Calcpad language:

- Arithmetic:

> "**!**" - factorial;
>
> "**^**" - exponentiation;
>
> "**/**" - floating point division;
>
> "**\\**" - integer division;
>
> "**÷**" - force division bar in inline mode and slash in pro mode (//);"⦼" - modulo (%%, remainder);
>
> "**\***" - multiplication;
>
> "**-**" - subtraction;
>
> "**+**" - addition;

- Relational (comparison):

> "≡" - equal to (==);
>
> "≠" - unequal to (!=);
>
> "**\<**" - less then;
>
> "**\>**" - greater than;
>
> "≤" - less or equal (\<=);
>
> "≥" - greater or equal (\>=);

- Logical:

> "∧" - logical "AND" (&&);
>
> "∨" - logical "OR" (\|\|);
>
> "⊕" - logical “XOR” (^^);

- Complex:

> "**∠**" - phasor A∠φ (\<\<);

- <span id="_Toc198414438" class="anchor"></span>Assignment:

> "**=**" - assignment or definition of a variable, function or macro;
>
> "**←**" - assignment to an outer level or global variable in block (\<\*).

## Operator shortcuts

Instead of "≡", "≠", "≤"- and "≥", you can use the respective C-style equivalent operators, as follows: "==", "!=", "\<=" and "\>=". They will be automatically replaced by the corresponding Calcpad operators.
The shortcut “%%” will be converted to the modulo operator “⦼”. This is necessary because “%” is reserved for the percent units.
Since this symbol is not very common, it is rendered as “mod” in the output, e.g. “7 mod 5 = 2”, instead of “7 ⦼ 5 = 2”.  in a similar way, double slash "//" is a shortcut for division bar "÷" operator.
Boolean operators also have shortcuts for easier typing: "&&" for "∧" (AND), "\|\|" for "∨" (OR) and "^^" for "⊕" (XOR).

## Operator precedence and associativity

The above operators are listed in the order of their precedence.
This is the order they will be evaluated in an expression.
When you have different types of operators in a single expression, exponentiation will be evaluated first, then division and multiplication, subtraction and addition and comparison will be the last.
When we have a unary minus and exponentiation, the exponentiation is evaluated first.
For example: "-2^2 = -(2^2) = -4" All relational operators are of equal precedence.
If you need to change the order of evaluation, you can use brackets.
For example, "5 + 2∙3" makes "11". If the addition has to be first, write "(5 + 2)∙3". You will get "7∙3 = 21". Operators with equal precedence are evaluated from left to right.
This is called operator associativity.
For example, "3 - 2 + 1" makes "(3 - 2) + 1 = 2" and not "3 - (2 + 1) = 0". Another good example is "2∙3 / 2∙3", which makes "9" and not "1".

All operators in Calcpad are left-associative (calculations are performed from left to right). The only exception is exponentiation, which is right-associative.
It is performed from right to left, which means that *x*^*a*^*b* will be evaluated as *x*ab.
However, many hand calculators and spreadsheet software like Excel use left associativity for exponentiation.
In this case *x*^*a*^*b* will be evaluated as *x*a·b. If you need to have *x*ab, you will have to add brackets: *x*^(*a*^*b*).

## Relational expressions

Relational operators can return only two values: "**1**" for "**true**" and "**0**" for "**false**". You can use them in expressions along with arithmetic operators.
For example, you can get the greater of two numbers *a* and *b* by the expression: "*a*\*(*a* ≥ *b*) + *b*\*(*a* \< *b*)". But you need to be careful.
If you use "≤" instead of "**\<**", for the case of *a* equal to *b*, you will get *a* + *b*, which may be not exactly what you want.
For that special purpose, it is better to use the built-in function **max**(*a*; *b*), logical operators or conditional execution (look further in this manual). Arithmetic operators are of higher precedence than relational, and both are evaluated before logical ones.

## Logical expressions

Calcpad operates only with numerical data and does not have special types for boolean data.
Like relational ones, logical operators also use "**1**" for "**true**" and "**0**" for "**false**". Any input value, different than 0, is also assumed to be "**true**". You can build logical expressions by using logical operators and/or logical functions (see further in this manual). They work as follows:

> "**∧**" (and) returns 1 if both operands are 1 and 0 otherwise;
>
> "**∨**" (or) returns 1 if any of the operands is 1 and 0 if both are 0;
>
> "**⊕**" (xor) returns 1 if just one of the operands is 1 and 0 otherwise.

The results from the above operators are presented in the following tables:

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 32%" />
<col style="width: 33%" />
</colgroup>
<tbody>
<tr>
<td><p><strong>And</strong></p>
<table style="width:20%;">
<colgroup>
<col style="width: 5%" />
<col style="width: 6%" />
<col style="width: 7%" />
</colgroup>
<tbody>
<tr>
<td>x</td>
<td>y</td>
<td>x∧y</td>
</tr>
<tr>
<td style="text-align: center;">0</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">0</td>
</tr>
<tr>
<td style="text-align: center;">0</td>
<td style="text-align: center;">1</td>
<td style="text-align: center;">0</td>
</tr>
<tr>
<td style="text-align: center;">1</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">0</td>
</tr>
<tr>
<td style="text-align: center;">1</td>
<td style="text-align: center;">1</td>
<td style="text-align: center;">1</td>
</tr>
</tbody>
</table></td>
<td><p><strong>Or</strong></p>
<table style="width:20%;">
<colgroup>
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 7%" />
</colgroup>
<tbody>
<tr>
<td>x</td>
<td>y</td>
<td>x∧y</td>
</tr>
<tr>
<td style="text-align: center;">0</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">0</td>
</tr>
<tr>
<td style="text-align: center;">0</td>
<td style="text-align: center;">1</td>
<td style="text-align: center;">1</td>
</tr>
<tr>
<td style="text-align: center;">1</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">1</td>
</tr>
<tr>
<td style="text-align: center;">1</td>
<td style="text-align: center;">1</td>
<td style="text-align: center;">1</td>
</tr>
</tbody>
</table></td>
<td><p><strong>Xor</strong></p>
<table style="width:20%;">
<colgroup>
<col style="width: 5%" />
<col style="width: 6%" />
<col style="width: 7%" />
</colgroup>
<tbody>
<tr>
<td>x</td>
<td>y</td>
<td>x∧y</td>
</tr>
<tr>
<td style="text-align: center;">0</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">0</td>
</tr>
<tr>
<td style="text-align: center;">0</td>
<td style="text-align: center;">1</td>
<td style="text-align: center;">1</td>
</tr>
<tr>
<td style="text-align: center;">1</td>
<td style="text-align: center;">0</td>
<td style="text-align: center;">1</td>
</tr>
<tr>
<td style="text-align: center;">1</td>
<td style="text-align: center;">1</td>
<td style="text-align: center;">0</td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

## Complex arithmetic

All operators support complex numbers except for factorial "**!**", integer division "**\\**", remainder "⦼" and comparison: "**\<**", "**≤**", "**\>**", "**≥**". The evaluation of a complex expression is a little bit more difficult than real.
The rules for the basic complex operations are given below:

- Addition: (a + b*i*) + (c + d*i*) = (a + c) + (b + d)*i*;

- Subtraction: (a + b*i*) − (c + d*i*) = (a − c) + (b − d)*i*;

- Multiplication: (a + b*i*)·(c + d*i*) = (ac − bd) + (bc + ad)*i*;

- Division: (a + b*i*)/(c + d*i*) = (ac + bd)/(c2 + d2) + (bc − ad)/(c2 + d2)*i*;
