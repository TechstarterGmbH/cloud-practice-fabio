function testAufruf(req, res) {
    res.send("Hallo Welt");
}

app.get("/test", testAufruf);

app.get("/test2", function(req, res) {
    res.send("Hallo Welt 2");
}
);

app.get("/test3", (req, res) => {
    res.send("Hallo Welt 3");
});

const meinArray = ["Pizza", "Reis", "Nudeln"];

