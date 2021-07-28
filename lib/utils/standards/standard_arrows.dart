/*import 'package:flutter/material.dart';

class StandardInfoArrow extends StatefulWidget {
  @override
  _StandardInfoArrowState createState() => _StandardInfoArrowState();
}

class _StandardInfoArrowState extends State<StandardInfoArrow> {
  bool isStrechedDropDown = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffbbbbbb)),
                          borderRadius: BorderRadius.all(Radius.circular(27))),
                      child: Column(
                        children: [
                          Container(
                              // height: 45,
                              width: double.infinity,
                              padding: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffbbbbbb),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              constraints: BoxConstraints(
                                minHeight: 45,
                                minWidth: double.infinity,
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Text(
                                        "More Info",
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isStrechedDropDown =
                                              !isStrechedDropDown;
                                        });
                                      },
                                      child: Icon(isStrechedDropDown
                                          ? Icons.arrow_upward
                                          : Icons.arrow_downward))
                                ],
                              )),
                        ],
                      ),
                    )),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}*/

import 'package:flutter/material.dart';
import 'package:u_win/utils/standards/style_standards.dart';

class StandardMoreInfoArrow extends StatelessWidget {

  const StandardMoreInfoArrow({Key? key, required this.moreInfo})
      : super(key: key);

  final bool moreInfo;

  @override
  Widget build(BuildContext context) {
    return Icon(
      moreInfo ? Icons.arrow_downward : Icons.arrow_upward,
      size: StandardIconSize(context).moreInfoArrowSize,
    );
  }
}

class StandardRightArrow extends StatelessWidget {
  const StandardRightArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.keyboard_arrow_right
    );
  }
}
