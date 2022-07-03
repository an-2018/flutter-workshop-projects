let age = 20;
let name = 'John';
let isApproved = false;

function getBirthYear() {
    return 2022 - age;
}

let year = getBirthYear()
// console.log(year);

let person = {
    name: 'John',
    age: 20,
    isApproved: false,
    getBirthYear: function () {
        return new Date().getFullYear() - this.age;
    }
}

console.log(person.getBirthYear())

class Car{
    construc
}
