const board = document.getElementById('board'); // Um die Zellen innerhalb des Board Elements anzuzeigen, brauchen wir eine Referenz
const cells = []; // In diesem Array werden alle Zellen Elemente gespeichert

let currentPlayer = 'X'; // Der aktuelle Spieler, der an der Reihe ist, wird hier gespeichert
let xMoves = [];
let oMoves = [];

const winningCombinations = [ // Alle möglichen Gewinnkombinationen
    // Reihen
    [0, 1, 2], // Erste Reihe
    [3, 4, 5], // Zweite Reihe
    [6, 7, 8], // Dritte Reihe

    // Spalten
    [0, 3, 6], // Erste Spalte
    [1, 4, 7], // Zweite Spalte
    [2, 5, 8], // Dritte Spalte

    // Diagonalen
    [0, 4, 8], // Erste Diagonale
    [2, 4, 6] // Zweite Diagonale
];


function createBoard() {
    for (let i = 0; i < 9; i++) { // Wir brauchen 9 Zellen, also von 0 bis 8
        const cell = document.createElement('div'); // Erstelle ein neues Div -> Wird neue Zelle
        cell.classList.add('cell'); // Füge die cell CSS-Klasse hinzu, damit unser definiertes Styling angewendet wird
        board.appendChild(cell); // Die neue Zelle soll ein Child unseres Board-Divs sein (<div id="board">{Hier wird neue Zelle eingefügt}</div>)
        cells.push(cell); // Die neues Zelle wird in das cells Array gepusht (am Ende angehängt)
        cell.addEventListener('click', () => makeMove(i)); // Wenn die Zelle geklickt wird, wird die makeMove Funktion aufgerufen
    }
}

function makeMove(index) {
    if (cells[index].textContent === '') { // Wenn die Zelle noch leer ist 
        cells[index].textContent = currentPlayer; // Füge das Zeichen des aktuellen Spielers ein
        if (currentPlayer === 'X') {
            cells[index].style.backgroundColor = 'lightblue'; // Player X bekommt lightblue Farbe
            currentPlayer = 'O'; // Im nächsten Zug ist O dran
            xMoves.push(index); // Speichere den Zug von X in das xMoves Array
        } else {
            cells[index].style.backgroundColor = 'lightcoral'; // Player O bekommmt lightcoral Farbe
            currentPlayer = 'X'; // Im nächsten Zug ist X dran
            oMoves.push(index); // Speichere den Zug von O in das oMoves Array
        }
        gameFinished(); // Überprüfe ob das Spiel zuende ist
    }
}


function gameFinished() {

    // Im folgenden checken wir, ob es einen Gewinner gibt
    // Dazu überprüfen wir, ob einer der Spieler 3 Symbole in einer Reihe hat
    // Dazu haben wir ein Array mit allen möglichen Gewinnkombinationen
    // Wir überprüfen, ob einer der Spieler 3 Züge in einer der Kombinationen hat

    for (let i = 0; i < winningCombinations.length; i++) {
        const combination = winningCombinations[i];
        if (combination.every((value) => xMoves.includes(value))) { // Überprüfe ob alle Werte der Kombination im xMoves Array sind
            finishGame('Player X hat gewonnen');
            return;
        }
        if (combination.every((value) => oMoves.includes(value))) { // Überprüfe ob alle Werte der Kombination im oMoves Array sind
            finishGame('Player O hat gewonnen');
            return;
        }
    }

    // Wenn es keinen Gewinner gibt, überprüfen wir, ob das Spiel unentschieden ist
    // Dazu checken wir, ob alle Zellen belegt sind, ergo insgesamt 9 Züge gemacht wurden
    // Wenn ja, ist das Spiel unentschieden
    const totalMovel = oMoves.length + xMoves.length;
    if (totalMovel === 9) {
        finishGame('Unentschieden');
        return;
    }

}

function finishGame(text) {
    setTimeout(() => {
        if(!alert(text)){window.location.reload();} // Wenn das Spiel zuende ist, wird eine Alert Box angezeigt und die Seite neu geladen
    }, 100);
}

createBoard(); // Die Funktion createBoard wurde zwar definiert aber wird hier aufgerufen

