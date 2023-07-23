const { expect } = require('chai');
const { add, multiply, subtract, divide } = require( '../rechner');

describe('Teste alle Rechner Funktionen', () => {

    it('Test für Add Funktion', () => {
        // Wenn 1 + 1 gerechnet wird, dann soll das Ergebnis 2 sein
        expect(add(1, 1)).to.equal(2);
    });

});
