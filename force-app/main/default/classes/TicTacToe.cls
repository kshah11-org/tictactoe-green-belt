public with sharing class TicTacToe {
  private String title;
  private String statusMessage;
  private List<String> board;

  private List<String> gameLog;
  private String currentPlayer;
  private String gameWinner;

  private String PLAYER_X = 'X';
  private String PLAYER_O = 'O';

  @TestVisible
  private List<Integer> mockedMoves = new List<Integer>();

  public TicTacToe() {
    this.gameCreation();
    this.logRound();
  }

  public void play(String player) {
    this.currentPlayer = player;
    this.takeTurn();
    this.checkWinner();
    this.logRound();
  }

  private void gameCreation() {
    this.gameLog = new List<String>();
    this.title = 'Game Board Creation...';
    this.statusMessage = 'Board Created.\nThe game will start with player X';
    this.board = new List<String>{
      ' ',
      ' ',
      ' ',
      ' ',
      ' ',
      ' ',
      ' ',
      ' ',
      ' '
    };
    this.currentPlayer = this.PLAYER_X;
  }

  private String renderBoard() {
    String topRow = this.board[0] + '|' + this.board[1] + '|' + this.board[2];
    String middleRow =
      this.board[3] +
      '|' +
      this.board[4] +
      '|' +
      this.board[5];
    String bottomRow =
      this.board[6] +
      '|' +
      this.board[7] +
      '|' +
      this.board[8];

    return String.join(
        new List<String>{ topRow, middleRow, bottomRow },
        '\n-+-+-\n'
      ) + '\n';
  }

  private void logRound() {
    String gameBoard = this.renderBoard();
    String renderedRound = String.join(
      new List<String>{ this.title, gameBoard, this.statusMessage },
      '\n'
    );

    this.gameLog.add(renderedRound + '\n');
  }

  private void takeTurn() {
    this.title = String.format(
      'Player {0}:',
      new List<String>{ this.currentPlayer }
    );
    this.statusMessage = '';

    Integer selectedCell;

    if (this.mockedMoves.size() > 0) {
      selectedCell = this.mockedMoves.remove(0);
    } else {
      selectedCell = (Integer) Math.floor(Math.random() * 9);
    }

    this.board[selectedCell] = this.currentPlayer;
  }

  public String getGameLog() {
    return String.join(this.gameLog, '\n');
  }

  public void checkWinner() {
    this.checkHorizontal();
    this.checkVertical();
    this.checkDiagonal();
  }

  public void checkHorizontal() {
    if (this.board[0].equals(this.currentPlayer) && this.board[1].equals(this.currentPlayer) && this.board[2].equals(this.currentPlayer)) {
      this.gameWinner = this.currentPlayer;
      this.statusMessage = 'Player ' + this.gameWinner + ' won the game!';
    }
    if (this.board[3].equals(this.currentPlayer) && this.board[4].equals(this.currentPlayer) && this.board[4].equals(this.currentPlayer)) {
      this.gameWinner = this.currentPlayer;
      this.statusMessage = 'Player ' + this.gameWinner + ' won the game!';
    }
    if (this.board[6].equals(this.currentPlayer) && this.board[7].equals(this.currentPlayer) && this.board[8].equals(this.currentPlayer)) {
      this.gameWinner = this.currentPlayer;
      this.statusMessage = 'Player ' + this.gameWinner + ' won the game!';
    }
  }

  public void checkVertical() {
    if (this.board[0].equals(this.currentPlayer) && this.board[3].equals(this.currentPlayer) && this.board[6].equals(this.currentPlayer)) {
      this.gameWinner = this.currentPlayer;
      this.statusMessage = 'Player ' + this.gameWinner + ' won the game!';
    }
    if (this.board[1].equals(this.currentPlayer) && this.board[4].equals(this.currentPlayer) && this.board[7].equals(this.currentPlayer)) {
      this.gameWinner = this.currentPlayer;
      this.statusMessage = 'Player ' + this.gameWinner + ' won the game!';
    }
    if (this.board[2].equals(this.currentPlayer) && this.board[5].equals(this.currentPlayer) && this.board[8].equals(this.currentPlayer)) {
      this.gameWinner = this.currentPlayer;
      this.statusMessage = 'Player ' + this.gameWinner + ' won the game!';
    }
  }

  public void checkDiagonal() {
    if (this.board[2].equals(this.currentPlayer) && this.board[4].equals(this.currentPlayer) && this.board[6].equals(this.currentPlayer)) {
      this.gameWinner = this.currentPlayer;
      this.statusMessage = 'Player ' + this.gameWinner + ' won the game!';
    }
  }
}
