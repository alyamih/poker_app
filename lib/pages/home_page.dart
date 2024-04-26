import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:poker_app/bottom_bar.dart';
import 'package:poker_app/model/prediction_item.dart';
import 'package:poker_app/pages/add_prediction_page.dart';

EPageOnSelect page = EPageOnSelect.homePage;
List<PredictionItem> predictions = [];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    getData(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 60, 16, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Poker predictions',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 28,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: predictions.isEmpty
                    ? SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 17),
                                child: Image.asset('assets/home.png'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 12),
                                child: Text(
                                  'Get your prediction',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 60),
                                child: Text(
                                  'Answer the questions and get your poker prediction!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const AddPredictionPage()),
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF1144FA),
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
                            ],
                          ),
                        ),
                      )
                    : SingleChildScrollView(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(16, 18, 16, 16),
                              child: Row(
                                children: [
                                  Text(
                                    'Your prediction',
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: getPredictions(),
                            )
                          ],
                        ),
                      ),
              ),
              const BottomBar()
            ],
          ),
          if (predictions.isNotEmpty)
            Positioned(
              bottom: 90,
              right: 16,
              child: InkWell(
                onTap: () {
                  prediction = PredictionItem();
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const AddPredictionPage()),
                  );
                },
                child: Container(
                  height: 56,
                  width: 56,
                  padding: const EdgeInsets.fromLTRB(11, 10, 10, 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFF1144FA))),
                  child: const Icon(
                    Icons.add,
                    color: Color(0xFF1144FA),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }

  Widget getPredictions() {
    List<Widget> list = [];
    for (var item in predictions) {
      list.add(Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: const Color(0xFF1144FA),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'win',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 18,
                            color: Color(0xFF24FFA3),
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        '${item.percent!.toStringAsFixed(2)}%',
                        style: const TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontSize: 32,
                            color: Color(0xFF24FFA3),
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  Text(
                    DateFormat("MM/dd/yy").format(item.date!),
                    style: const TextStyle(
                        fontFamily: 'SF Pro Text',
                        fontSize: 18,
                        color: Color(0xFFcfdafe),
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 26),
              child: Divider(
                height: 2,
                color: Color(0xFFcfdafe),
              ),
            ),
            const Text(
              'You are a good bluffer and have a lot of experience in the game - this will increase your likelihood of winning!',
              style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontSize: 18,
                  color: Color(0xFFcfdafe),
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ));
      list.add(const SizedBox(
        height: 12,
      ));
    }
    return Column(
      children: list,
    );
  }
}
