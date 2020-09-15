// const readline = require('readline');

// const reader = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });

// // reader.question("Would you like some tea", function (answer) {
//     console.log(answer);
// }
// );

// function teaAndBiscuits() {
//     let first, second;

//     reader.question('Would you like some tea?', (res) => {
//         first = res;
//         console.log(`You replied ${res}.`);
//     });

//     reader.question('Would you like some biscuits?', (res) => {
//         second = res;
//         console.log(`You replied ${res}.`);
//     });

//     const firstRes = (first === 'yes') ? 'do' : 'don\'t';
//     const secondRes = (second === 'yes') ? 'do' : 'don\'t';
//     console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
//     reader.close();
// }

// function teaAndBiscuits() { 
//     reader.question('Would you like some tea?', function (res) { 
//         console.log(`You replied ${res}.`); 

//         reader.question('Would you like some biscuits?', function (res2) { 
//             console.log(`You replied ${res2}.`);
//              const first = (res === 'yes') ? 'do' : 'don\'t'; 
//              const second = (res2 === 'yes') ? 'do' : 'don\'t'; 

//         console.log(`So you ${first} want tea and you ${second} want biscuits.`); 

//         reader.close(); }); }); 
// }
// reader.question("What is your name?", function (answer) {
//     console.log(`Hello ${answer}!`);

//     // Close the reader, which will allow the program to end because it
//     // is no longer waiting for any events.
//     reader.close();
// });

// console.log("Last program line");



// window.setTimeout( function () {
//     alert('HAMMERTIME');
// }, 5000);

// hammerTime = function(time) {
//     window.setTimeout( function () {
//         alert(`${ time } is hammertime!`);
//     }, 5000);
// };


function Cat() {
    this.name = 'Markov';
    this.age = 3;
}

function Dog() {
    this.name = 'Noodles';
    this.age = 4;
}

Dog.prototype.chase = function (cat) {
    console.log(`My name is ${this.name} and I'm chasing ${cat.name}! Woof!`)
};

const Markov = new Cat();
const Noodles = new Dog();