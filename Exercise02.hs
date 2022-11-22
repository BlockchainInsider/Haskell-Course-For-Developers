module Exercise02 where


-- Exercise 2.1
-----------------------------------------------------------------------------------------------------------
{- 
b boys and g girls went to the cinema and bought tickets for consecutive seats in the same row. 
Write a function that will tell you how to sit down for boys and girls, 
so that at least one girl sits next to each boy, and at least one boy sits next to each girl.

The format of the input data
The input contains two numbers: b and g (both numbers are natural).

Output format
The function should return any string that contains exactly b characters 'B' (denoting boys) 
and g characters 'G' (denoting girls), satisfying the condition of the problem. 
You do not need to print spaces between characters. 
If it is not possible to seat boys and girls according to the task conditions, 
the function should return null, None, etc. depending on programming language.

Examples
cinema 1 1 -> Just "BG" (the result like "GB" is also valid)
cinema 5 5 -> Just "BGBGBGBGBG" (the result like "GBGBGBGBGB" is also valid)
cinema 5 3 -> Just "BGBGBBGB" (the results like "BGBBGBBG" or "BGBBGBGB" and so on are also valid)
cinema 3 3 -> Just "BGBGBG" (the result like "GBGBGB" is also valid)
cinema 100 3 -> Nothing
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.2
-----------------------------------------------------------------------------------------------------------
{- 
Let there be k different types of weather, where we denote each type of weather by a positive integer. 
For example, sunny = 0, rainy = 1, ..., cloudy = k.

Task
Find the probability of having weather j in n days from now given weather i today 
and conditional on some daily weather transition probabilities, a k*k matrix, 
where i and j are integers less than or equal to k.

Example
There are two types of weather 0 and 1. Transition probabilities:

[[0.6, 0.4],
 [0.3, 0.7]]
The probability of weather 0 tomorrow if weather 0 today: 60%
The probability of weather 1 tomorrow if weather 0 today: 40%
The probability of weather 0 tomorrow if weather 1 today: 30%
The probability of weather 1 tomorrow if weather 1 today: 70%
The probability of weather 0 two days from now if we start in weather 0 becomes: 60% * 60% + 40% * 30% = 48%. 
Because either we stay in 0 for two days or we go from 0 to 1 and then from 1 to 0.

Note
We will have k ≤ 10 and n ≤ 50.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.3
-----------------------------------------------------------------------------------------------------------
{-
What date corresponds to the nth day of the year?
The answer depends on whether the year is a leap year or not.

Write a function that will help you determine the date if you know the number of the day in the year, 
as well as whether the year is a leap year or not.
The function accepts the day number and a boolean value isLeap as arguments, 
and returns the corresponding date of the year as a string "Month, day".
Only valid combinations of a day number and isLeap will be tested.

Examples:
* With input `41, false` => return "February, 10"
* With input `60, false` => return "March, 1
* With input `60, true` => return "February, 29"
* With input `365, false` => return "December, 31"
* With input `366, true` => return "December, 31"
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.4
-----------------------------------------------------------------------------------------------------------
{- 
All integers can be uniquely expressed as a sum of powers of 3 using each power of 3 at most once.

For example:

17 = (-1) +   0  + (-9) + 27 = (-1 * 3^0) + ( 0 * 3^1) + (-1 * 3^2) + (1 * 3^3)
-8 =   1  +   0  + (-9)      = ( 1 * 3^0) + ( 0 * 3^1) + (-1 * 3^2)
25 =   1  + (-3) +   0  + 27 = ( 1 * 3^0) + (-1 * 3^1) + ( 0 * 3^2) + (1 * 3^3)
We can use the string +-0+ to represent 25 as the sum of powers of 3:

Symbols      :   "+"   "-"   "0"   "+"
Powers of 3  :    1     3     9    27
Values       :    1    -3     0    27
Given an integer n (not necessarily strictly positive), 
we want to write a function that expresses n as a sum of powers of 3 using the symbols -0+:

express  17   ->  "-0-+"
express (-8)  ->  "+0-"
Note: The last symbol in the solution string represents the largest power of 3 used (added + or subtracted -) 
and will never be 0, except if the integer is 0 itself.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.5
-----------------------------------------------------------------------------------------------------------
{- 
Given a number, find the permutation with the smallest absolute value (no leading zeros).

-20 => -20
-32 => -23
0 => 0
10 => 10
29394 => 23499
The input will always be an integer.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.6
-----------------------------------------------------------------------------------------------------------
{- 
you have an input string and you should check whether it is a valid message. 
To decide that, you need to split the string by the numbers, 
and then compare the numbers with the number of characters in the following substring.

For example "3hey5hello2hi" should be split into 3, hey, 5, hello, 2, hi and the function should return true, 
because "hey" is 3 characters, "hello" is 5, and "hi" is 2; as the numbers and the character counts match, 
the result is true.

Notes:

Messages are composed of only letters and digits
Numbers may have multiple digits: e.g. "4code13hellocodewars" is a valid message
Every number must match the number of character in the following substring, 
otherwise the message is invalid: e.g. "hello5" and "2hi2" are invalid
If the message is an empty string, you should return true
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.7
-----------------------------------------------------------------------------------------------------------
{-
Consider a sequence, which is formed of re-sorted series of natural numbers. 
The terms of sequence are sorted by steps to reach 1 (in Collatz iterations) (ascending) and then by value (ascending). You are asked to define a list, whose values are the terms of the sequence in order.

Your list will be tested up to 20000-th term. 
Furthermore, the length of solution is limited to 5000 symbols to prevent hardcoding.

Example
Here is how the beginning of the sequence looks like:

1, 2, 4, 8, 16, 5, 32, 10, 64, 3, 20, 21, 128, ...

1 takes 0 steps, 2 takes 1 step, 4 takes 2 steps, 8 takes 3 steps, and 16 takes 4 steps;
5 and 32 take 5 steps;
10, 64 take 6 steps;
3, 20, 21, 128 take 7 steps each;
etc (in each subsequence, where numbers have same number of steps in terms of Collatz conjecture, 
they are ordered by value)...
Collatz conjecture
As you probably know, the yet unproved Collatz conjecture states that if you take any positive integer number x, 
it will eventually reach 1 if you continuously apply the following operations:

if x is odd: x := 3 * x + 1
if x is even: x := x / 2
In this task, the sorting key steps to reach 1 means the number of abovementioned steps before x == 1.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.8
-----------------------------------------------------------------------------------------------------------
{- 
You get a list of non-zero integers A, its length is always greater than one. 
Your task is to find such non-zero integers W that the weighted sum


Examples
weights [ 1, 2, 3, 4, 5 ]  ->  [ -2, -2, -1, 1, 1 ] -- other solution are possible
-- 1 * (-2) + 2 * (-2) + 3 * (-1) + 4 * 1 + 5 * 1 == 0

weights [ -13, 52 ]  ->  [ 4, 1 ] -- other solutions are possible
-- (-13) * 4 + 52 * 1 == 0

weights [ 1, 1 ]  ->  [ -1, 1 ] -- other solutions are possible
-- 1 * (-1) + 1 * 1 == 0
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.9
-----------------------------------------------------------------------------------------------------------
{- 
In this kata you are given a string for example:

"example(unwanted thing)example"
Your task is to remove everything inside the parentheses as well as the parentheses themselves.

The example above would return:

"exampleexample"
Notes
Other than parentheses only letters and spaces can occur in the string. 
Don't worry about other brackets like "[]" and "{}" as these will never appear.
There can be multiple parentheses.
The parentheses can be nested.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.10
-----------------------------------------------------------------------------------------------------------
{- 
 you will be given a leaderboard of unique names for example:

[ "John"
, "Brian"
, "Jim"
, "Dave"
, "Fred"
]
Then you will be given a list of strings for example:

[ "Dave +1", "Fred +4", "Brian -1" ]
Then you sort the leaderboard.

The steps for our example would be:

-- Dave up 1
[ "John"
, "Brian"
, "Dave"
, "Jim"
, "Fred"
]
-- Fred up 4
[ "Fred"
, "John"
, "Brian"
, "Dave"
, "Jim"
]
-- Brian down 1
[ "Fred"
, "John"
, "Dave"
, "Brian"
, "Jim"
]
Then once you have done this you need to return the leaderboard.

All inputs will be valid. 
All strings in the second list will never ask to move a name up higher or lower than possible 
eg. "John +3" could not be added to the end of the second input list in the example above.

The strings in the second list will always be something in the leaderboard followed by 
a space and a + or - sign followed by a number.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.11
-----------------------------------------------------------------------------------------------------------
{- 
Halloween is around the corner and we have to distribute chocolates. 
We need to assemble a parcel of goal grams of chocolates. 
The goal can be assumed to be always a positive integer value.

There are small chocolates (2 grams each) and big chocolates (5 grams each)
To reach the goal, the chocolates (big and small) must be used as-is, meaning, 
the chocolates cannot be broken into smaller pieces
Maximize the use of big chocolates that are available to achieve the desired goal. 
And only then should you proceed to use the small chocolates.
NOTE: "Maximize" does not imply you have to use all the available big chocolates before using the small chocolates
For example, consider the goal of 6, and big=1, small=3. 
Using the existing one big chocolate, it is not possible to achieve the remainder of the weight of 1. 
Therefore, avoid using the big chocolate. Use the existing 3 small chocolates and achieve the goal.
Determine the number of small chocolates that are required to achieve the desired parcel weight.

Write a function make_chocolates that will accept three integer values as arguments, in the following order:

small -> number of small chocolates available
big -> number of big chocolates available
goal -> the desired weight of the final parcel
The function should return the number of small chocolates required to achieve the goal. 
The function should return -1 only if the goal cannot be achieved by any possible combination of big chocolates 
and small chocolates.

Example
make_chocolates (4, 1, 13) => 4  
make_chocolates (4, 1, 14) => -1  
make_chocolates (2, 1, 7) => 1  

# using the big chocolate prevents goal 
# accomplishment, therefore don't use it!
make_chocolates (3, 1, 6) => 3  
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.12
-----------------------------------------------------------------------------------------------------------
{- 
Your job is to change the given string s using a non-negative integer n.

Each bit in n will specify whether or not to swap the case for each alphabetic character in s: 
if the bit is 1, swap the case; if its 0, leave it as is. 
When you finish with the last bit of n, start again with the first bit.

You should skip the checking of bits when a non-alphabetic character is encountered, 
but they should be preserved in their original positions.

Examples
swap("Hello world!", 11)  -->  "heLLO wORLd!"
...because 11 is 1011 in binary, so the 1st, 3rd, 4th, 5th, 7th, 8th and 9th alphabetical characters have to be swapped:

H e l l o   w o r l d !
1 0 1 1 1 x 0 1 1 1 0 x
^   ^ ^ ^    ^ ^ ^
More examples
swap("gOOd MOrniNg", 7864)        -->  "GooD MorNIng"
swap("", 11345)                   -->  ""
swap("the lord of the rings", 0)  -->  "the lord of the rings"
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.13
-----------------------------------------------------------------------------------------------------------
{- 
Given the data structure

data Tree a = Leaf
  | Node Integer (Tree a) a (Tree a) deriving Eq
write a function insertBalanced

insertBalanced :: Tree a -> a -> Tree a
that inserts an element into a balanced tree while retaining the balance. 
More specifically, at any time the difference in height of the left subtree 
and in the right subtree should be at most 1.

to avoid timeout, avoid re-calculating the heights (the type signature provides a field for this)
this integer field is not checked for in the tests, 
only the count and balance properties after applying insert multiple times are verified.
200 tests with up to 5000 insertions (starting with Leaf)
100 tests with 2^n + 1 insertions into random balanced trees of height n, n<=13
nothing fancy, just simple algorithm practice :)
Read the following for more details:

Preloaded provides the data structure, a show instance and some functions for debugging / testing, 
the full preloaded code is attached below for reference.

Only the functions isBalancedTree and count are used in the test suite.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.14
-----------------------------------------------------------------------------------------------------------
{- 
The Hamming Code is used to correct errors, so-called bit flips, in data transmissions. 
Later in the description follows a detailed explanation of how it works.
In this Kata we will implement the Hamming Code with bit length 3; this has some advantages and disadvantages:

[ + ] It's simple to implement
[ + ] Compared to other versions of hamming code, we can correct more mistakes
[ - ] The size of the input triples
Task 1: Encode function
Implement the encode function, using the following steps:

convert every letter of the text to its ASCII value; (ASCII value of space is 32)
convert ASCII values to 8-bit binary;
triple every bit;
concatenate the result;
For example:

input: "hey"
--> 104, 101, 121                  // ASCII values
--> 01101000, 01100101, 01111001   // binary
--> 000111111000111000000000 000111111000000111000111 000111111111111000000111  // tripled
--> "000111111000111000000000000111111000000111000111000111111111111000000111"  // concatenated
Task 2: Decode function:
Check if any errors happened and correct them. Errors will be only bit flips, and not a loss of bits:

111 --> 101 : this can and will happen
111 --> 11 : this cannot happen
Note: the length of the input string is also always divisible by 24 so that you can convert it to an ASCII value.

Steps:

Split the input into groups of three characters;
Check if an error occurred: replace each group with the character that occurs most often, 
e.g. 010 --> 0, 110 --> 1, etc;
Take each group of 8 characters and convert that binary number;
Convert the binary values to decimal (ASCII);
Convert the ASCII values to characters and concatenate the result
For example:

input: "100111111000111001000010000111111000000111001111000111110110111000010111"
--> 100, 111, 111, 000, 111, 001, ...  // triples
-->  0,   1,   1,   0,   1,   0,  ...  // corrected bits
--> 01101000, 01100101, 01111001       // bytes
--> 104, 101, 121                      // ASCII values
--> "hey"
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.15
-----------------------------------------------------------------------------------------------------------
{- 
you will be given a number n (n > 0) and your task will be to return the smallest square number N (N > 0) 
such that n + N is also a perfect square. If there is no answer, return -1 (nil in Clojure, 
Nothing in Haskell, None in Rust).

solve 13 = Just 36
-- because 36 is the smallest perfect square that can be added to 13 to form a perfect square => 13 + 36 = 49

solve 3 = Just 1 -- 3 + 1 = 4, a perfect square
solve 12 = Just 4 -- 12 + 4 = 16, a perfect square
solve 9 = Just 16 
solve 4 = Nothing
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.16
-----------------------------------------------------------------------------------------------------------
{- 
your task is to find the maximum sum of any straight "beam" on a hexagonal grid, 
where its cell values are determined by a finite integer sequence seq.

In this context, a beam is a linear sequence of cells in any of the 3 pairs of opposing sides of a hexagon. 
We'll refer to the sum of a beam's integer values as the "beam value".
Refer to the example below for further clarification.

Input
Your function will receive two arguments:

n : the length of each side of the hexagonal grid, where 2 <= n < 100
seq : a finite sequence of (positive and/or nonpositive) integers with a length >= 1
The sequence is used to populate the cells of the grid and should be repeated as necessary.
The sequence type will be dependent on the language (e.g. array for JavaScript, tuple for Python, etc.).
Output
Your function should return the largest beam value as an integer.

Test Example

In our test example, we have the following arguments:
n = 4
seq = [2, 4, 6, 8]

Below is the hexagonal grid determined by our example arguments;
the sequence repeats itself from left to right, then top to bottom.

   2 4 6 8
  2 4 6 8 2
 4 6 8 2 4 6
8 2 4 6 8 2 4
 6 8 2 4 6 8
  2 4 6 8 2
   4 6 8 2

The three diagrams below illustrate the "beams" in the hexagonal grid above.
In the grid on the left, the horizontal beams are highlighted by their likewise colors,
and the value of each beam is given to its right.
In the center grid, the beams highlighted go from upper-right to bottom-left (and vice-versa).
In the grid on the right, the beams highlighted go from upper-left to bottom-right (and vice-versa).

   2 4 6 8 -> 20           2 4 6 8           2 4 6 8
  2 4 6 8 2 -> 22         2 4 6 8 2         2 4 6 8 2
 4 6 8 2 4 6 -> 30       4 6 8 2 4 6       4 6 8 2 4 6
8 2 4 6 8 2 4 -> 34     8 2 4 6 8 2 4     8 2 4 6 8 2 4
 6 8 2 4 6 8 -> 34       6 8 2 4 6 8       6 8 2 4 6 8
  2 4 6 8 2 -> 22         2 4 6 8 2         2 4 6 8 2
   4 6 8 2 -> 20           4 6 8 2           4 6 8 2

The maximum beam value in our example is 34.
Test Specifications
All inputs will be valid
Full Test Suite: 12 fixed tests and 100 random tests
For JavaScript, module and require are disabled 
[NOTE: if you would like to suggest a module that you think should be permitted for JS, 
please leave a note in the Discourse section]
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.17
-----------------------------------------------------------------------------------------------------------
{- 
Your goal is to implement an algorithm, which increases number in the way explained below, and returns the result.

Input data: number, iterations, step.

Stage 1:

We get the: number:143726, iterations:  16, step:3

And make increment operations in a special way

Position: We start from 1 position and increment 4th num, besause step is 3

s - start position

+ - current increased position

Position: s - - - - - => - - - + - -

Number: 1 4 3 7 2 6 => 1 4 3 8 2 6

Stage 2: repeat stage 1 :)

Position: - - - s - - => + - - - - -

Number: 1 4 3 8 2 6 => 2 4 3 8 2 6

You must remember: if your number overflow into a longer number, the current position gets shifted to the right

9 9 9 => - - p - before overflow position be at 3rd digit

1 0 0 0 => - - - p - after overflow position be at 4th digit

Note:

9 => 10

799 => 800 (if you increase second 9) or 809 (if you increase first 9)

99000 => 100000 (if you increase second 9) or 109000 (if you increase first 9)
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.18
-----------------------------------------------------------------------------------------------------------
{- 
Find the sum of all numbers with the same digits (permutations) as the input number, including duplicates. 
However, due to the fact that this is a performance edition kata, the input can go up to 10**10000. 
That's a number with 10001 digits (at most)! Be sure to use efficient algorithms and good luck! 
All numbers tested for will be positive.

Examples
98    -->  187    ;  89 + 98  =  187
123   -->  1332   ;  123 + 132 + 213 + 231 + 312 + 321  =  1332
1185  -->  99990  ;  1185 + 1158 + 1815 + 1851 + 1518 + 1581 + 1185 + 1158 + 1815 + 
                   + 1851 + 1518 + 1581 + 8115 + 8151 + 8115 + 8151 + 8511 + 8511 +
                   + 5118 + 5181 + 5118 + 5181 + 5811 + 5811  =  99990
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.19
-----------------------------------------------------------------------------------------------------------
{- 
In lambda calculus, the only primitive are lambdas. 
No numbers, no strings, and of course no booleans. Everything is reduced to anonymous functions.

Booleans are defined thusly ( this definition is Preloaded for you ) :

type Boolean = forall a. a -> a -> a -- this requires RankNTypes

false,true :: Boolean
false = \ t f -> f
true  = \ t f -> t
Your task will be to implement basic operators on booleans 
(using only lambdas and function application) : not, and, or.

However!
Your combinators will not be applied in prefix position: not will be applied postfix, 
and and and or will be applied infix.
To make this at all possible, they will consist of single letters, like this:

true  n o t `shouldBe` false
true  a n d  false `shouldBe` false
false  o r  true `shouldBe` true
Actual testing will be extensional; the resulting function should behave correctly as false or true, 
but need not actually be false or true.
Getting the types right is part of the puzzle; there are multiple solutions anyway.
Yes, you can only define one n and one o.

For Bonus Points and Bragging Rights
xor is missing!

If you can make xor work, please publish a fork with the additional testing 
and earn Eternal Bragging Rights ( or at least until Christmas ).

Haskell's strong static typing is not very conducive to permanently including that testing.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"






-- Exercise 2.20
-----------------------------------------------------------------------------------------------------------
{- 
While Mrs Pong is away visiting her sister, 
Mr Pong has foolishly set up a ping pong table in his lounge room, 
and invites his neighbour Mr Ping over for a friendly ping pong session.

When Mr Ping hits the ping pong ball, the ping pong ball goes ping.

When Mr Pong hits the ping pong ball, the ping pong ball goes pong.

Unfortunately, not every hit goes where it was meant to...

Sometimes the ping pong ball hits the net, or bounces off a wall, 
or it ricochets off Mrs Pong's rather expensive porcelain collection, a light fitting, 
or various pieces of lounge furniture, before finally coming to rest on the floor. 
When that happens there are all kinds of bad noises.

Example
A typical rally may sound like this:

ping-pong-ping-pong-ping-pong-ping-pong-dong-tang-bing-tink-donk-donk-donk

Mr Ping served
There were several good returns
Mr Pong hits a bad shot which broke the handle off his wife's 2nd favourite teacup. Oops.
Kata Task
Who scored the most points?

Input
The sounds of one or more rallies.

Output
The name of the winning player: ping or pong

Notes
To score a point the same player must both serve and win the rally.
Whoever picks the ball off the floor will serve next. It's random.
A bad noise is anything other than ping or pong.
A bad noise means whoever hit the ball last hit a bad shot.
For some unknown reason all noises are 4 lowercase characters, and delimited by -
If scores are even, then the winner is the player who did NOT hit the final bad shot.
There are no double hits.
The final rally always ends with the ball on the floor.
All input is valid.
-}
-----------------------------------------------------------------------------------------------------------






-- "Coding here"





