import 'package:barista/components/button/custom_button.dart';
import 'package:barista/constant.dart';
import 'package:barista/providers/order_provider.dart';
import 'package:barista/screens/order/components/availability_row.dart';
import 'package:barista/screens/order/components/number_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatefulWidget {
  static const routeName = '/order_screen';

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  TextEditingController? _textController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    final amount = Provider.of<Order>(context);
    final n = amount.orderAmount.toString();

    !n.isEmpty && int.parse(n) > 0
        ? setState(() {
            _textController!.text = amount.orderAmount.toString();
          })
        : null;

    print(_textController!.text.isEmpty);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: kButtonTextColor,
        automaticallyImplyLeading: false,
        leading: CupertinoButton(
          padding: EdgeInsets.all(0),
          child: SvgPicture.asset('assets/icons/arrow_back.svg'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 60,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: kButtonBgColor,
                radius: 90,
                child: CircleAvatar(
                  radius: 85,
                  backgroundImage: AssetImage('assets/images/user.jpg'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Jhon Doe',
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              Text(
                'Zurich, Switzerland',
                style: TextStyle(
                  color: kBodyTextColor,
                  fontFamily: kFontFamily,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: kBodyTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: AvailabilityRow(),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: kBodyTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: deviceWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order',
                      style: TextStyle(
                        color: kBodyTextColor,
                        fontFamily: kFontFamily,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CupertinoTextField(
                      decoration: BoxDecoration(
                        color: CupertinoColors.tertiarySystemFill,
                        border: Border(
                          bottom: BorderSide(
                            color: CupertinoColors.white,
                            width: 1,
                          ),
                        ),
                      ),
                      placeholder: 'Enter total number of coffees',
                      placeholderStyle: TextStyle(
                        color: Color.fromRGBO(193, 193, 193, 0.5),
                        fontFamily: kFontFamily,
                      ),
                      showCursor: true,
                      cursorColor: kButtonBgColor,
                      cursorWidth: 1,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: CupertinoColors.white,
                      ),
                      controller: _textController,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberCard(number: 1),
                  NumberCard(number: 2),
                  NumberCard(number: 3),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberCard(number: 4),
                  NumberCard(number: 5),
                  NumberCard(number: 6),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberCard(number: 7),
                  NumberCard(number: 8),
                  NumberCard(number: 9),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberCard(number: 0),
                ],
              ),
              CustomButton(
                onPress: _textController!.text.isEmpty
                    ? null
                    : () {
                        showCupertinoDialog<void>(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                            title: Container(
                                width: 500,
                                child: const Text(
                                    'Coffee reward redemption request!')),
                            content: const Text(
                                'John Doe is ready to redeem their free coffee!'),
                            actions: <CupertinoDialogAction>[
                              CupertinoDialogAction(
                                child: const Text('Cancel'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              CupertinoDialogAction(
                                child: const Text('Accept'),
                                onPressed: () {
                                  // Do something destructive.
                                },
                              )
                            ],
                          ),
                        );
                      },
                buttonText: 'Confirm',
                color: _textController!.text.isEmpty ? Color(0xFFCACACA) : null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
