const LIST_OF_NAMES_URL = "https://raw.githubusercontent.com/dominictarr/random-name/master/first-names.txt";
const LIST_OF_HOBBIES_URL = "https://gist.githubusercontent.com/mbejda/453fdb77ef8d4d3b3a67/raw/e8334f09109dc212892406e25fdee03efdc23f56/hobbies.txt";


async function getListOfNames() {
    const response = await fetch(LIST_OF_NAMES_URL);
    const text = await response.text();
    if (!text) {
        throw new Error("No text found");
    }
    let noCarReturn = text.replace(/\r/g, "");

    return noCarReturn.split("\n");
}

function get500RandomNames(names) {
    const randomNames = [];
    const randomNumbers = [];
    while (randomNumbers.length < 500) {
        const randomNumber = Math.floor(Math.random() * names.length);
        if (!randomNumbers.includes(randomNumber)) {
            randomNumbers.push(randomNumber);
            randomNames.push(names[randomNumber]);
        }
    }
    return randomNames;
}

function getRandomAge() {
    return Math.floor(Math.random() * 100);
}


async function getListOfHobbies() {
    const response = await fetch(LIST_OF_HOBBIES_URL);
    const text = await response.text();
    if (!text) {
        throw new Error("No text found");
    }
    return text.split("\n");

}

function getRandomHobbies(hobbies) {
    const randomHobbies = [];
    const amountOfHobbies = Math.floor(Math.pow(Math.random(), 2) * 10);
    while (randomHobbies.length < amountOfHobbies) {
        const randomNumber = Math.floor(Math.random() * hobbies.length);
        if (!randomHobbies.includes(hobbies[randomNumber])) {
            randomHobbies.push(hobbies[randomNumber]);
        }
    }
    return randomHobbies;
}

async function generateList() {
    const names = await getListOfNames();
    const randomNames = get500RandomNames(names);
    const hobbies = await getListOfHobbies();

    const people = randomNames.map((name) => {
        return {
            name,
            age: getRandomAge(),
            hobbies: getRandomHobbies(hobbies)
        }
    });
    return people;
}

function printJs(people) {
    const js = `const people = ${JSON.stringify(people, null, 2)};`;
    console.log(js);
}


(async () => {
    const people = await generateList();
    printJs(people);
})();
