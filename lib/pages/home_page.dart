import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:walletappui/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    balance: 123123.1,
                    cardNumber: 1234123,
                    expiryMonth: 1,
                    expiryYear: 24,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 123123.1,
                    cardNumber: 1234123,
                    expiryMonth: 1,
                    expiryYear: 24,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 123123.1,
                    cardNumber: 1234123,
                    expiryMonth: 1,
                    expiryYear: 24,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
              controller: _controller,
              count: 3,
            ),
            const SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MyButton(
                    btnText: "Send",
                    iconImgPath: "lib/icons/send-money.png",
                  ),
                  MyButton(
                    btnText: "Pay",
                    iconImgPath: "lib/icons/credit-card.png",
                  ),
                  MyButton(
                    btnText: "Bills",
                    iconImgPath: "lib/icons/bill.png",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Column(
                children: const [
                  MyListTile(
                    iconImgPath: "lib/icons/statistics.png",
                    tileTitle: "Statistics",
                    tileSubTitle: "Payment and Income",
                  ),
                  MyListTile(
                    iconImgPath: "lib/icons/transaction.png",
                    tileTitle: "Transaction",
                    tileSubTitle: "Transaction History",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.pink,
              ),
            ),
            IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
