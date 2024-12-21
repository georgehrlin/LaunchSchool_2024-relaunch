# Variables as Pointers
Variables act as pointers to an address space in physical memory. Which means they don't actually contain the value. Instead, a variable contains a pointer to a specific physical space in memory that contains the value.

When we use variables to pass arguments to a method, we are essentially assigning the value of the original variable to a variable inside the method. Inside the method, the operations we perform on the variable inside the method determine whether the value of the original variable will change.

The value of the original variable will only change if the operations inside the method are destructive/mutating.
