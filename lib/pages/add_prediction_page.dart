import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:poker_app/model/prediction_item.dart';
import 'package:poker_app/pages/home_page.dart';

PredictionItem prediction = PredictionItem();

class AddPredictionPage extends StatefulWidget {
  const AddPredictionPage({super.key});

  @override
  State<AddPredictionPage> createState() => _AddPredictionPageState();
}

class _AddPredictionPageState extends State<AddPredictionPage> {
  ValueNotifier<int> page = ValueNotifier(0);
  TextEditingController dateController = TextEditingController();
  TextEditingController countController = TextEditingController();
  TextEditingController sumController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  ENumberOfOpponents selectedNumber = ENumberOfOpponents.one;
  EGameType selectedGame = EGameType.brag;
  ELevelOfPlay selectedLevel = ELevelOfPlay.novice;
  EColorOfTable selectedColor = EColorOfTable.red;
  List<ENumberOfOpponents> numbers = [
    ENumberOfOpponents.one,
    ENumberOfOpponents.two,
    ENumberOfOpponents.three,
    ENumberOfOpponents.four,
    ENumberOfOpponents.five,
    ENumberOfOpponents.more,
  ];
  List<EGameType> gameType = [
    EGameType.brag,
    EGameType.badugi,
    EGameType.texasholdem,
    EGameType.paiGowpoker,
    EGameType.poker,
    EGameType.baccarat,
  ];
  List<ELevelOfPlay> levelOfPlay = [
    ELevelOfPlay.novice,
    ELevelOfPlay.beginner,
    ELevelOfPlay.intermediate,
    ELevelOfPlay.advanced,
    ELevelOfPlay.expert,
    ELevelOfPlay.grandmaster,
  ];
  List<EColorOfTable> colorOfTable = [
    EColorOfTable.red,
    EColorOfTable.blue,
    EColorOfTable.yellow,
    EColorOfTable.green,
    EColorOfTable.black,
    EColorOfTable.idk,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 19),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.chevron_left,
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New prediction',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 28,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  '${page.value + 1}/7',
                  style: const TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Color(0xFF1144FA),
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (page.value == 0)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Dialog(
                                        child: SizedBox(
                                          width: 300,
                                          height: 200,
                                          child: CupertinoDatePicker(
                                            mode: CupertinoDatePickerMode.date,
                                            initialDateTime: DateTime.now(),
                                            onDateTimeChanged:
                                                (DateTime newDate) {
                                              selectedDate = newDate;
                                              dateController.text =
                                                  DateFormat("MM/dd/yy")
                                                      .format(newDate);
                                              prediction.date = newDate;
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ));
                        },
                        cursorColor: Colors.grey,
                        readOnly: true,
                        controller: dateController,
                        style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        decoration: InputDecoration(
                          hintText: 'Enter a date',
                          hintStyle: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                          filled: true,
                          fillColor: const Color(0xFFF3F6FF),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  if (page.value == 1)
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 18, 16, 16),
                      child: Row(
                        children: [
                          Text(
                            'Select a game',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: getGameTypes(),
                    ),
                  if (page.value == 2)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.grey,
                        controller: sumController,
                        style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        decoration: InputDecoration(
                          hintText: 'Sum your bank',
                          hintStyle: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                          filled: true,
                          fillColor: const Color(0xFFF3F6FF),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (value) {
                          sumController.text = value;
                          setState(() {});
                        },
                      ),
                    ),
                  if (page.value == 3)
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 18, 16, 16),
                      child: Row(
                        children: [
                          Text(
                            'Number of opponents',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 3)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: getNumbers(),
                    ),
                  if (page.value == 4)
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 18, 16, 16),
                      child: Row(
                        children: [
                          Text(
                            'Your level of play',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 4)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: getLevels(),
                    ),
                  if (page.value == 5)
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 18, 16, 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Can you bluff?',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 5)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                prediction.canBluff = true;
                                setState(() {});
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 18, 16, 18),
                                decoration: BoxDecoration(
                                    color: prediction.canBluff == null ||
                                            prediction.canBluff == false
                                        ? const Color(0xFFF3F6FF)
                                        : Colors.white,
                                    border: prediction.canBluff == null ||
                                            prediction.canBluff == false
                                        ? null
                                        : Border.all(
                                            color: const Color(0xFF1144FA)),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  'Yes',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      color: prediction.canBluff == null ||
                                              prediction.canBluff == false
                                          ? const Color(0xFF929499)
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                prediction.canBluff = false;
                                setState(() {});
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 18, 16, 18),
                                decoration: BoxDecoration(
                                    color: prediction.canBluff == null ||
                                            prediction.canBluff == true
                                        ? const Color(0xFFF3F6FF)
                                        : Colors.white,
                                    border: prediction.canBluff == null ||
                                            prediction.canBluff == true
                                        ? null
                                        : Border.all(
                                            color: const Color(0xFF1144FA)),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  'No',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      color: prediction.canBluff == null ||
                                              prediction.canBluff == true
                                          ? const Color(0xFF929499)
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 5)
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Have you won when you bluffed?',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 5)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                prediction.haveYouWon = true;
                                setState(() {});
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 18, 16, 18),
                                decoration: BoxDecoration(
                                    color: prediction.haveYouWon == null ||
                                            prediction.haveYouWon == false
                                        ? const Color(0xFFF3F6FF)
                                        : Colors.white,
                                    border: prediction.haveYouWon == null ||
                                            prediction.haveYouWon == false
                                        ? null
                                        : Border.all(
                                            color: const Color(0xFF1144FA)),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  'Yes',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      color: prediction.haveYouWon == null ||
                                              prediction.haveYouWon == false
                                          ? const Color(0xFF929499)
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                prediction.haveYouWon = false;
                                setState(() {});
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 18, 16, 18),
                                decoration: BoxDecoration(
                                    color: prediction.haveYouWon == null ||
                                            prediction.haveYouWon == true
                                        ? const Color(0xFFF3F6FF)
                                        : Colors.white,
                                    border: prediction.haveYouWon == null ||
                                            prediction.haveYouWon == true
                                        ? null
                                        : Border.all(
                                            color: const Color(0xFF1144FA)),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  'No',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      color: prediction.haveYouWon == null ||
                                              prediction.haveYouWon == true
                                          ? const Color(0xFF929499)
                                          : Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 5)
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'How many times have you won?',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 5)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.grey,
                        controller: countController,
                        style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        decoration: InputDecoration(
                          hintText: 'Quantity',
                          hintStyle: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                          filled: true,
                          fillColor: const Color(0xFFF3F6FF),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onChanged: (value) {
                          countController.text = value;
                          setState(() {});
                        },
                      ),
                    ),
                  if (page.value == 6)
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 18, 16, 16),
                      child: Row(
                        children: [
                          Text(
                            'What color is the card table?',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  if (page.value == 6)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: getColors(),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: InkWell(
              onTap: () {
                if (page.value < 6) {
                  if ((page.value == 0 && dateController.text.isNotEmpty) ||
                      (page.value == 1) ||
                      (page.value == 3) ||
                      (page.value == 4) ||
                      (page.value == 6) ||
                      (page.value == 2 && sumController.text.isNotEmpty) ||
                      (page.value == 5 &&
                          countController.text.isNotEmpty &&
                          prediction.canBluff != null &&
                          prediction.haveYouWon != null)) {
                    page.value++;
                    setState(() {});
                  }
                } else {
                  prediction.date = selectedDate;
                  prediction.game = selectedGame;
                  prediction.colorOfTable = selectedColor;
                  prediction.levelOfPlay = selectedLevel;
                  prediction.sum = double.parse(sumController.text).toInt();
                  prediction.timesCount =
                      double.parse(countController.text).toInt();
                  prediction.percent = doubleInRange(0.0, 100.0);
                  predictions.add(prediction);

                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const HomePage()),
                      (route) => false);
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: (page.value == 0 && dateController.text.isEmpty) ||
                            (page.value == 2 && sumController.text.isEmpty) ||
                            (page.value == 5 &&
                                countController.text.isEmpty &&
                                (prediction.canBluff == null ||
                                    prediction.haveYouWon == null))
                        ? const Color(0xFF1144FA).withOpacity(0.4)
                        : const Color(0xFF1144FA),
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  'Continue',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getNumbers() {
    List<Widget> list = [];
    for (var number in numbers) {
      list.add(InkWell(
        onTap: () {
          selectedNumber = number;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
          decoration: BoxDecoration(
              color: selectedNumber != number
                  ? const Color(0xFFF3F6FF)
                  : Colors.white,
              border: selectedNumber != number
                  ? null
                  : Border.all(color: const Color(0xFF1144FA)),
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            number.text,
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                color: selectedNumber != number
                    ? const Color(0xFF929499)
                    : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 10,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getGameTypes() {
    List<Widget> list = [];
    for (var game in gameType) {
      list.add(InkWell(
        onTap: () {
          selectedGame = game;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
          decoration: BoxDecoration(
              color:
                  selectedGame != game ? const Color(0xFFF3F6FF) : Colors.white,
              border: selectedGame != game
                  ? null
                  : Border.all(color: const Color(0xFF1144FA)),
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            game.text,
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                color: selectedGame != game
                    ? const Color(0xFF929499)
                    : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 10,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getLevels() {
    List<Widget> list = [];
    for (var level in levelOfPlay) {
      list.add(InkWell(
        onTap: () {
          selectedLevel = level;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
          decoration: BoxDecoration(
              color: selectedLevel != level
                  ? const Color(0xFFF3F6FF)
                  : Colors.white,
              border: selectedLevel != level
                  ? null
                  : Border.all(color: const Color(0xFF1144FA)),
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            level.text,
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                color: selectedLevel != level
                    ? const Color(0xFF929499)
                    : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 10,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getColors() {
    List<Widget> list = [];
    for (var color in colorOfTable) {
      list.add(InkWell(
        onTap: () {
          selectedColor = color;
          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 18),
          decoration: BoxDecoration(
              color: selectedColor != color
                  ? const Color(0xFFF3F6FF)
                  : Colors.white,
              border: selectedColor != color
                  ? null
                  : Border.all(color: const Color(0xFF1144FA)),
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            color.text,
            style: TextStyle(
                fontFamily: 'SF Pro Text',
                color: selectedColor != color
                    ? const Color(0xFF929499)
                    : Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 10,
      ));
    }
    return Column(
      children: list,
    );
  }

  double doubleInRange(num start, num end) =>
      Random().nextDouble() * (end - start) + start;
}
