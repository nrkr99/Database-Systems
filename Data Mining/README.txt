HW 4

Question 1

Linear Regression Equation:

medv =

     -0.1084 * CRIM     +
      0.0458 * ZN 	+
      2.7187 * CHAS=1 	+
    -17.376  * NOX 	+
      3.8016 * RM 	+
     -1.4927 * DIS 	+
      0.2996 * RAD 	+
     -0.0118 * TAX 	+
     -0.9465 * PTRATIO  +
      0.0093 * B 	+
     -0.5226 * LSTAT 	+
     36.3411

Here there are 12 terms in the Linear regression equation, out of which 11 are the variables * their respective coefficients and intercept is the last term.

Though there were 14 variables, the equation has only 11 features because the features that were excluded (INDUS, AGE, CHAS=0) were the ones which did not effect the average prediction error value. The model is built on all the descriptors initially but, the descriptors with relatively low standardized regression coefficients are removed as they contribute to no improvement in the error value.



Question 2

Linear Regression Equation:

num_rings =
	sex=I          * -0.825  +
	sex=M          * 0.058   +
	length         * -0.458  +
	diameter       * 11.075  +
	height         * 10.762  + 
	whole_weight   * 8.975   +
	shucked_weight * -19.787 +
	viscera_weight * -10.582 +
	shell_weight   * 8.742   +
	3.895



Question 3

Linear Regression Equation:

num_rings = 

	length		*	-11.933 +
	diameter	*	25.766  +
	height		*	20.358  +
	2.836






