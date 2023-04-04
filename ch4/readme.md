# Chapter 4 Making Lists

## Questions

Check answers in answers.ml

1. Write a function `evens` which does the opposite to `odds`, returning the even numbered elements in a list. For example, `evens [2; 4; 2; 4; 2]` should return `[4; 4]`. What is the type of your function.

2. Write a function `count_true` which counts the number of `true` elements in a list. For example, `count_true [true; false; true]` should return `2`. What it the type of your function? Can you write a tail recursive version?

3. Write a function which, given a list, builds a palindrome from it. A palindrome is a list which equals its own reverse. You can assume the exstence of `rev` and `@`. Write another function which determines if a list is a palindrome.

4. Write a function `drop_last` which returns all but the last element of a list. If the list is empty, is should return the empty list. So, for example, `drop_last [1; 2; 4; 8]` should return `[1; 2; 4]`. What about a tail recursive version?

5. Write a function `member` of type `a' -> a' list -> bool` which returns `true` if an element exists in a list, of `false` if not. For example, `member 2 [1; 2; 3]` should evaluate to `true`, but `member 3 [1; 2]` should evaluate to `false`.

6. Use your `member` function to write a function `make_set` which, given a list, returns a list which contains all the elements of the original list, but has no duplicate elements. For example, `make_set [1; 2; 3; 3; 1]` might return `[2; 3; 1]`. What is the type of your function?

7. Can you explain why the `rev` function we defined is inefficient? How does the time it takes to run relate to the size of its argument? Can you write a more efficient version using an accumulating argument? What is its efficiency in terms of time taken and space used?

Because rev you defined will take space proportional to the length of the list.