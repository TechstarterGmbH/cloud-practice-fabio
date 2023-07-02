const express = require("express");

// fetch("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=old_fashioned")
//     .then(function(result) { return result.json() })
//     .then(function(data) { console.log(data) });


const app = express();



async function getDrink(name) {
    // const response = fetch("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=old_fashioned"); // Returnt promise 

    const response = await fetch("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=old_fashioned");
    console.log(response)
    const data = await response.json();
    console.log(data);
    const instructions = data.drinks[0];
    const deInstructions = instructions.strInstructionsDE;
    console.log(deInstructions);
    return deInstructions;
}

app.get("/drink", async function(req, res) {
    const instruction = await getDrink();
    res.send(instruction);
})

getDrink();
app.listen(3000);

