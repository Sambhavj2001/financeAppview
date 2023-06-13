import 'package:financeapp/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: grey.withOpacity(0.01),
                    spreadRadius: 10,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(CupertinoIcons.back),
                        Icon(CupertinoIcons.search),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transaction\'s',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: mainFontColor,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: mainFontColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 25, right: 25, bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TransactionType(
                        text: 'All',
                        color1: buttonColor,
                        color2: Colors.white,
                      ),
                      TransactionType(
                        text: 'Income',
                        color1: white,
                        color2: Colors.black26,
                      ),
                      TransactionType(
                        text: 'Expenses',
                        color1: white,
                        color2: Colors.black26,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      color: mainFontColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, right: 25, left: 25),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: grey.withOpacity(0.03),
                          spreadRadius: 10,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Center(
                              child: Icon(
                                Icons.payment,
                                color: mainFontColor,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              width: (size.width - 90) * 0.7,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Payment',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Payment from Asta',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: black.withOpacity(0.5),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '\30',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                    margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
                    child: Container(
                      width: 325,
                      height: 325,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/bg.jpg'),
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionType extends StatelessWidget {
  final String text;
  final Color color1;
  final Color color2;

  const TransactionType({
    super.key,
    required this.text,
    required this.color1,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: color2,
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
