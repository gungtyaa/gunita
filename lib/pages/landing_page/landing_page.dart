import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gunita/pages/detail_class/detail_class.dart';
import 'package:gunita/pages/landing_page/local_widget/button_appbar.dart';
import 'package:gunita/pages/landing_page/local_widget/class_list.dart';
import 'package:gunita/pages/landing_page/local_widget/search_filter.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return _BuildWebLandingPage();
  }
}

class _BuildWebLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> coverItems = [
      'cover/bali1.jpeg',
      'cover/bali2.jpeg',
      'cover/bali3.jpeg',
    ];

    final Color primaryColor = Theme.of(context).primaryColor;
    final Color accentColor = Theme.of(context).accentColor;
    final TextTheme textTheme = Theme.of(context).textTheme;

    CarouselController buttonCarouselController = CarouselController();

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 150),
          child: Text(
            'Gunita',
            style: textTheme.headline4!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        elevation: 0,
        actions: [
          ButtonAppBar(
            title: 'Login',
            isBackgroundColor: false,
            textColor: Colors.black,
          ),
          SizedBox(width: 20),
          ButtonAppBar(
            title: 'Sign Up',
            isBackgroundColor: true,
            textColor: accentColor,
          ),
          SizedBox(width: 180),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 50, left: 50, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.center,
                    children: [
                      CarouselSlider(
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                            height: 500.0, viewportFraction: 1.0),
                        items: coverItems.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(i,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.fitWidth),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.5),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.only(left: 6),
                                onPressed: () {
                                  buttonCarouselController.previousPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                },
                                icon: Icon(Icons.arrow_back_ios),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.5),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.only(left: 6),
                                onPressed: () {
                                  buttonCarouselController.nextPage(
                                      duration: Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                },
                                icon: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 450,
                        child: Container(
                          height: 120,
                          width: 1100,
                          decoration: BoxDecoration(
                            color: Color(0xFF0B0734),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20, left: 50, right: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SearchFilter(
                                textTheme: textTheme,
                                accentColor: accentColor,
                                title: 'Mencari',
                                hintText: 'Wayang Kontemporer',
                              ),
                              SearchFilter(
                                textTheme: textTheme,
                                accentColor: accentColor,
                                title: 'Waktu',
                                hintText: 'Bulan ini',
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: accentColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 120),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Event Mendatang',
                          style: textTheme.headline4!.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClassList(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DetailClass();
                                }));
                              },
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets:
                                  'online_class/wayangkontemporer.jpeg',
                              price: 'Rp 55.000',
                              month: 'SEP',
                              date: '20',
                              title: 'Mengenal Wayang Kontemporer',
                              description:
                                  'Webinar ini akan membahas seputar sajian pertunjukkan yang mengembangkan wayang dalam lingkup kekinian',
                            ),
                            ClassList(
                              onTap: () {},
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets: 'online_class/wayanginovatif.jpeg',
                              price: 'Rp 50.000',
                              month: 'SEP',
                              date: '25',
                              title: 'Mengenal Wayang Kulit Inovatif',
                              description:
                                  'Webinar ini akan membahas seputar wayang kulit inovatif',
                            ),
                            ClassList(
                              onTap: () {},
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets: 'online_class/wayangtradisi.jpeg',
                              price: 'Rp 50.000',
                              month: 'OKT',
                              date: '12',
                              title: 'Mengenal Wayang Kulit Tradisi Bali',
                              description:
                                  'Webinar ini akan membahas seputar wayang kulit tradisi Bali',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClassList(
                              onTap: () {},
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets: 'online_class/bali9.jpeg',
                              price: 'Rp 55.000',
                              month: 'SEP',
                              date: '20',
                              title: 'Tips & Trik Dharma Wacana',
                              description:
                                  'Webinar ini akan membahas seputar tips & trik dalam lomba dharma wacana',
                            ),
                            ClassList(
                              onTap: () {},
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets: 'online_class/bali13.jpeg',
                              price: 'Rp 22.000',
                              month: 'SEP',
                              date: '20',
                              title: 'Tips & Trik Dharma Wacana',
                              description:
                                  'Webinar ini akan membahas seputar tips & trik dalam lomba dharma wacana',
                            ),
                            ClassList(
                              onTap: () {},
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets: 'online_class/bali7.jpeg',
                              price: 'Rp 10.000',
                              month: 'SEP',
                              date: '20',
                              title: 'Tips & Trik Dharma Wacana',
                              description:
                                  'Webinar ini akan membahas seputar tips & trik dalam lomba dharma wacana',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClassList(
                              onTap: () {},
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets: 'online_class/bali6.jpeg',
                              price: 'Rp 23.000',
                              month: 'SEP',
                              date: '20',
                              title: 'Tips & Trik Dharma Wacana',
                              description:
                                  'Webinar ini akan membahas seputar tips & trik dalam lomba dharma wacana',
                            ),
                            ClassList(
                              onTap: () {},
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets: 'online_class/bali14.jpeg',
                              price: 'Rp 31.000',
                              month: 'SEP',
                              date: '20',
                              title: 'Tips & Trik Dharma Wacana',
                              description:
                                  'Webinar ini akan membahas seputar tips & trik dalam lomba dharma wacana',
                            ),
                            ClassList(
                              onTap: () {},
                              textTheme: textTheme,
                              accentColor: accentColor,
                              imageAssets: 'online_class/bali15.jpeg',
                              price: 'Rp 43.000',
                              month: 'SEP',
                              date: '20',
                              title: 'Tips & Trik Dharma Wacana',
                              description:
                                  'Webinar ini akan membahas seputar tips & trik dalam lomba dharma wacana',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Center(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFFF3EBFE),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30),
                              child: Text(
                                'Muat Lebih Banyak',
                                style: textTheme.button!
                                    .copyWith(color: accentColor),
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
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFE1E5EA),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'DIDUKUNG OLEH',
                      style: textTheme.headline5!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: primaryColor),
                          width: 200,
                          height: 200,
                          child: Image.asset('partner/inbis.png'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFFACC48)),
                          width: 200,
                          height: 200,
                          child: Image.asset('partner/logopasraman.png'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.black),
                          width: 200,
                          height: 200,
                          child: Image.asset('partner/logowayangsunar.png'),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(125),
                              child: Image.asset('partner/pedalangan.png')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF0B0734),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Made With ',
                      style: textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Color(0xFFF7A12E),
                    ),
                    Text(
                      'By LenteraLifes',
                      style: textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
