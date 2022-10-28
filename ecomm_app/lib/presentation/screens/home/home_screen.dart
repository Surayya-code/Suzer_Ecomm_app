import 'package:flutter/material.dart';

import 'pages/account_page/account_page.dart';
import 'pages/cart_page/cart_page.dart';
import 'pages/home_page/home_page.dart';
import 'pages/offer_page/offer_page.dart';
import 'pages/search_page/search_page.dart';
import 'widgets/data.dart';
import 'widgets/navbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController pageController;

  List<Widget> buildCategories() {
    return Data.generateCategories()
        .map((e) => Container(
              padding: const EdgeInsets.only(left: 15, bottom: 18),
            ))
        .toList();
  }

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //print('setstate');

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: const [
            HomePage(),
            SearchPage(),
            CartPage(),
            OfferPage(),
            AccountPage(),
          ],
        ),
      ),
      bottomNavigationBar: NavBarWidget(pageController: pageController),
    );
  }
}
