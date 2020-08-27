function titleize(arr) {
    let titleized = arr.map(
        name => name.charAt(0).toUpperCase() + name.slice(1)
    );

    titleized.forEach(
        ele => console.log(`Mx ${ele} Jingleheimer Schmidt`)
    );
}

function Elephant(name, height, tricks = []) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRR!!!!!'`);
}

Elephant.prototype.grow = function() {
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
    this.tricks.push(trick);
}

Elephant.prototype.play = function() {
    let idx = Math.round(Math.random(this.tricks.length));
    let theTrick = this.tricks[idx];

    console.log(`${this.name} is ${theTrick}`)
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant) {
    elephant.play();
//    console.log(`${elephant.name} is trotting by!`)
}

herd.forEach(Elephant.paradeHelper)

function dinerBreakfast() {
    let order = ["Chicken and waffles"];

    return function(food) {
        order += `and ${food}`;
        console.log(order.join(" "));
    }
}


bfastOrder = dinerBreakfast(food)