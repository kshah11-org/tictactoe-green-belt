require("dotenv").config();
const request = require("supertest");
const bearerToken = process.env.TOKEN;
const url = process.env.URL;

describe("TicTacToe e2e test", () => {
  describe("Given the /TicTacToe/newGame", () => {
    test("return the game played in BOT mode to the user", async () => {
      await request(url)
        .get(`/services/api/TicTacToe/newGame`)
        .set({
          Authorization: `Bearer ${bearerToken}`
        })
        .expect(200)
        .then(function (response) {
          expect(response.body).toContain("Game Board Creation");
          expect(response.body).toContain("Player O won the game! ");
        });
    });
  });
});
