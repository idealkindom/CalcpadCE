# Functions

## Library (built-in) functions

Calcpad includes a library with common math functions, ready to use:

- Trigonometric:

> **sin**(*x*) - sine;  
> **cos**(*x*) - cosine;  
> **tan**(*x*) - tangent = **sin**(*x*)/**cos**(*x*), for each *x* ≠ kπ, k=1, 2, 3…;  
> **csc**(*x*) - cosecant = 1/**sin**(*x*), for each *x* ≠ kπ, k=1, 2, 3…;  
> **sec**(*x*) - secant = 1/**cos**(*x*), for each *x* ≠ π/2 + kπ, k=1, 2, 3…;  
> **cot**(*x*) - cotangent = **cos**(*x*)/**sin**(*x*), for each *x* ≠ π/2 + kπ, k=1, 2, 3…;

- Hyperbolic:

> **sinh**(*x*) - hyperbolic sine = (e*x* - e-*x*)/2;  
> **cosh**(*x*) - hyperbolic cosine = (e*x* + e-*x*)/2;  
> **tanh**(*x*) - hyperbolic tangent = (e*x* - e-*x*)/(e*x* + e-*x*);
>
> **csch**(*x*) - hyperbolic cosecant = 1/**sinh**(*x*);  
> **sech**(*x*) - hyperbolic secant = 1/**cosh**(*x*);  
> **coth**(*x*) - hyperbolic cotangent = (e*x* + e-*x*)/(e*x* - e-*x*), for *x* ≠ 0;

- Inverse trigonometric:

> **asin**(*x*) - inverse sine, defined for -1 ≤ *x* ≤ 1;  
> **acos**(*x*) - inverse cosine, defined for -1 ≤ *x* ≤ 1;  
> **atan**(*x*) - inverse tangent;  
> **atan2**(*x*; *y*) - the angle whose tangent is the quotient of *y* and *x*;  
> **acsc**(*x*) - inverse cosecant = **asin**(1/*x*);  
> **asec**(*x*) - inverse secant = **acos**(1/*x*);  
> **acot**(*x*) - inverse cotangent;

- Inverse hyperbolic:

> **asinh**(*x*) - inverse hyperbolic sine = **ln**(*x* + √(*x*2 + 1)), defined for -∞ ≤ *x* ≤ +∞;  
> **acosh**(*x*) - inverse hyperbolic cosine = **ln**(*x* + √(*x* + 1)·√(*x* – 1)), defined for *x* ≥ 1;  
> **atanh**(*x*) - inverse hyperbolic tangent = 1/2·**ln**\[(1 + *x*)/(1 - *x*)\], for -1 \< *x* \< 1;  
> **acsch**(*x*) - inverse hyperbolic cosecant = **atanh**(1/*x*);  
> **asech**(*x*) - inverse hyperbolic secant = **acosh**(1/*x*);  
> **acoth**(*x*) - inverse hyperbolic cotangent = 1/2·**ln**\[(*x* + 1)/(*x* - 1)\], for \|*x*\| \> 1;

- Logarithmic, exponential and roots:

> **log**(*x*) - decimal logarithm (with base 10), for each *x* \> 0;  
> **ln**(*x*) - natural logarithm (with base *e* ≈ 2.7183), for each *x* \> 0;  
> **log_2**(*x*) - binary logarithm (with base 2), for each *x* \> 0;
>
> **exp**(*x*) - exponential function = e*x*;
>
> **sqr**(*x*) or **sqrt**(*x*) - square root (√‾*x*), defined for each *x* ≥ 0;  
> **cbrt**(*x*) - cubic root (3√‾*x*);  
> **root**(*x*; *n*) - n-th root (n√‾*x*);

- Rounding:

> **round**(*x*) - rounds to the nearest integer;  
> **floor**(*x*) - rounds to the smaller integer (towards -∞);  
> **ceiling**(*x*) - rounds to the greater integer (towards +∞);  
> **trunc**(*x*) - rounds to the smaller integer (towards zero);

- Integer:  
  **mod**(*x*; *y*) - the remainder of an integer division;  
  **gcd**(*x*; *y*; *z*…) - the greatest common divisor of several integers;  
  **lcm**(*x*; *y*; *z*…) - the least common multiple of several integers;

- Complex:  
  **re**(a + b*i*) - returns the real part only, **re**(a + b*i*) = a;  
  **im**(a + b*i*) - returns the imaginary part as a real number, **im**(a + b*i*) = b;  
  **abs**(a + b*i*) - complex modulus = **sqrt**(a2 + b2);  
  **phase**(a + b*i*) - complex number phase (argument) = **atan2**(a; b);  
  **conj**(a + b*i*) - complex number conjugate = a - bi.

- Aggregate and interpolation:

> **min**(*A*; $\vec{b}$; *c*…) - the smallest of multiple values;  
> **max**(*A*; $\vec{b}$; *c*…) - the greatest of multiple values;  
> **sum**(*A*; $\vec{b}$; *c*…) - sum of multiple values;  
> **sumsq**(*A*; $\vec{b}$; *c*…) - sum of squares;  
> **srss**(*A*; $\vec{b}$; *c*…) - square root of sum of squares;  
> **average**(*A*; $\vec{b}$; *c*…) - average of multiple values;  
> **product**(*A*; $\vec{b}$; *c*…) - product of multiple values;  
> **mean**(*A*; $\vec{b}$; *c*…) - geometric mean;  
> **take**(*n*; *A*; $\vec{b}$; *c*…) - returns the n-th element from the list;  
> **line**(*x*; *A*; $\vec{b}$; *c*…) - performs linear interpolation among the specified values for *x*;  
> **spline**(*x*; *A*; $\vec{b}$; *c*…) - performs Hermite spline interpolation;

- Conditional and logical:

> **if**(\<*cond*\>; \<*value-if-true*\>; \<*value-if-false*\>) - if the condition *cond* is satisfied, the function returns the first value, otherwise it returns the second value.
The condition is satisfied when it evaluates to any non-zero number;  
> **switch**(\<*cond1*\>; \<*value1*\>; \<*cond2*\>; \<*value2*\>;…; \<*default-value*\>) - returns the value for which the respective condition is satisfied.
Conditions are checked from left to right.
If none is satisfied, it returns the default value in the end;  
> **not**(*x*) - logical "not";  
> **and**(*x*; *y*; *z*…) - logical "and";  
> **or**(*x*; *y*; *z*…) - logical "or";  
> **xor**(*x*; *y*; *z*…) - logical "xor";

- Other:  
  **abs**(*x*) - absolute value (modulus) of a real number \| *x* \|;  
  **sign**(*x*) - sign of a number = -1 if *x* \< 0; 1 if *x* \> 0; 0 if *x* = 0;  
  **random**(*x*) - a random number between 0 and *x*;  
  **getunits**(*x*) - gets the units of x without the value.
Returns 1 if *x* is unitless;  
  **setunits**(*x*; *u*) - sets the units *u* to *x*, where *x* can be scalar, vector or matrix;  
  **clrunits**(*x*) - clears the units from a scalar, vector or matrix *x*;  
  **hp**(*x*) - converts x to its high-performance (hp) equivalent type;  
  **ishp**(*x*) - checks if the type of x is a high-performance (hp) vector or matrix;

- Vector:

  - Creational**:  
    vector**(*n*) - creates an empty vector with length *n*;  
    **vector_hp**(*n*) - creates an empty high performance (hp) vector with length *n*;

> **range**(*x*1; *x*n; *s*) - creates a vector with values spanning from *x*1 to *x*n with step *s*;  
> **range_hp**(*x*1; *x*n; *s*) - creates a high performance (hp) vector from a range of values;

- Structural:

> **len**($\vec{v}$) - returns the length of vector $\vec{v}$;  
> **size**($\vec{v}$) - the actual size of vector $\vec{v}$ (the index of the last non-zero element);  
> **resize**($\vec{v}$; *n*) - sets a new length *n* of vector $\vec{v}$;  
> **fill**($\vec{v}$; *x*) - fills vector $\vec{v}$ with value *x*;  
> **join**(*A*; $\vec{b}$; *c*…) - creates a vector by joining the arguments: matrices, vectors and scalars;  
> **slice**($\vec{v}$; *i*1; *i*2) - returns the part of vector $\vec{v}$, bounded by indexes *i*1 and *i*2, inclusively;  
> **first**($\vec{v}$; *n*) - the first *n* elements of vector $\vec{v}$;  
> **last**($\vec{v}$; *n*) - the last *n* elements of vector $\vec{v}$;  
> **extract**($\vec{v}$; $\vec{i}$) - extracts the elements from $\vec{v}$ which indexes are contained in $\vec{i}$;

- Data:

> **sort**($\vec{v}$) - sorts the elements of vector $\vec{v}$ in ascending order;  
> **rsort**($\vec{v}$) - sorts the elements of vector $\vec{v}$ in descending order;  
> **order**($\vec{v}$) - the indexes of vector $\vec{v}$ by ascending order of its elements;  
> **revorder**($\vec{v}$) - the indexes of vector $\vec{v}$ by descending order of its elements;  
> **reverse**($\vec{v}$) - a vector containing the elements of $\vec{v}$ in reverse order;  
> **count**($\vec{v}$; *x*; *i*) - number of elements of vector $\vec{v}$, after the *i*-th one, that are equal to *x*;  
> **search**($\vec{v}$; *x*; *i*) - the index of the first element in $\vec{v}$, after the *i*-th one, that is equal to *x*;  
> **find**($\vec{v}$; *x*; *i*) or  
> **find_eq**($\vec{v}$; *x*; *i*) - the indexes of all elements in $\vec{v}$, after the *i*-th one that are = *x*;  
> **find_ne**($\vec{v}$; *x*; *i*) - the indexes of all elements in $\vec{v}$, after the *i*-th one that are ≠ *x*;  
> **find_lt**($\vec{v}$; *x*; *i*) - the indexes of all elements in $\vec{v}$, after the *i*-th one that are \< *x*;  
> **find_le**($\vec{v}$; *x*; *i*) - the indexes of all elements in $\vec{v}$, after the *i*-th one that are ≤ *x*;  
> **find_gt**($\vec{v}$; *x*; *i*) - the indexes of all elements in $\vec{v}$, after the *i*-th one that are \> *x*;  
> **find_ge**($\vec{v}$; *x*; *i*) - the indexes of all elements in $\vec{v}$, after the *i*-th one that are ≥ *x*;
>
> **lookup**($\vec{a}$; $\vec{b}$; *x*) or  
> **lookup_eq**($\vec{a}$; $\vec{b}$; *x*) - all elements in $\vec{a}$ for which the respective elements in $\vec{b}$ are = *x*;  
> **lookup_ne**($\vec{a}$; $\vec{b}$; *x*) - all elements in $\vec{a}$ for which the respective elements in $\vec{b}$ are ≠ *x*;  
> **lookup_lt**($\vec{a}$; $\vec{b}$; *x*) - all elements in $\vec{a}$ for which the respective elements in $\vec{b}$ are \< *x*;  
> **lookup_le**($\vec{a}$; $\vec{b}$; *x*) - all elements in $\vec{a}$ for which the respective elements in $\vec{b}$ are ≤ *x*;  
> **lookup_gt**($\vec{a}$; $\vec{b}$; *x*) - all elements in $\vec{a}$ for which the respective elements in $\vec{b}$ are \> *x*;  
> **lookup_ge**($\vec{a}$; $\vec{b}$; *x*) - all elements in $\vec{a}$ for which the respective elements in $\vec{b}$ are ≥ *x*;

- Math:  
  **norm_1**($\vec{v}$) - L1 (Manhattan) norm of vector $\vec{v}$;  
  **norm**($\vec{v}$) or **norm_2**($\vec{v}$) or **norm_e**($\vec{v}$) - L2 (Euclidean) norm of vector $\vec{v}$;  
  **norm_p**($\vec{v}$; *p*) - Lp norm of vector $\vec{v}$;  
  **norm_i**($\vec{v}$) - L∞ (infinity) norm of vector *⃗v*;

> **unit**($\vec{v}$) - the normalized vector $\vec{v}$ (with L2 norm = 1);
>
> **dot**($\vec{a}$; $\vec{b}$) - scalar product of two vectors $\vec{a}$ and $\vec{b}$;
>
> **cross**($\vec{a}$; $\vec{b}$) - cross product of two vectors $\vec{a}$ and $\vec{b}$ (with length 2 or 3);

- Matrix:

  - Creational**:  
    matrix**(*m*; *n*) - creates an empty matrix with dimensions *m*⨯*n*;  
    **identity**(*n*) - creates an identity matrix with dimensions *n*⨯*n*;  
    **diagonal**(*n*; *d*) - creates a diagonal *n*⨯*n* matrix and fills the diagonal with value *d*;  
    **column**(*m*; *c*) - creates a column matrix with dimensions *m*⨯1, filled with value *c*;  
    **utriang**(*n*) - creates an upper triangular matrix with dimensions *n*⨯*n*;  
    **ltriang**(*n*) - creates a lower triangular matrix with dimensions *n*⨯*n*;  
    **symmetric**(*n*) - creates a symmetric matrix with dimensions *n*⨯*n*;  
    **matrix_hp**(*m*; *n*) - creates a high-performance empty matrix with dimensions *m*⨯*n*;  
    **identity_hp**(*n*) - creates a high-performance identity matrix with dimensions *n*⨯*n*;  
    **diagonal_hp**(*n*; *d*) - creates a *n*⨯*n* high-performance diagonal matrix filled with value *d*;  
    **column_hp**(*m*; *c*) - creates a *m*⨯1 high-performance column matrix filled with value *c*;  
    **utriang_hp**(*n*) - creates a *n*⨯*n* high-performance upper triangular matrix;  
    **ltriang_hp**(*n*) - creates a *n*⨯*n* high-performance lower triangular matrix;  
    **symmetric_hp**(*n*) - creates a *n*⨯*n* high-performance symmetric matrix;

> **vec2diag**($\vec{v}$) - creates a diagonal matrix from the elements of vector $\vec{v}$;  
> **vec2row**($\vec{v}$) - creates a row matrix from the elements of vector $\vec{v}$;  
> **vec2col**($\vec{v}$) - creates a column matrix from the elements of vector $\vec{v}$;  
> **join_cols**($\vec{c}_{1}$; $\vec{c}_{2}$; $\vec{c}_{3}$ ...) - creates a new matrix by joining column vectors;  
> **join_rows**($\vec{r}_{1}$; $\vec{r}_{2}$; $\vec{r}_{3}$ ...) - creates a new matrix by joining row vectors;
>
> **augment**(*A*; *B*; *C* ...) - creates a new matrix by appending matrices *A*; *B*; *C* side by side;  
> **stack**(*A*; *B*; *C* ...) - creates a new matrix by stacking matrices *A*; *B*; *C* one below the other;

- Structural**:  
  n_rows**(*M*) - number of rows in matrix *M*;  
  **n_cols**(*M*) - number of columns in matrix *M*;  
  **mresize**(*M*; *m*; *n*) - sets new dimensions *m* and *n* for matrix *M*;  
  **mfill**(*M*; *x*) - fills matrix *M* with value *x*;  
  **fill_row**(*M*; *i*; *x*) - fills the *i*-th row of matrix *M* with value *x*;  
  **fill_col**(*M*; *j*; *x*) - fills the *j*-th column of matrix *M* with value *x*;  
  **copy**(*A*; *B*; *i*; *j*) - copies all elements from *A* to *B*, starting from indexes *i* and *j* of *B*;  
  **add**(*A*; *B*; *i*; *j*) - adds all elements from *A* to *B*, starting from indexes *i* and *j* of *B*;  
  **row**(*M*; *i*) - extracts the *i*-th row of matrix *M* as a vector;  
  **col**(*M*; *j*) - extracts the *j*-th column of matrix *M* as a vector;  
  **extract_rows**(*M*; *i*) - extracts the rows from matrix *M* whose indexes  
  are contained in vector *i*;  
  **extract_cols**(*M*; *j*) - extracts the columns from matrix *M* whose indexes  
  are contained in vector *j*;  
  **diag2vec**($\vec{v}$) - extracts the diagonal elements of matrix *M* to a vector;

> **submatrix**(*M*; *i*1; *i*2; *j*1; *j*2) - extracts a submatrix of *M*, bounded by  
> rows *i*1 and *i*2 and columns *j*1 and *j*2, incl.;

- Data**:**

> **sort_cols**(*M*; *i*) - sorts the columns of *M* based on the values in row *i*  
> in ascending order;  
> **rsort_cols**(*M*; *i*) - sorts the columns of *M* based on the values in row *i*  
> in descending order;  
> **sort_rows**(*M*; *j*) - sorts the rows of *M* based on the values in column *j*  
> in ascending order;  
> **rsort_rows**(*M*; *j*) - sorts the rows of *M* based on the values in column *j*  
> in descending order;  
> **order_cols**(*M*; *i*) - the indexes of the columns of *M* based on the ordering  
> of the values from row *i* in ascending order;  
> **revorder_cols**(*M*; *i*) - the indexes of the columns of *M* based on the ordering  
> of the values from row *i* in descending order;  
> **order_rows**(*M*; *j*) - the indexes of the rows of *M* based on the ordering  
> of the values in column *j* in ascending order;  
> **revorder_rows**(*M*; *j*) - the indexes of the rows of *M* based on the ordering  
> of the values in column *j* in descending order;  
> **mcount**(*M*; *x*) - number of occurrences of value *x* in matrix *M*;  
> **msearch**(*M*; *x*; *i*; *j*) - vector with the two indexes of the first occurrence  
> of *x* in matrix *M*, starting from indexes *i* and *j*;  
> **mfind**(*M*; *x*) or  
> **mfind_eq**(*M*; *x*) - the indexes of all elements in *M* equal to *x*;  
> **mfind_ne**(*M*; *x*) - the indexes of all elements in *M* not equal to *x*;  
> **mfind_lt**(*M*; *x*) - the indexes of all elements in *M* less than *x*;  
> **mfind_le**(*M*; *x*) - the indexes of all elements in *M* less than or equal to *x*;  
> **mfind_gt**(*M*; *x*) - the indexes of all elements in *M* greater than *x*;  
> **mfind_ge**(*M*; *x*) - the indexes of all elements in *M* greater than or equal to *x*;
>
> **hlookup**(*M*; *x*; *i*1; *i*2) or  
> **hlookup_eq**(*M*; *x*; *i*1; *i*2) - the values from row *i*2 of *M*, for which the elements in  
> row *i*1 are equal to *x*;  
> **hlookup_ne**(*M*; *x*; *i*1; *i*2) - the values from row *i*2 of *M*, for which the elements in  
> row *i*1 are not equal to *x*;  
> **hlookup_lt**(*M*; *x*; *i*1; *i*2) - the values from row *i*2 of *M*, for which the elements in  
> row *i*1 are less than *x*;  
> **hlookup_le**(*M*; *x*; *i*1; *i*2) - the values from row *i*2 of *M*, for which the elements in  
> row *i*1 are less than or equal to *x*;  
> **hlookup_gt**(*M*; *x*; *i*1; *i*2) - the values from row *i*2 of *M*, for which the elements in  
> row *i*1 are greater than *x*;  
> **hlookup_ge**(*M*; *x*; *i*1; *i*2) - the values from row *i*2 of *M*, for which the elements in  
> row *i*1 are greater than or equal to *x*;  
> **vlookup**(*M*; *x*; *j*1; *j*2) or  
> **vlookup_eq**(*M*; *x*; *j*1; *j*2) - the values from column *j*2 of *M*, for which the elements in column *j*1 are equal to *x*;  
> **vlookup_ne**(*M*; *x*; *j*1; *j*2) - the values from column *j*2 of *M*, for which the elements in column *j*1 are not equal to *x*;  
> **vlookup_lt**(*M*; *x*; *j*1; *j*2) - the values from column *j*2 of *M*, for which the elements in column *j*1 are less than *x*;  
> **vlookup_le**(*M*; *x*; *j*1; *j*2) - the values from column *j*2 of *M*, for which the elements in column *j*1 are less than or equal to *x*;  
> **vlookup_gt**(*M*; *x*; *j*1; *j*2) - the values from column *j*2 of *M*, for which the elements in column *j*1 are greater than *x*;  
> **vlookup_ge**(*M*; *x*; *j*1; *j*2) - the values from column *j*2 of *M*, for which the elements in column *j*1 are greater than or equal to *x*;

- Math**:**

> **hprod**(*A*; *B*) - Hadamard product of matrices *A* and *B*;  
> **fprod**(*A*; *B*) - Frobenius product of matrices *A* and *B*;  
> **kprod**(*A*; *B*) - Kronecker product of matrices *A* and *B*;  
> **mnorm_1**(*M*) - L<sub>1</sub> norm of matrix *M*;  
> **mnorm**(*M*) or **mnorm_2**(*M*) - L<sub>2</sub> norm of matrix *M*;  
> **mnorm_e**(*M*) - Frobenius norm of matrix *M*;  
> **mnorm_i**(*M*) - L<sub>∞</sub> norm of matrix *M*;  
> **cond_1**(*M*) - condition number of *M* based on the L<sub>1</sub> norm;  
> **cond**(*M*) or **cond_2**(*M*) - condition number of *M* based on the L<sub>2</sub> norm;  
> **cond_e**(*M*) - condition number of *M* based on the Frobenius norm;  
> **cond_i**(*M*) - condition number of *M* based on the L∞ norm;  
> **det**(*M*) - determinant of matrix *M*;  
> **rank**(*M*) - rank of matrix *M*;  
> **trace**(*M*) - trace of matrix *M*;  
> **transp**(*M*) - transpose of matrix *M*;  
> **adj**(*M*) - adjugate of matrix *M*;  
> **cofactor**(*M*) - cofactor matrix of *M*;  
> **eigenvals**(*M*; *n*<sub>e</sub>) - the first *n*<sub>e</sub> eigenvalues of matrix *M* (or all if omitted);  
> **eigenvecs**(*M*; *n*<sub>e</sub>) - the first *n*<sub>e</sub> eigenvectors of matrix *M* (or all if omitted);  
> **eigen**(*M*; *n*<sub>e</sub>) - the first *n*<sub>e</sub> eigenvalues and eigenvectors of matrix *M* (or all if omitted) ;  
> **cholesky**(*M*) - Cholesky decomposition of a symmetric, positive-definite matrix *M*;  
> **lu**(*M*) - LU decomposition of matrix *M*;  
> **qr**(*M*) - QR decomposition of matrix *M*;  
> **svd**(*M*) - singular value decomposition of *M*;  
> **inverse**(*M*) - inverse of matrix *M*;
>
> **lsolve**(*A*; *b⃗* ) - solves the system of linear equations *Ax* ⃗ = *b⃗* using LDL<sup>T</sup> decomposition for symmetric matrices, and LU for non-symmetric;  
> **clsolve**(*A*; *b⃗* ) - solves the linear matrix equation *Ax* ⃗ = *b⃗* with symmetric, positive-definite coefficient matrix *A* using Cholesky decomposition;  
> **slsolve**(*A*; *b⃗* ) - solves the linear matrix equation *Ax* ⃗ = *b⃗* with high-performance symmetric, positive-definite matrix *A* using preconditioned conjugate gradient (PCG) method;
>
> **msolve**(*A*; *B*) - solves the generalized matrix equation *AX* = *B* using LDL<sup>T</sup> decomposition for symmetric matrices, and LU for non-symmetric;  
> **cmsolve**(*A*; *B*) - solves the generalized matrix equation *AX* = *B* with symmetric, positive-definite coefficient matrix *A* using Cholesky decomposition;  
> **smsolve**(*A*; *B*) - solves the generalized matrix equation *AX* = *B* with high-performance symmetric, positive-definite matrix *A* using preconditioned conjugate gradient (PCG) method;  
> **matmul**(*A*; *B*) - fast multiplication of square hp matrices using parallel Winograd  
> algorithm.
The multiplication operator *A*\**B* uses it internally for all  
> square hp matrices of size 10 and larger;  
> **fft**(*M*) - performs fast Fourier transform of row-major matrix *M*. It must have one row for real data and two rows for complex;  
> **ift**(*M*) - performs inverse Fourier transform of row-major matrix *M*.  
> It must have one row for real data and two rows for complex;

- Double interpolation**:**

> **take**(*x*; *y*; *M*) - returns the element of matrix *M* at indexes *x* and *y*;  
> **line**(*x*; *y*; *M*) - double linear interpolation from the elements of matrix *M* based on the values of *x* and *y*;  
> **spline**(*x*; *y*; *M*) - double Hermite spline interpolation from the elements of matrix *M* based on the values of *x* and *y*.

Arguments must be enclosed by round brackets.
They can be constants, variables or any valid expression.
Multiple arguments must be separated by semicolons ";". When arguments are out of range, the function returns "Undefined". Exceptions from this rule are "**cot**(0)" and "**coth**(0)", which return "+∞".

Arguments of trigonometric functions can be in **degrees**, **radians** or **grades**. The units for angles can be specified in three different ways:

> 1\. By the radio buttons above the output window (🔘**D**, 🔘**R**, 🔘**G**).
>
> 2\. By compiler switches inside the code.
You have to insert a separate line containing: \#deg for degrees, \#rad for radians or \#gra for grades.
This will affect all expressions after the current line to the end or until an alternative directive is found.
>
> 3\. By attaching native units to the value itself: *deg*, *°*, ′, ″, *rad*, *grad*, *rev* (see the “Units” section, further in this manual).

Native units are of highest priority, followed by compiler switches in source code.
Both override radio buttons settings, which are of lowest priority.

All functions are also defined in the complex domain, except for **mod**(*x*; *y*), **gcd**(*x*; *y*), **lcm**(*x*; *y*), **min**(*x*; *y*) and **max**(*x*; *y*).

Logical functions accept numerical values and return “**0**” for “**false**” and “**1**” for “**true**”. The results for two arguments (one for “**not**”) are presented in the following tables:

<table style="width:97%;">
<colgroup>
<col style="width: 18%" />
<col style="width: 27%" />
<col style="width: 25%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr>
<td><table style="width:15%;">
<colgroup>
<col style="width: 5%" />
<col style="width: 8%" />
</colgroup>
<tbody>
<tr>
<td>x</td>
<td>not(x)</td>
</tr>
<tr>
<td style="text-align: center;">0</td>
<td style="text-align: center;">1</td>
</tr>
<tr>
<td style="text-align: center;">1</td>
<td style="text-align: center;">0</td>
</tr>
</tbody>
</table></td>
<td><table style="width:23%;">
<colgroup>
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 11%" />
</colgroup>
<tbody>
<tr>
<td>x</td>
<td>y</td>
<td>and(x; y)</td>
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
<td><table style="width:22%;">
<colgroup>
<col style="width: 6%" />
<col style="width: 5%" />
<col style="width: 9%" />
</colgroup>
<tbody>
<tr>
<td>x</td>
<td>y</td>
<td>or(x; y)</td>
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
<td><table style="width:23%;">
<colgroup>
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 11%" />
</colgroup>
<tbody>
<tr>
<td>x</td>
<td>y</td>
<td>xor(x; y)</td>
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

Any numerical value, different from 0, is treated as 1 (true). Multiple arguments are evaluated sequentially from left to right, according to the above tables.
We start with the first and the second.
Then, the obtained result and the next value are evaluated in turn, and so on.

Rounding of midpoint values with **round**() evaluates to the nearest integer away from zero.
The **floor**() function rounds to the smaller value (towards -∞). The **ceiling**() function rounds in the opposite direction to the larger value (towards +∞). Unlike **floor**(), **trunc**() rounds towards zero, which is equivalent to simply truncating the fractional part.
Some examples for rounding of negative and positive numbers are provided in the table below:

<table style="width:70%;">
<colgroup>
<col style="width: 37%" />
<col style="width: 33%" />
</colgroup>
<tbody>
<tr>
<td><p><strong>Positive</strong></p>
<table style="width:33%;">
<colgroup>
<col style="width: 12%" />
<col style="width: 10%" />
<col style="width: 9%" />
</colgroup>
<tbody>
<tr>
<td>Function</td>
<td>x</td>
<td>Result</td>
</tr>
<tr>
<td>round(x)</td>
<td style="text-align: right;">4.5</td>
<td style="text-align: right;">5</td>
</tr>
<tr>
<td>floor(x)</td>
<td style="text-align: right;">4.8</td>
<td style="text-align: right;">4</td>
</tr>
<tr>
<td>ceiling(x)</td>
<td style="text-align: right;">4.2</td>
<td style="text-align: right;">5</td>
</tr>
<tr>
<td>trunc(x)</td>
<td style="text-align: right;">4.8</td>
<td style="text-align: right;">4</td>
</tr>
</tbody>
</table></td>
<td><p><strong>Negative</strong></p>
<table style="width:32%;">
<colgroup>
<col style="width: 11%" />
<col style="width: 10%" />
<col style="width: 10%" />
</colgroup>
<tbody>
<tr>
<td>Function</td>
<td>x</td>
<td>Result</td>
</tr>
<tr>
<td>round(x)</td>
<td style="text-align: right;">-4.5</td>
<td style="text-align: right;">-5</td>
</tr>
<tr>
<td>floor(x)</td>
<td style="text-align: right;">-4.8</td>
<td style="text-align: right;">-5</td>
</tr>
<tr>
<td>ceiling(x)</td>
<td style="text-align: right;">-4.2</td>
<td style="text-align: right;">-4</td>
</tr>
<tr>
<td>trunc(x)</td>
<td style="text-align: right;">-4.8</td>
<td style="text-align: right;">-4</td>
</tr>
</tbody>
</table></td>
</tr>
</tbody>
</table>

Rounding of complex numbers affects both real and imaginary parts.

## Custom (user defined) functions

You can define your own functions and use them further in the calculations.
Custom functions can have unlimited number of parameters.
They are specified after the function name, enclosed in brackets "(" … ")" and separated by semicolons ";". Each function is defined, using the following format: "**f** ( *x*; *y*; *z*; … ) = **expression**", where "**f**" is the function name and "**x**", "**y**" and "**z**" are function parameters.
On the right side you can have any valid expression including constants, operators, variables and even other functions, e.g.:

> **f**(*x*) = *x*^2 + 2\*x\***sin**(*x*)  
> **g**(*x*; *y*) = **f**(*x*)/(*y* - 4)

Once defined, you can use a function in any expression by inserting a function call.
Just write the function name and then specify the arguments in brackets, e. g. *b* = **g**(*a* + 2; 3) + 3. Function names must conform to the same rules as variable names.
Arguments can be any valid expressions.
You have to provide as many arguments as the number of function parameters.
The life cycle of a function is from the place of definition to the end of the code.
If you define a new function with the same name, the old one will be replaced.
You cannot redefine a library function.
For example, **sin**(*x*) = *x*^2 will return an error.

It is not necessary to pre-define the variables that are used for parameters.
However, if other variables are used inside the function body, they must be defined before the first call to the function.
Parameters work as local level variables inside the function body.
If a variable with the same name exists outside the function, a call to that function will not rewrite the value of the global variable.
For example:

> If you have a variable "*x* = 4" and a function "**f**(*x*) = *x*2".
>
> When you call "**f**(2)", it will evaluate to *x*2 = 22 = 4, because local *x* = 2
>
> If you call "*x*2" after that, it will return *x*2 = 42 = 16, because global *x* remains 4.

User defined functions support both real and complex numbers.
