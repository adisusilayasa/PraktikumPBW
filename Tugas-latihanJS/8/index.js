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