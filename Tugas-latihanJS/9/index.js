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