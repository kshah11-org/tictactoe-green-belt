@IsTest
public with sharing class TicTacToeTest {

  @IsTest
  static void gameBoardCreationPhase_shouldPrintTitleStatusMessageEmptyBoard() {
    String expectedTitle = 'Game Board Creation...';
    String expectedStatusMsg = 'Board Created.\nThe game will start with player X';
    String expectedBoard = String.join(
      new List<String>{ ' | | ', '-+-+-', ' | | ', '-+-+-', ' | | ', '\n' },
      '\n'
    );

    Test.startTest();
    TicTacToe ticTacToe = new TicTacToe();
    String gameLog = ticTacToe.getGameLog();
    Test.stopTest();

    System.assertEquals(
      true,
      gameLog.contains(expectedTitle),
      'gameLog should include title'
    );
    System.assertEquals(
      true,
      gameLog.contains(expectedStatusMsg),
      'gameLog should include status message'
    );
    System.assertEquals(
      true,
      gameLog.contains(expectedBoard),
      'gameLog should include an empty board'
    );
  }

  @IsTest
  static void turnTaking_playerX_topLeft() {
    String expectedBoard = String.join(
      new List<String>{ 'X| | ', '-+-+-', ' | | ', '-+-+-', ' | | ', '\n' },
      '\n'
    );
    TicTacToe ticTacToe = new TicTacToe();
    ticTacToe.mockedMoves = new List<Integer>{ 0 };

    Test.startTest();
    ticTacToe.play('X');
    Test.stopTest();

    String gameLog = ticTacToe.getGameLog();
    System.assertEquals(
      true,
      gameLog.contains(expectedBoard),
      'gameLog should include a board with an X in the top left cell'
    );
  }

  @IsTest
  static void turnTaking_playerO_topCentre() {
    String expectedBoard = String.join(
      new List<String>{ 'X|O| ', '-+-+-', ' | | ', '-+-+-', ' | | ', '\n' },
      '\n'
    );
    TicTacToe ticTacToe = new TicTacToe();
    ticTacToe.mockedMoves = new List<Integer>{ 0, 1 };

    Test.startTest();
    ticTacToe.play('X');
    ticTacToe.play('O');
    Test.stopTest();

    String gameLog = ticTacToe.getGameLog();
    System.assertEquals(
      true,
      gameLog.contains(expectedBoard),
      'gameLog should include a board with an O in the top centre cell'
    );
  }

  @IsTest
  static void turnTaking_playerX_middleLeft() {
    String expectedBoard = String.join(
      new List<String>{ 'X|O| ', '-+-+-', 'X| | ', '-+-+-', ' | | ', '\n' },
      '\n'
    );
    TicTacToe ticTacToe = new TicTacToe();
    ticTacToe.mockedMoves = new List<Integer>{ 0, 1, 3 };

    Test.startTest();
    ticTacToe.play('X');
    ticTacToe.play('O');
    ticTacToe.play('X');
    Test.stopTest();

    String gameLog = ticTacToe.getGameLog();
    System.assertEquals(
      true,
      gameLog.contains(expectedBoard),
      'gameLog should include a board with an X in the middle left cell'
    );
  }
}
