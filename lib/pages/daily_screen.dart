import 'package:financeapp/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';

class DailyScreen extends StatefulWidget {
  const DailyScreen({Key? key}) : super(key: key);

  @override
  State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 25,
                left: 25,
                right: 25,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Icon(Icons.bar_chart), Icon(Icons.more_vert)],
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("images/profile.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Container(
                          width: (size.width - 40) * 0.6,
                          child: Column(
                            children: [
                              Text(
                                'Asta Clover',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: mainFontColor,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Anime',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IncomeColumn(
                          text1: '\$8900',
                          text2: 'Income',
                        ),
                        Container(
                          width: 0.5,
                          height: 40,
                          color: black.withOpacity(0.3),
                        ),
                        IncomeColumn(
                          text1: '\$5500',
                          text2: 'Expenses',
                        ),
                        Container(
                          width: 0.5,
                          height: 40,
                          color: black.withOpacity(0.3),
                        ),
                        IncomeColumn(
                          text1: '\$890',
                          text2: 'Loan',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OverView',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: mainFontColor,
                            ),
                          ),
                          IconBadge(
                            icon: Icon(Icons.notifications_none),
                            itemCount: 1,
                            badgeColor: red,
                            itemColor: mainFontColor,
                            hideZero: true,
                            top: -1,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'June 13, 2023',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: mainFontColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  MoneyDetail(
                    size: size,
                    icon: Icon(Icons.arrow_upward_rounded),
                    text1: 'Sent',
                    text2: 'Sending Money To Clients',
                    text3: '\$150',
                    color: red,
                  ),
                  SizedBox(height: 5),
                  MoneyDetail(
                    size: size,
                    icon: Icon(Icons.arrow_downward_rounded),
                    text1: 'Receive',
                    text2: 'Receiving Payment From Company',
                    text3: '\$250',
                    color: green,
                  ),
                  SizedBox(height: 5),
                  MoneyDetail(
                    size: size,
                    icon: Icon(CupertinoIcons.money_dollar),
                    text1: 'Loan',
                    text2: 'Loan for the car',
                    text3: '\$400',
                    color: red,
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

class MoneyDetail extends StatelessWidget {
  const MoneyDetail({
    super.key,
    required this.size,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.color,
  });

  final Size size;
  final Icon icon;
  final String text1;
  final String text2;
  final String text3;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
            decoration: BoxDecoration(
              color: Colors.white,
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: arrowbgColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: icon,
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      width: (size.width - 90) * 0.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text1,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            text2,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.5),
                                fontWeight: FontWeight.bold),
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
                            text3,
                            style: TextStyle(
                                fontSize: 15,
                                color: color,
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
    );
  }
}

class IncomeColumn extends StatelessWidget {
  final String text1;
  final String text2;

  const IncomeColumn({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: mainFontColor,
          ),
        ),
        SizedBox(height: 5),
        Text(
          text2,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: black,
          ),
        ),
      ],
    );
  }
}
