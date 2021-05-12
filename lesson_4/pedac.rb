=begin 
Imagine a sequence of consecutive even integers beginning
with 2. The integers are grouped in rows, with the first row 
containing one integer, the second row two integers, the third row
three integeres, and so on. Given an integer representing the number
of a particular row, return an integer representing the sum of all 
the integers in that row.


**Rules and requirements**
-Sequence of even integers
-Sequence begins with two
-Integers are consecutive
-Sequence is grouped into rows
-Each row is incrementally larger: 1, 2, 3, ...
-Row 'number' equals the number of elements in the row
  -Row 1 has 1 elemnet, row 2 has 2 elements, ...
-Input: a single integer
  -Identifies a 'row', which is a subset fo a sequence of integers
-Output: a single integer
  -The sum of the integers in the row identified by the input integer


-Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ....

2
4, 6
8, 10, 12
14, 16, 18, 20
...

-How do we create the structure?

**Examples** 

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

2 --> 2
4, 6 --> 10
14, 16, 18, 20 --> 68

**Data Structures**

2
4, 6
8, 10, 12
14, 16, 18, 20

-Overall strucure representing sequence as a whole
-Individual rows within overall structure
-Individual rows in a set order in context of sequence
-Individual rows contain integers
-Can assume that integers are in a set order in the context of the sequence

[
  [2],
  [4, 6],
  [8, 10, 12],
  [14, 16, 18, 20],
  ....
]

**Algorithm**

1. Create an empty 'rows' array to contain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 3 until all the necessary rows have been created
  -All the rows have been created when the length of the 'rows'
  array is equal to the input integer
4. Sum the final row
5. Return the sum

*Problem: Create a row*
Rules: 
-Row is an array
-Arrays contain integers
-Integers are consecutive even numbers
-Integers in each row form part of an overall larger sequence
-Rows are of different lengths
-Input: the information needed to create the output
  -The starting integer
  -Length of the row
-Output: the row itself:`[8, 10, 12]`

Examples: 
start: 2, length: 1 --> [2]
start: 4, length: 2 --> [4, 6]
start: 8, length: 3 --> [8, 10, 12]

Data structures:
-An array of integers

Algorithm:
1. Create an empty 'row' array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 to get the next integer in the sequence
4. Repeat steps 2 & 3 until the array has reached the correct length
5. Return the 'row' array

Final thoughts:
-Not completely linear process
-Be prepared to move back and forwards between the steps
-Switch from implementation mode to abstract problem solving mode when necessary
-Don't try to problem solve at the code level