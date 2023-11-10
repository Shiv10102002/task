import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class VideoSectionHome extends StatefulWidget {
  const VideoSectionHome({super.key});

  @override
  State<VideoSectionHome> createState() => _VideoSectionHomeState();
}

class _VideoSectionHomeState extends State<VideoSectionHome> {
  var _currpagenum = 0.0;
  PageController pageController = PageController(viewportFraction: 0.90);
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
    return SizedBox(
      height: 320,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'QnA',
                style: TextStyle(
                  color: Color(0xFF465A63),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Container(
                  padding: const EdgeInsets.only(
                    bottom: 2,
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFF0E678F)),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Color(0xFF0E678F),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                      SizedBox(width: 6),
                      SizedBox(
                        height: 16,
                        width: 16,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color(0xFF0E678F),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              SizedBox(
                height: 230,
                child: PageView.builder(
                  itemCount: 5,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return _videoContainer(index,context);
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
          )
        ],
      ),
    );
  }
}

Widget _videoContainer(int index,var context) {
  return SizedBox(
    height: 230,
     
     width: MediaQuery.of(context).size.width*0.8,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
       height: 166,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        
       ),
       child: ClipRRect(borderRadius: BorderRadius.circular(10),
       child: Image.asset('assets/video.png',fit: BoxFit.cover,),),
    ),
  const Padding(
     padding:  EdgeInsets.all(8.0),
     child:  Text(
              "Top 5 Tips for Excelling in Your Freshman Year: A Student's Guide",
              style: TextStyle(
                color: Color(0xFF08232F),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
               
              ),
              textScaleFactor: 1,
            ),
   ),
    ]),
  );
}
