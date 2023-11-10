import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intask1/widgets/college_slider_homepage.dart';
import 'package:intask1/widgets/qna_slider.dart';
import 'package:intask1/widgets/video_section_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
        SliverAppBar(
            elevation: 0,
            expandedHeight: 140,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                return FlexibleSpaceBar(
                    centerTitle: true,
                    title: AnimatedOpacity(
                      duration: const Duration(microseconds: 200),
                      opacity: constraints.biggest.height <= 110 ? 1 : 0,
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 24, left: 24, right: 24, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF0E678F),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/menu.svg',
                                  height: 32,
                                  width: 32,
                                ),
                                const Text(
                                  "My College",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_outlined,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ),
                    background: Container(
                      padding:
                          const EdgeInsets.only(top: 33, left: 24, right: 24),
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment(-0.99, 0.17),
                              end: Alignment(0.99, -0.17),
                              colors: [Color(0xFF0E678F), Color(0xFF629CB6)])),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    'assets/menu.svg',
                                    height: 32,
                                    width: 32,
                                  ),
                                  const Text(
                                    "My College",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.notifications_outlined,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 54,
                            child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  // labelText: 'Mobile Number',
        
                                  hintText: 'Search for Colleges',
                                  hintStyle:
                                      const TextStyle(color: Color(0xFFD5E5EC)),
                                  prefixIcon: FittedBox(
                                    child: Container(
                                      height: 5,
                                      width: 5,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                           
                                            fit: BoxFit.cover,
                                              image: NetworkImage(
                                        'https://s3-alpha-sig.figma.com/img/89fc/caf6/7f87c0a69bc3e94c8f9051756459344d?Expires=1700438400&Signature=Klw4GzEdBVX7b2cbvuz3oFZ3JxMnccm3OFoQqVbS-MuM1Vi4NdLHWzLrSs5Zj5up1ch9UbyoF8zFmxB~af4dQDqO1p4nx4qwOhUVwYp9DtEDU45gpTMA5wTM4WHleD9Y-Pi-VyECcLMlajvK~Te~7N9BgS9ypONVQ86HesOgc51hPzoHtK65gtB-6dWCD03RhcF7gp83VDpDMBhFP6Z8yz~~gt8~jmYPPSovY2WPbCkI3mxrWUk608VKQ7za7IOQ5tRXZPtpUymnBgT1YHqde-Iw~yWQ6YR9Rw9spaxwpEF1q5oP70j2PdJ3E4SF7nHzR6he-8FYxZbNr2xCUX0oGA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                                      
                                      ))),
                                    ),
                                  ),
                                  //  const Icon(
                                  //   Icons.search,
                                  //   size: 20,
                                  //   color: Colors.grey,
                                  // ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFFD5E5EC), width: 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xFF0E678F), width: 2),
                                      borderRadius: BorderRadius.circular(10)),
                                )),
                          ),
                        ],
                      ),
                    ));
              },
            )),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 24, left: 24),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Hi Salmaan!',
                style: TextStyle(
                  color: Color(0xFF08232F),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Quick Links',
                style: TextStyle(
                  color: Color(0xFF465A63),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
             const SizedBox(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    QuicklinkContainer(
                      text: "Ask a question",
                      img: "assets/question.png",
                    ),
                    QuicklinkContainer(
                      text: "Colleges",
                      img: "assets/college.png",
                    ),
                    QuicklinkContainer(
                      text: "Exams",
                      img: "assets/exam.png",
                    ),
                    QuicklinkContainer(
                      text: "Predictors",
                      img: "assets/compare.png",
                    ),
                    QuicklinkContainer(
                      text: "Compare college",
                      img: "assets/comparecollege.png",
                    ),
                    QuicklinkContainer(
                      text: "College rankings",
                      img: "assets/ranking.png",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
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
                              bottom: BorderSide(
                                  width: 1, color: Color(0xFF0E678F)),
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
                  const QnaSlider(),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Top Universities / Colleges',
                        style: TextStyle(
                          color: Color(0xFF465A63),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // ConstrainedBox(
                  //   constraints: const BoxConstraints(
                  //     minHeight: 271,
        
                  //   ),
                  //   child: const CollegeSlider()),
                  SizedBox(height: 560, child: CollegeSlider()),
                  SizedBox(
                    height: 20,
                  ),
                  VideoSectionHome(),
                ],
              )
            ]),
          ),
        )
            ],
          ));
  }
}

class QuicklinkContainer extends StatelessWidget {
 const QuicklinkContainer({super.key, required this.text, required this.img});
 final String text;
 final String img;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 80, minWidth: 100),
      child: Container(
        width: 100,
        // height: 80,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromRGBO(237, 242, 215, 1))),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                img,
                color: Colors.green,
                height: 37,
                width: 37,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(
                  color: Color(0xFF465A63),
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              )
            ]),
      ),
    );
  }
}
