module Exercise03 where


-- Exercise 3.1
-----------------------------------------------------------------------------------------------------------
{- 
You are given a positive integer (n), and your task is to find the largest number less than n, 
which can be written in the form a**b, 
where a can be any non-negative integer and b is an integer greater than or equal to 2. 
Try not to make the code time out :)

The input range is from 1 to 1,000,000.

Return
Return your answer in the form (x, y) or ([x, y], depending on the language ), 
where x is the value of a**b, and y is the number of occurrences of a**b. 
By the way ** means ^ or power, so 2 ** 4 = 16. 
If you are given a number less than or equal to 4, that is not 1, return (1, -1), 
because there is an infinite number of values for it: 1**2, 1**3, 1**4, ....
If you are given 1, return (0, -1).

Examples
 3  -->  (1, -1)  # because it's less than 4
 6  -->  (4, 1)   # because the largest such number below 6 is 4,
                  # and there is only one way to write it: 2**2
65  -->  (64, 3)  # because there are three occurrences of 64: 2**6, 4**3, 8**2
90  -->  (81, 2)  # because the largest such number below 90 is 81,
                  # and there are two ways of getting it: 3**4, 9**2
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.2
-----------------------------------------------------------------------------------------------------------
{- 
Your task is to write a function calculate, 
which accepts a string with a mathematical exprssion written in prefix Polish notation and evaluates it. 
This means that all operations are placed before their operands. 
For example, the expression 3 + 5 is written in Polish notation as + 3 5, and (3 + 5) / (2 * 2) is / + 3 5 * 2 2.

The only valid operations are +, -, * and /. The input string is guaranteed to be a valid expression.

You can use eval or alternative if available in your language, but it is in no way needed for an idiomatic solution.

Examples
calculate('123.456')       == 123.456
calculate('+ -5 5')        == 0
calculate('* + 2 2 3')     == 12
calculate('/ + 3 5 * 2 2') == 2
Input
A non-empty string consisting of numbers and arithmetic operators separated by spaces. 
This string is a valid arithmetic expression written in prefix polish notation.

Output
A number, result of evaluating the expression.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.3
-----------------------------------------------------------------------------------------------------------
{-
The task of this kata is to take an exponential-Golomb encoded binary string 
and return the array of decoded integers it represents.

Encoding
An exponential-Golomb code is a way of representing an integer using bit patterns. 
To encode any non-negative integer x using the exponential-Golomb code:

Write down x + 1 in binary, without leading zeroes.
Count ( all ) the bits written, subtract one, and add that many zeroes to the front of the bit string.
Example
The value for 3 would be:

3 → 100 ( 3 + 1 in binary ) → 00100 ( 100 with two 0s preceding it )
The value for 22 would be:

22 → 10111 → 000010111
As such, a sequence of nonnegative integers can be represented as sequence of exponential-Golomb codes:

[3, 22, 0, 4, 12] → 00100 000010111 1 00101 0001101
Therefore, for this case, your function should take "001000000101111001010001101" and return [3, 22, 0, 4, 12].
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.4
-----------------------------------------------------------------------------------------------------------
{- 
Given a non-negative number, return the next bigger polydivisible number, or an empty value like null or Nothing.

A number is polydivisible if its first digit is cleanly divisible by 1, 
its first two digits by 2, its first three by 3, and so on. There are finitely many polydivisible numbers.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.5
-----------------------------------------------------------------------------------------------------------
{- 
Ask a mathematician: "What proportion of natural numbers contain at least one digit 9 somewhere 
in their decimal representation?"

You might get the answer "Almost all of them", or "100%".

Clearly though, not all whole numbers contain a 9.

we ask the question: 
"How many Integers in the range [0..n] contain at least one 9 in their decimal representation?"

In other words, write the function:

nines :: Integer -> Integer
Where, for example:

nines 1  = 0
nines 10 = 1     -- 9
nines 90 = 10    -- 9, 19, 29, 39, 49, 59, 69, 79, 89, 90
When designing your solution keep in mind that your function will be tested against some large numbers (up to 10^38)
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.6
-----------------------------------------------------------------------------------------------------------
{- 
You will receive a string consisting of lowercase letters, uppercase letters and digits as input. 
Your task is to return this string as blocks separated by dashes ("-"). 
The elements of a block should be sorted with respect to the hierarchy listed below, 
and each block cannot contain multiple instances of the same character. 
Elements should be put into the first suitable block.

The hierarchy is:

lowercase letters (a - z), in alphabetical order
uppercase letters (A - Z), in alphabetical order
digits (0 - 9), in ascending order
Examples
"21AxBz" -> "xzAB12" - since input does not contain repeating characters, you only need 1 block
"abacad" -> "abcd-a-a" - character "a" repeats 3 times, thus 3 blocks are needed
"" -> "" - an empty input should result in an empty output
"hbh420sUUW222IWOxndjn93cdop69NICEep832" -> "bcdehjnopsxCEINOUW0234689-dhnpIUW239-2-2-2" 
- a more sophisticated example
Good luck!
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.7
-----------------------------------------------------------------------------------------------------------
{-
You are given three piles of casino chips: white, green and black chips:

the first pile contains only white chips
the second pile contains only green chips
the third pile contains only black chips
Each day you take exactly two chips of different colors and head to the casino. 
You can choose any color, but you are not allowed to take two chips of the same color in a day.

You will be given an array representing the number of chips of each color 
and your task is to return the maximum number of days you can pick the chips. 
Each day you need to take exactly two chips.

Examples (input -> output)
* [1,1,1] -> 1, because after you pick on day one, there will be only one chip left
* [1,2,1] -> 2, you can pick twice; you pick two chips on day one then on day two
* [4,1,1] -> 2
More examples in the test cases. Good luck!

Brute force is not the way to go here. Look for a simplifying mathematical approach.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.8
-----------------------------------------------------------------------------------------------------------
{- 
Consider a sequence, which is formed by the following rule: 
next term is taken as the smallest possible non-negative integer, which is not yet in the sequence, 
so that no 3 terms of sequence form an arithmetic progression.

Example
f(0) = 0 -- smallest non-negative
f(1) = 1 -- smallest non-negative, which is not yet in the sequence
f(2) = 3 -- since 0, 1, 2 form an arithmetic progression
f(3) = 4 -- neither of 0, 1, 4, 0, 3, 4, 1, 3, 4 form an arithmetic progression, 
so we can take smallest non-negative, which is larger than 3
f(4) = 9 -- 5, 6, 7, 8 are not good, since 1, 3, 5, 0, 3, 6, 1, 4, 7, 0, 4, 8 are all valid arithmetic progressions.

etc...

The task
Write a function f(n), which returns the n-th member of sequence.

Limitations
There are 1000 random tests with 0 <= n <= 10^9, so you should consider algorithmic complexity of your solution.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.9
-----------------------------------------------------------------------------------------------------------
{- 
The range of vision of a digit is its own value. 
1 can see one digit to the left and one digit to the right, 2 can see two digits, and so on.

Thus, the loneliness of a digit N is the sum of the digits which it can see.

Given a non-negative integer, your funtion must determine 
if there's at least one digit 1 in this integer such that its loneliness value is minimal.

Example
number = 34315
digit   can see on the left   can see on the right    loneliness
3                 -                 431               4 + 3 + 1 = 8
4                 3                 315               3 + 3 + 1 + 5 = 12
3                 34                15                3 + 4 + 1 + 5 = 13
1                 3                 5                 3 + 5 = 8
5                 3431              -                 3 + 4 + 3 + 1 = 11
Is there a 1 for which the loneliness is minimal? Yes.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.10
-----------------------------------------------------------------------------------------------------------
{- 
The sad thing about foldl is that it cannot terminate early 
and that it doesn't work with infinite lists. Let's try to rectify the problem. Write a function...

foldWhile :: (b -> Bool) -> (b -> a -> b) -> b -> [a] -> b
... which piggybacks a predicate along the way and terminates as soon as this predicate returns False.

Here is an example:

foldWhile (< 100) (+) 0 [1..]
> 91
Note 1: FoldWhile should only diverge in cases similar to this one:

foldWhile (const True) (+) 0 [1..]
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.11
-----------------------------------------------------------------------------------------------------------
{- 
fix is a nice little function:

fix :: (a -> a) -> a
fix f = let x = f x in x
But let's make it nicer!

Code length:
27 characters or less (module line included)
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.12
-----------------------------------------------------------------------------------------------------------
{- 
Students of calculus learn that a large class of mathematical functions can be represented by 
an infinite polynomial expression. 
Values of the function can be calculated by summing sufficient terms of the series.

For example, the functions exp, sin, and cos have the following series:

exp x = 1 + x + x^2/2! + x^3/3! + x^4/4! + ...
sin x = x - x^3/3! + x^5/5! - x^7/7! + x^9/9! - ...
cos x = 1 - x^2/2! + x^4/4! - x^6/6! + x^8/8! - ...
In this kata we will represent a Taylor series as a list of coefficient values, 
where the nth term is the coefficient of x^n in the Taylor series.

For best precision, we will use Rational values for the terms of a power series.

type TaylorSeries = [Rational]
Tasks:

Provide (infinite) lists representing the coefficients of the series for exp, sin and cos.
Write a function which evaluates a power series for a given value, by summing a given number of terms.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.13
-----------------------------------------------------------------------------------------------------------
{- 
Suppose we know the process by which a string s was encoded to a string r (see explanation below). 
The aim of the kata is to decode this string r to get back the original string s.

Explanation of the encoding process:
input: a string s composed of lowercase letters from "a" to "z", and a positive integer num
we know there is a correspondence between abcde...uvwxyzand 0, 1, 2 ..., 23, 24, 25 : 0 <-> a, 1 <-> b ...
if c is a character of s whose corresponding number is x, 
apply to x the function f: x-> f(x) = num * x % 26, then find ch the corresponding character of f(x)
Accumulate all these ch in a string r
concatenate num and r and return the result
For example:

encode("mer", 6015)  -->  "6015ekx"

m --> 12,   12 * 6015 % 26 = 4,    4  --> e
e --> 4,     4 * 6015 % 26 = 10,   10 --> k
r --> 17,   17 * 6015 % 26 = 23,   23 --> x

So we get "ekx", hence the output is "6015ekx"
Task
A string s was encoded to string r by the above process. 
complete the function to get back s whenever it is possible.

Indeed it can happen that the decoding is impossible 
for strings composed of whatever letters from "a" to "z" when positive integer num has not been correctly chosen. 
In that case return "Impossible to decode".

Examples
decode "6015ekx" -> "mer"
decode "5057aan" -> "Impossible to decode"
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.14
-----------------------------------------------------------------------------------------------------------
{- 
Rotate a 2D array by 1 / 8th of a full turn

Example
rotateCW,rotateCCW :: [[a]] -> [[a]]

rotateCW [ "ab"
         , "cd"
         ]
      -> [ "a"
         , "cb"
         , "d"
         ]

rotateCCW [ "ab"
          , "cd"
          ]
       -> [ "b"
          , "ad"
          , "c"
          ]
Notes
Input will be rectangular, and may be square
Input may be empty in either dimension
Result elements need no leading or trailing padding
( where applicable ) Do not mutate the input
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.15
-----------------------------------------------------------------------------------------------------------
{- 
Let us take a string composed of decimal digits: "10111213". 
We want to code this string as a string of 0 and 1 and after that be able to decode it.

To code we decompose the given string in its decimal digits (in the above example: 1 0 1 1 1 2 1 3) 
and we will code each digit.

Coding process to code a number n expressed in base 10:
For each digit d of n

a) Let k be the number of bits of d

b) Write k-1 times the digit 0 followed by the digit 1

c) Write digit d as a binary string, with the rightmost bit being the least significant

d) Concat the result of b) and c) to get the coding of d

At last concatenate all the results got for the digits of n.

An example
So we code 0 as 10, 1 as 11, 2 as 0110, 3 as 0111 ... etc...

With the given process, the initial string "10111213" becomes: 
"11101111110110110111" resulting of concatenation of 11 10 11 11 11 0110 11 0111.

Task:
Given strng a string of digits representing a decimal number the function code(strng) 
should return the coding of strng as explained above.

Given a string strng resulting from the previous coding, decode it to get the corresponding decimal string.

Examples:
code("77338855") --> "001111001111011101110001100000011000001101001101"
code("77338")  --> "0011110011110111011100011000"
code("0011121314") --> "1010111111011011011111001100"

decode("001111001111011101110001100000011000001101001101") -> "77338855"
decode("0011110011110111011100011000") -> "77338"
decode("1010111111011011011111001100") -> "0011121314"
Notes
SHELL: The only tested function is decode.
Please could you ask before translating.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.16
-----------------------------------------------------------------------------------------------------------
{- 
Beyonce (no relation to Beyoncé) is planning a heist at a local casino. 
She wants steal the money from two ATMs.

While she mostly cares about getting away with money, 
she's also interested in a unique fact about the ATMs at this particular casino; once a day, 
each ATM transfers one dollar to each other machine for each unit of distance away it is 
(e.g. in [0,1] both indices are 1 unit apart).

(Additionally, when emptied, each ATM will automatically refill with the exact same dollar amount as before, 
so it's possible to steal from the same ATM twice.)

Because she gets a thrill out of the fact that so much money has been transferred between ATMs, 
what she's ultimately interested in is stealing from the two ATMs which have the highest combined total money inside, 
plus number of dollars each transferred to the other.

Your function should return this maximum possible thrill value.

For example, if we have four ATMs: [2, 3, 4, 5], 
the ATM at index 0 will transfer a dollar to index 1, $2 to index 2, and $3 to index 3. 
Similarly, the ATM at index 2 will transfer $1 to indexes 1 and 3, and $2 to index 0.

Note that in the case above, Beyonce will either steal from the last ATM (index 3) twice, 
or steal from index 0 and index 3, 
because it nets her the maximum value of 10 ($5 + $5 + $0 transfer vs. $2 + $5 + $3 transfer). 
Either way, the answer is 10, returned as an integer.

Examples:

atms = [3,1,3]
maximumThrill atms -> 8 -- $3 + $3 + $2 transferred between each ( atms !! 0 and atms !! 2 )

atms = [2,3,4,5]
maximumThrill atms -> 10 -- $5 + $5 + $0 transferred ( atms !! 3 and atms !! 3 again )

atms = [10, 10, 11, 13, 7, 8, 9]
maximumThrill atms -> 26 -- $10 + $13 + $3 transfer between each ( atms !! 0 and atms !! 3 )

atms = [2, 3, 4, 5, 10, 6, 7, 8, 9, 10, 11, 12, 4, 4, 2, 2, 12, 8]
maximumThrill atms -> 34  -- $10 + $12 + $12 transfer between each ( atms !! 4 and atms !! 16 )
Note: These are magic ATMs, so don't worry about accounting for whether an ATM has enough money to transfer.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.17
-----------------------------------------------------------------------------------------------------------
{- 
Integral numbers can be even or odd.

Even numbers satisfy n = 2m ( with m also integral ) and we will ( completely arbitrarily ) 
think of odd numbers as n = 2m + 1.
Now, some odd numbers can be more odd than others: when for some n, m is more odd than for another's. 
Recursively. :]
Even numbers are just not odd.

Task
Given a finite list of integral ( not necessarily non-negative ) numbers, 
determine the number that is odder than the rest.
If there is no single such number, no number is odder than the rest; return Nothing, null or a similar empty value.

Examples
oddest [1,2] -> Just 1
oddest [1,3] -> Just 3
oddest [1,5] -> Nothing
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.18
-----------------------------------------------------------------------------------------------------------
{- 
Connect the dots in order to make a picture!

Notes
There are 2-26 dots labelled a b c ...
Make lines to connect the dots a -> b, b -> c, etc
The line char is *
Use only straight lines - vertical, horizontal, or diagonals of a square
The paper is rectangular - \n terminates every line
All input is valid

Examples
Input 
 
 a       b 
          
            
 d       c 
 
 Expected
          
 *********
         *
         *
 *********
 
Input 
 
    a
   e
      
 d     b
  
         
    c
 
 Expected
     
    *
   * *
  *   *
 *     *
  *   *
   * *
    *
 

-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.19
-----------------------------------------------------------------------------------------------------------
{- 
John wants to give a total bonus of $851 to his three employees taking fairly 
as possible into account their number of days of absence during the period under consideration. 
Employee A was absent 18 days, B 15 days, and C 12 days.

The more absences, the lower the bonus ...

How much should each employee receive? John thinks 
A should receive $230, B $276, C $345 since 230 * 18 = 276 * 15 = 345 * 12 and 230 + 276 + 345 = 851.

Task:
Given an array arr (numbers of days of absence for each employee) and a number s (total bonus) 
the function bonus(arr, s) will follow John's way and return an array of the fair bonuses of 
all employees in the same order as their numbers of days of absences.

s and all elements of arr are positive integers.

Examples:
bonus([18, 15, 12], 851) -> [230, 276, 345]

bonus([30, 27, 8, 14, 7], 34067) -> [2772, 3080, 10395, 5940, 11880]
Notes
See Example Test Cases for more examples.
Please ask before translating.
In some tests the number of elements of arr can be big.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 3.20
-----------------------------------------------------------------------------------------------------------
{- 
Given a triangle of consecutive odd numbers:

             1
          3     5
       7     9    11
   13    15    17    19
21    23    25    27    29
...
find the triangle's row knowing its index (the rows are 1-indexed), e.g.:

odd_row(1)  ==  [1]
odd_row(2)  ==  [3, 5]
odd_row(3)  ==  [7, 9, 11]
Note: your code should be optimized to handle big inputs.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"





