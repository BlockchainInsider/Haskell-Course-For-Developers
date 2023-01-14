module Exercise08 where


-- Exercise 8.1
-----------------------------------------------------------------------------------------------------------
{- 
In this task, you need to write a function "each" that takes 
an integer number n and an input list of integers (possibly empty) and returns a list of n-th elements 
of the source list or an empty list. The first element of the list has the number 1. 
See examples for details.

Examples
each 0 [1,2,3,4,5,6] = []  
each 1 [1,2,3,4,5,6] = [1,2,3,4,5,6]  
each (-1) [1,2,3,4,5,6] = [6,5,4,3,2,1]  
each 2 [1,2,3,4,5,6] = [2,4,6]  
each (-2) [1,2,3,4,5,6] = [5,3,1]  
each 3 [1,2] = []  
each (-3) [1,2] = []  
each 5 [1,2,3,4,5,6,7] = [5]  
each (-5) [1,2,3,4,5,6,7] = [3]  
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.2
-----------------------------------------------------------------------------------------------------------
{- 
Let be n an integer prime with 10 e.g. 7.

1/7 = 0.142857 142857 142857 ....

We see that the decimal part has a cycle: 142857. 
The length of this cycle is 6. In the same way:

1/11 = 0.09 09 09 .... Cycle length is 2.

Task
Given an integer n (n > 1) the function cycle(n) returns the length of the cycle 
if there is one otherwise (n and 10 not coprimes) return -1.

Examples:
cycle(5) = -1
cycle(13) = 6 -> 0.076923 076923 0769
cycle(21) = 6 -> 0.047619 047619 0476
cycle(27) = 3 -> 0.037 037 037 037 0370
cycle(33) = 2 -> 0.03 03 03 03 03 03 03 03
cycle(37) = 3 -> 0.027 027 027 027 027 0
cycle(94) = -1 
Notes
-

cycle(22) = -1 since 1/22 ~ 0.0 45 45 45 45 ...
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.3
-----------------------------------------------------------------------------------------------------------
{-
you will be given two integers n and k and your task is to remove k-digits 
from n and return the lowest number possible, without changing the order of the digits in n. 
Return the result as a string.

Let's take an example of solve(123056,4). 
We need to remove 4 digits from 123056 and return the lowest possible number. 
The best digits to remove are (1,2,3,6) so that the remaining digits are '05'. 
Therefore, solve(123056,4) = '05'.

Note also that the order of the numbers in n does not change: 
solve(1284569,2) = '12456', because we have removed 8 and 9.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.4
-----------------------------------------------------------------------------------------------------------
{- 
we are going to see how a Hash (or Map or dict) can be used to keep track of characters in a string.

Consider two strings "aabcdefg" and "fbd". 
How many characters do we have to remove from the first string to get the second string? 
Although not the only way to solve this, we could create a Hash of counts for each string 
and see which character counts are different. That should get us close to the answer. 
I will leave the rest to you.

For this example, solve("aabcdefg","fbd") = 5. 
Also, solve("xyz","yxxz") = 0, 
because we cannot get second string from the first since the second string is longer.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.5
-----------------------------------------------------------------------------------------------------------
{- 
you're expected to sort an array of 32-bit integers in ascending order of the number of on bits they have.

E.g Given the array [7, 6, 15, 8]

7 has 3 on bits (000...0111)
6 has 2 on bits (000...0011)
15 has 4 on bits (000...1111)
8 has 1 on bit (000...1000)
So the array in sorted order would be [8, 6, 7, 15].

In cases where two numbers have the same number of bits, compare their real values instead.

E.g between 10 (...1010) and 12 (...1100), 
they both have the same number of on bits '2' 
but the integer 10 is less than 12 so it comes first in sorted order.

Your task is to write the function sortBybit() 
that takes an array of integers and sort them as described above.

Example:

[3, 8, 3, 6, 5, 7, 9, 1]   =>    [1, 8, 3, 3, 5, 6, 9, 7]
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.6
-----------------------------------------------------------------------------------------------------------
{- 
Consider an array that has no prime numbers, and none of its elements has any prime digit. 
It would start with: [1,4,6,8,9,10,14,16,18,40,44..].

12 and 15 are not in the list because 2 and 5 are primes.

You will be given an integer n and your task will be return the number at that index in the array. 
For example:

solve(0) = 1
solve(2) = 6
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.7
-----------------------------------------------------------------------------------------------------------
{-
Consider the numbers 6969 and 9116. When you rotate them 180 degrees (upside down), 
these numbers remain the same. To clarify, 
if we write them down on a paper and turn the paper upside down, the numbers will be the same. 
Try it and see! Some numbers such as 2 or 5 don't yield numbers when rotated.

Given a range, return the count of upside down numbers within that range. 
For example, solve(0,10) = 3, because there are only 3 upside down numbers >= 0 and < 10. They are 0, 1, 8.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.8
-----------------------------------------------------------------------------------------------------------
{- 
you will be given an integer array 
and your task is to return the sum of elements occupying prime-numbered indices.

The first element of the array is at index 0.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.9
-----------------------------------------------------------------------------------------------------------
{- 
you will implement a function count that takes an integer and returns the number of digits in factorial(n).

For example, count(5) = 3, because 5! = 120, and 120 has 3 digits.

More examples in the test cases.

Brute force is not possible. A little research will go a long way, as this is a well known series.

Good luck!
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.10
-----------------------------------------------------------------------------------------------------------
{- 
Consider the array [3,6,9,12]. 
If we generate all the combinations with repetition that sum to 12, we get 5 combinations: 
[12], [6,6], [3,9], [3,3,6], [3,3,3,3]. 
The length of the sub-arrays (such as [3,3,3,3] 
should be less than or equal to the length of the initial array ([3,6,9,12]).

Given an array of positive integers and a number n, 
count all combinations with repetition of integers that sum to n. For example:

find([3,6,9,12],12) = 5.
More examples in the test cases.

Good luck!
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.11
-----------------------------------------------------------------------------------------------------------
{- 
Four-digit palindromes start with [1001,1111,1221,1331,1441,1551,1551,...] 
and the number at position 2 is 1111.

You will be given two numbers a and b. 
Your task is to return the a-digit palindrome at position b 
if the palindromes were arranged in increasing order.

Therefore, palin(4,2) = 1111, because that is the second element of the 4-digit palindrome series.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.12
-----------------------------------------------------------------------------------------------------------
{- 
you will be given an array of strings and your task is to remove all consecutive duplicate letters 
from each string in the array.

For example:

dup(["abracadabra","allottee","assessee"]) = ["abracadabra","alote","asese"].

dup(["kelless","keenness"]) = ["keles","kenes"].

Strings will be lowercase only, no spaces. See test cases for more examples.

Good luck!
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.13
-----------------------------------------------------------------------------------------------------------
{- 
you will be given two numbers, a and b, 
and your task is to determine if the first number a is divisible by all the prime factors of the second number b. 
For example: solve(15,12) = False because 15 is not divisible by all the prime factors of 12 (which include2).
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.14
-----------------------------------------------------------------------------------------------------------
{- 
you will be given an array of numbers and a number n, 
and your task will be to determine if any array elements, 
when summed (or taken individually), are divisible by n.

For example:

solve([1,3,4,7,6],9) == true, because 3 + 6 is divisible by 9
solve([1,2,3,4,5],10) == true for similar reasons.
solve([8,5,3,9],7) == true, because 7 evenly divides 5 + 9
but solve([8,5,3],7) == false.
All numbers in the array will be greater than 0.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.15
-----------------------------------------------------------------------------------------------------------
{- 
you will be given an array of arrays 
and your task will be to return the number of unique arrays 
that can be formed by picking exactly one element from each subarray.

For example: solve([[1,2],[4],[5,6]]) = 4, 
because it results in only 4 possibilites. They are [1,4,5],[1,4,6],[2,4,5],[2,4,6].

Make sure that you don't count duplicates; 
for example solve([[1,2],[4,4],[5,6,6]]) = 4, since the extra outcomes are just duplicates.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.16
-----------------------------------------------------------------------------------------------------------
{- 
you'll be given a number n >= 2 and output a list with all positive integers less than gcd(n, k) == 1, 
with k being any of the output numbers.

The list cannot include duplicated entries and has to be sorted.

Examples
2 -> [1]
3 -> [1, 2]
6 -> [1, 5]
10 -> [1, 3, 7, 9]
20 -> [1, 3, 7, 9, 11, 13, 17, 19]
25 -> [1, 2, 3, 4, 6, 7, 8, 9, 11, 12, 13, 14, 16, 17, 18, 19, 21, 22, 23, 24]
30 -> [1, 7, 11, 13, 17, 19, 23, 29]
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.17
-----------------------------------------------------------------------------------------------------------
{- 
you'll be given a function representing an equation, 
and you'll have to determine the type and parameters of said equation. 
All equations will be in one of the following forms:

Constant: f(x) = c
Linear: f(x) = bx + c
Quadratic: f(x) = ax² + bx + c
And your solution will have to return an object of the following form:

discover ( \ x -> 3 ) -> Constant 3
discover ( \ x -> 10 * x ) -> Linear 10 0
discover ( \ x -> 5 * x * x + 3 * x + 1 ) -> Quadratic 5 3 1
The result type is Preloaded as Equation.

For your convenience, all parameters are guaranteed to be integers, 
although they won't necessarily be positive.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.18
-----------------------------------------------------------------------------------------------------------
{- 
Create a function eqAll that determines if all elements of a list are equal.
list can be any Foldable structure, of any Eq instance, and may be infinite. Return value is a Bool.

Examples
eqAll "aaa" -> True
eqAll "abc" -> False
eqAll ""    -> True

eqAll [0,0,0] -> True
eqAll [0,1,2] -> False
eqAll []      -> True

eqAll Nothing  -> True
eqAll (Just 0) -> True
Notes
For the function result to be True, the Foldable must be finite; False, 
however, can result from an element finitely far from the left end. 
There will be no tests with infinite series of equal elements.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.19
-----------------------------------------------------------------------------------------------------------
{- 
Two strings a and b are called isomorphic 
if there is a one to one mapping possible for every character of a to every character of b. 
And all occurrences of every character in a map to same character in b.

Task
In this kata you will create a function that return True if two given strings are isomorphic to each other, 
and False otherwise. Remember that order is important.

Your solution must be able to handle words with more than 10 characters.

Example
True:

CBAABC DEFFED
XXX YYY
RAMBUNCTIOUSLY THERMODYNAMICS
False:

AB CC
XXY XYY
ABAB CD
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 8.20
-----------------------------------------------------------------------------------------------------------
{- 
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"





