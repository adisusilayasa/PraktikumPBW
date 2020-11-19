/*
I Putu Indie Surya Jayadi (1808561073)
I ketut Prawira Adhisastra (1808561078)
I Made Adi Susilayasa (1808561090)
*/

/* https://www.codewars.com/kata/57a55c8b72292d057b000594 Reversing Words in a String
You need to write a function that reverses the words in a given string. A word can also fit an empty string. If this is not clear enough, here are some examples:

As the input may have trailing spaces, you will also need to ignore unneccesary whitespace.

reverse('Hello World') === 'World Hello'
reverse('Hi There.') === 'There. Hi'
Happy coding!
*/
function reverse(string){
    return string.split (' ').reverse().join(' ')
    }
    
console.log (reverse('I am an expert at this'))



/* https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/javascript  Even or Odd
Create a function (or write a script in Shell)
that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

*/
function even_or_odd(number) {

    if ( number % 2==0){
      return "Even"
    }
    else {
      return "Odd"
    }
  }

console.log(even_or_odd(8))

/* https://www.codewars.com/kata/55225023e1be1ec8bc000390  Jenny's secret message
Jenny has written a function that returns a greeting for a user. However, she's in love with Johnny, and would like to greet him slightly different. She added a special case to her function, but she made a mistake.

Can you help her?

*/
function greet(name){
    if(name === "Johnny")
      return "Hello, my love!";
    else 
        return "Hello, " + name + "!";
  
  }

console.log(greet("Johnny"))


/*https://www.codewars.com/kata/53d16bd82578b1fb5b00128c Grader

Create a function that takes a number as an argument and returns a grade based on that number.

Score	Grade
Anything greater than 1 or less than 0.6	"F"
0.9 or greater	"A"
0.8 or greater	"B"
0.7 or greater	"C"
0.6 or greater	"D"
Examples:

grader(0)   should be "F"
grader(1.1) should be "F"
grader(0.9) should be "A"
grader(0.8) should be "B"
grader(0.7) should be "C"
grader(0.6) should be "D"

*/
function grader(score) {

    if (score > 1){
        return "F"
      }
    if (score >= 0.9){
        return "A"
      }
    if (score >= 0.8){
        return "B"
    }
    if (score >= 0.7){
        return "C"
      }
    if (score >= 0.6){
        return "D"
      }
    if (score < 0.6){
    return "F"
    }
  }

console.log(grader(12))


/*https://www.codewars.com/kata/577bd026df78c19bca0002c0   Correct the mistakes of the character recognition software
Character recognition software is widely used to digitise printed texts. Thus the texts can be edited, searched and stored on a computer.

When documents (especially pretty old ones written with a typewriter), are digitised character recognition softwares often make mistakes.

Your task is correct the errors in the digitised text. You only have to handle the following mistakes:

S is misinterpreted as 5
O is misinterpreted as 0
I is misinterpreted as 1
The test cases contain numbers only by mistake.
*/
function correct(string){
    let str = string.split('')

    return str.map(
    x => (x == '5')
    ? 'S': (x == '0')
    ? 'O': (x == '1')
    ? 'I': x).join('')
    
}

console.log(correct("5Ad1"))



/*https://www.codewars.com/kata/57f781872e3d8ca2a000007e Beginner - Lost Without a Map
Given an array of integers, return a new array with each value doubled.

For example:

[1, 2, 3] --> [2, 4, 6]

For the beginner, try to use the map method - it comes in very handy quite a lot so is a good one to know.
*/
function maps(x){
    return x.map(a => a*2 )

   }

console.log(maps([1, 2, 3]))


//https://www.codewars.com/kata/57a5c31ce298a7e6b7000334        Bin to Decimal
//Complete the function which converts a binary number (given as a string) to a decimal number.

function binToDec(bin){
    return parseInt( bin,2)
  }

console.log(binToDec("101"))



/*https://www.codewars.com/kata/55ad04714f0b468e8200001c get character from ASCII Value
Write a function which takes a number and returns the corresponding ASCII char for that value.

Example:

get_char(65) # => 'A'
For ASCII table, you can refer to http://www.asciitable.com/

*/
function getChar(c){
    return String.fromCharCode(c)
    }

console.log(getChar(65))



/*https://www.codewars.com/kata/57eadb7ecd143f4c9c0000a3    Abbreviate a Two Word Name
Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.

The output should be two capital letters with a dot separating them.

It should look like this:

Sam Harris => S.H

Patrick Feeney => P.F
*/
function abbrevName(name){
    let nama = name.split(' ');
    return  `${nama[0][0].toUpperCase()}.${nama[1][0].toUpperCase()}`;
}
  console.log(abbrevName("adi Susilayasa"))



  /*https://www.codewars.com/kata/55a70521798b14d4750000a4    Returning Strings
Make a function that will return a greeting statement that uses an input; your program should return, "Hello, <name> how are you doing today?".

SQL: return results in a column named greeting

[Make sure you type the exact thing I wrote or the program may not execute properly]
*/
function greet(name){
    return `Hello, ${name} how are you doing today?`
  }

console.log(greet("Ryan"))