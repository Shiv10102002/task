import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class QnaSlider extends StatefulWidget {
  const QnaSlider({super.key});

  @override
  State<QnaSlider> createState() => _QnaSliderState();
}

class _QnaSliderState extends State<QnaSlider> {
  var _currpagenum = 0.0;
  PageController pageController = PageController(viewportFraction: 0.95);
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currpagenum = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 105,
              minWidth: MediaQuery.of(context).size.width * 0.95),
          // color: AppColor.maincolor,
          child: PageView.builder(
            itemCount: 5,
            controller: pageController,
            itemBuilder: (context, index) {
              return _itemContainer(index);
            },
          ),
        ),
       const SizedBox(
          height: 10,
        ),
        //dot indicator section;
        DotsIndicator(
          dotsCount: 5,
          position: _currpagenum.toInt(),
          decorator: DotsDecorator(
            activeColor: const Color.fromRGBO(70, 90, 99, 1),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget _itemContainer(
    int index,
  ) {
    return Padding(
      
      padding: const EdgeInsets.only(right:8.0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: 105, minWidth: MediaQuery.of(context).size.width * 0.95),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: const Color(0xFFE7E9EB),
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: const Color.fromRGBO(98,156, 182, 1))),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Text(
                    'Which IITs do not conduct interviews for MTech admission in Civil Engineering Specializations?',
                    style: TextStyle(
                      color: Color(0xFF08232F),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    textScaleFactor: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
