import 'package:flutter/material.dart';
import 'package:poker_app/pages/home_page.dart';
import 'package:poker_app/pages/news_page.dart';
import 'package:poker_app/pages/settings_page.dart';

enum EPageOnSelect { homePage, newsPage, settingsPage }

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF303030).withOpacity(0.08),
              blurRadius: 15.0,
              spreadRadius: 10.0,
              offset: const Offset(
                5.0,
                5.0,
              ),
            ),
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      padding: const EdgeInsets.fromLTRB(47, 10, 47, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              page = EPageOnSelect.homePage;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                  (route) => false);
              setState(() {});
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.homePage
                        ? Image.asset(
                            'assets/home_icon.png',
                            color: const Color(0xFF1144FA),
                          )
                        : Image.asset(
                            'assets/home_icon.png',
                            color: const Color(0xFF666666),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Operations',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.homePage
                                  ? const Color(0xFF1144FA)
                                  : const Color(0xFF666666),
                              fontSize: 12)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              page = EPageOnSelect.newsPage;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const NewsPage()),
                  (route) => false);
              setState(() {});
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.newsPage
                        ? Image.asset(
                            'assets/news.png',
                            color: const Color(0xFF1144FA),
                          )
                        : Image.asset(
                            'assets/news.png',
                            color: const Color(0xFF666666),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('News',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.newsPage
                                  ? const Color(0xFF1144FA)
                                  : const Color(0xFF666666),
                              fontSize: 12)),
                    )
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              page = EPageOnSelect.settingsPage;
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsPage()),
                  (route) => false);
              setState(() {});
            },
            child: SizedBox(
                width: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.settingsPage
                        ? Image.asset(
                            'assets/settings_icon.png',
                            color: const Color(0xFF1144FA),
                          )
                        : Image.asset(
                            'assets/settings_icon.png',
                            color: const Color(0xFF666666),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('Settings',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w500,
                              color: page == EPageOnSelect.settingsPage
                                  ? const Color(0xFF1144FA)
                                  : const Color(0xFF666666),
                              fontSize: 12)),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
