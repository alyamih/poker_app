import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poker_app/bottom_bar.dart';
import 'package:poker_app/pages/show_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({
    super.key,
  });

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 60, 16, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 28,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF1144FA)),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 31),
                        child: Image.asset('assets/settings.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 31),
                        child: Text(
                          'Your opinion is important!',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: const Color(0xFF1144FA),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Text(
                            'Rate app',
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ReadTermsOrPrivacyScreenView(
                                link: 'google.com',
                              )),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: const Color(0xFFDFEAF9),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Terms of use',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xFF1144FA),
                          )
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const ReadTermsOrPrivacyScreenView(
                                link: 'google.com',
                              )),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: const Color(0xFFDFEAF9),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Privacy policy',
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Color(0xFF1144FA),
                          )
                        ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: const Color(0xFFDFEAF9),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Support page',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Color(0xFF1144FA),
                        )
                      ]),
                ),
              ),
            ],
          )),
        ),
        const BottomBar()
      ]),
    );
  }
}
