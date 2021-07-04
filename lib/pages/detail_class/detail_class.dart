import 'package:flutter/material.dart';
import 'package:gunita/pages/landing_page/local_widget/button_appbar.dart';

class DetailClass extends StatelessWidget {
  DetailClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    final Color accentColor = Theme.of(context).accentColor;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
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
              padding: EdgeInsets.only(right: 50, left: 50, bottom: 10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: ClipRRect(
                          child: Image.asset('online_class/wayangsunar.jpg',
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 500,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back),
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Back',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mengenal Pertunjukkan Wayang Kontemporer',
                                        style: textTheme.headline3!
                                            .copyWith(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'Ketua Komunitas Wayang Sunar',
                                        style: textTheme.subtitle1!.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 10,
                                            width: 10,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.red),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Live on Zoom Meeting',
                                            style: textTheme.bodyText1!
                                                .copyWith(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: 45),
                                      Container(
                                        width: 250,
                                        height: 250,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.all(30),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Hari dan tanggal',
                                                style: textTheme.headline5!
                                                    .copyWith(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Segera',
                                                style: textTheme.subtitle1!
                                                    .copyWith(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 50,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {},
                                                child: Text('Set Pengingat'),
                                                style: ElevatedButton.styleFrom(
                                                  fixedSize: Size(200, 50),
                                                  primary: accentColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 70),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Deskripsi',
                              style: textTheme.headline4!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'Wayang kontemporer merupakan pengimplementasi pertunjukkan wayang yang dikemas dalam bentuk kekinian. Salah satu jenis wayang kontemporer yaitu wayang sunar. Wayang Sunar memiliki bentuk yang terinspirasi dari ogoh-ogoh yang ada di Bali, dari pola ulatan atau rajutan Bali yang digunakan menciptakan kesan baru pada bentuk wayang yang dapat bergerak melalui tangkai yang dipasang dalam setiap persendian wayang. ',
                                style: textTheme.body1!.copyWith(
                                  color: Colors.black,
                                  height: 2,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              'Waktu Pelaksanaan',
                              style: textTheme.headline4!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'Segera',
                                style: textTheme.body1!.copyWith(
                                  color: Colors.black,
                                  height: 2,
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              'Kontak',
                              style: textTheme.headline4!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'Silahkan hubungi kami melalui email : lentera.startup@gmail.com',
                                style: textTheme.body1!.copyWith(
                                  color: Colors.black,
                                  height: 2,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: textTheme.headline4!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 300,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Image.asset('illustration/zoom.png'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
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
