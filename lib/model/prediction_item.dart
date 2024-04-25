enum EGameType {
  brag("Brag"),
  badugi("Badugi"),
  texasholdem("Texas hold'em"),
  paiGowpoker("Pai Gow poker"),
  poker("Poker"),
  baccarat("Baccarat");

  const EGameType(this.text);
  final String text;
}

enum ENumberOfOpponents {
  one("1"),
  two("2"),
  three("3"),
  four("4"),
  five("5"),
  more("More than 5 ");

  const ENumberOfOpponents(this.text);
  final String text;
}

enum ELevelOfPlay {
  novice("Novice"),
  beginner("Beginner"),
  intermediate("Intermediate"),
  advanced("Advanced"),
  expert("Expert"),
  grandmaster("Grandmaster");

  const ELevelOfPlay(this.text);
  final String text;
}

enum EColorOfTable {
  red("Red"),
  blue("Blue"),
  yellow("Yellow"),
  green("Green"),
  black("Black"),
  idk("I don’t know");

  const EColorOfTable(this.text);
  final String text;
}

class PredictionItem {
  DateTime? date;
  EGameType? game;
  ENumberOfOpponents? number;
  ELevelOfPlay? levelOfPlay;
  bool? canBluff;
  bool? haveYouWon;
  int? timesCount;
  int? sum;
  double? percent;
  EColorOfTable? colorOfTable;

  PredictionItem(
      {this.date,
      this.game,
      this.number,
      this.levelOfPlay,
      this.canBluff,
      this.percent,
      this.haveYouWon,
      this.timesCount,
      this.sum,
      this.colorOfTable});

  factory PredictionItem.fromJson(Map<String, dynamic> parsedJson) {
    return PredictionItem(
      game: EGameType.values.byName(parsedJson['game']),
      date: DateTime.tryParse(parsedJson['date']),
      number: ENumberOfOpponents.values.byName(parsedJson['number']),
      levelOfPlay: ELevelOfPlay.values.byName(parsedJson['levelOfPlay']),
      colorOfTable: EColorOfTable.values.byName(parsedJson['colorOfTable']),
      canBluff: parsedJson['canBluff'],
      haveYouWon: parsedJson['haveYouWon'],
      timesCount: parsedJson['timesCount'] ?? "",
      sum: parsedJson['sum'] ?? "",
      percent: parsedJson['percent'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "date": date.toString(),
      "game": game!.name,
      "number": number!.name,
      "levelOfPlay": levelOfPlay!.name,
      "colorOfTable": colorOfTable!.name,
      "canBluff": canBluff,
      "haveYouWon": haveYouWon,
      "timesCount": timesCount,
      "sum": sum,
      "percent": percent
    };
  }
}
