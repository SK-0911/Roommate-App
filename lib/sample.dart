import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool _showBottomSheet = false;

  void _toggleBottomSheet() {
    setState(() {
      _showBottomSheet = !_showBottomSheet;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _toggleBottomSheet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: Container(
        // width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff2a4e8f),
        ),
        child:
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 360,
              height: 777,
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // width: double.infinity,
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 11,
                          height: 7,
                        ),
                        const Text(
                          '  My Profile',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            height: 1.495,
                            color: Color(0xfffff1f1),
                          ),
                        ),
                        Container(
                          width: 16,
                          height: 16,
                          child:
                          const Icon(
                              Icons.add_a_photo
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // width: double.infinity,
                    height: 693,
                    child:
                    Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 60,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 360,
                              height: 633,
                              child:
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 121,
                          top: 0,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 120,
                              height: 120,
                              child:
                              Icon(
                                Icons.add_a_photo_outlined,
                                // fill:  BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 202.6331157684,
                          top: 76.6331939697,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 39.73,
                              height: 39.73,
                              child:
                              Icon(
                                  Icons.piano_off
                                // fit:  BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 97,
                          top: 147,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 79,
                              height: 18,
                            ),
                          ),
                        ),
                        Positioned(
                          // nomangmailcomcsm (1:67)
                          left: 182,
                          top: 147,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 93,
                              height: 17,
                              child:
                              Text(
                                'noman@gmail.com',
                                textAlign: TextAlign.center,
                                style: TextStyle(

                                  fontSize: 11,
                                  height: 1.495,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // line5gsd (1:68)
                          left: 179,
                          top: 148,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 1,
                              height: 17,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // myaccountnZH (1:69)
                          left: 77   ,
                          top: 378   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 95   ,
                              height: 27   ,
                              child:
                              Text(
                                'My Account',
                                style:  TextStyle(
                                  // 'Kanit',
                                  fontSize: 18 ,
                                  fontWeight: FontWeight.w400,
                                  height: 1.495   ,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle374mh (1:70)
                          left: 13   ,
                          top: 185   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 334   ,
                              height: 122   ,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20  ),
                                  color: Color(0xff294e8e),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // addressesmAK (1:71)
                          left: 79.5   ,
                          top: 439   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 74   ,
                              height: 24   ,
                              child:
                              Text(
                                'Addresses',
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                  // 'Kanit',
                                  fontSize: 16 ,
                                  fontWeight: FontWeight.w400,
                                  height: 1.495   ,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // transactionhistoryDo1 (1:72)
                          left: 72   ,
                          top: 499   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 156  ,
                              height: 27   ,
                              child:
                              Text(
                                'Transaction history',
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                  // 'Kanit',
                                  fontSize: 18 ,
                                  fontWeight: FontWeight.w400,
                                  height: 1.495  ,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // paymentsWXD (1:73)
                          left: 77   ,
                          top: 560   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 81   ,
                              height: 27   ,
                              child:
                              Text(
                                'Payments',
                                style:  TextStyle(
                                  // 'Kanit',
                                  fontSize: 18 ,
                                  fontWeight: FontWeight.w400,
                                  height: 1.495   ,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // helpfaqC99 (1:74)
                          left: 80   ,
                          top: 620  ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 90   ,
                              height: 27  ,
                              child:
                              Text(
                                'Help & FAQ',
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                  // 'Kanit',
                                  fontSize: 18 ,
                                  fontWeight: FontWeight.w400,
                                  height: 1.495   ,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle100G91 (1:75)
                          left: 24   ,
                          top: 371   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 42  ,
                              height: 42  ,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15   ),
                                  color: Color(0xfffaecec),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // iconlylightoutlineprofileAEP (1:76)
                          left: 37.6666717529  ,
                          top: 382.8334274292   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 14.52   ,
                              height: 18.21  ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 14.52* ,
                              //   height: 18.21 *  ,
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle39FFq (1:77)
                          left: 24   ,
                          top: 431 ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 43   ,
                              height: 43   ,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15   ),
                                  color: Color(0xffeefaec),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // fill39s1 (1:78)
                          left: 37  ,
                          top: 443   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 16.5   ,
                              height: 19.5  ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 16.5* ,
                              //   height: 19.5 *  ,
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          // fill1eYs (1:81)
                          left: 42  ,
                          top: 448   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 6.5 ,
                              height: 6.5  ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 6.5* ,
                              //   height: 6.5 *  ,
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle101k67 (1:84)
                          left: 24   ,
                          top: 491   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 43  ,
                              height: 43  ,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffecedfa),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // iconlylightoutlineswapSUj (1:85)
                          left: 35.9098205566  ,
                          top: 504.0823364258  ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 17.95  ,
                              height: 17.83  ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 17.95* ,
                              //   height: 17.83 *  ,
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle102ut7 (1:86)
                          left: 24  ,
                          top: 553   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 43   ,
                              height: 43  ,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15   ),
                                  color: Color(0xfffff2e3),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // iconlylightoutlinebuyD87 (1:87)
                          left: 36.190612793  ,
                          top: 566.7499084473  ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 18.33  ,
                              height: 17.91  ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 18.33* ,
                              //   height: 17.91 *  ,
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle103gGb (1:88)
                          left: 24   ,
                          top: 612   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 43   ,
                              height: 43  ,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15   ),
                                  color: Color(0xfffcffdf),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          // iconlylightoutlinechatacs (1:89)
                          left: 35.9166717529   ,
                          top: 623.9169311523   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 19.7  ,
                              height: 19.7  ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 19.7* ,
                              //   height: 19.7 *  ,
                              // ),
                            ),
                          ),
                        ),
                        const Positioned(
                          // vectorTRm (1:90)
                          left: 320  ,
                          top: 387.0000305176  ,
                          child:
                           Align(
                            child:
                            SizedBox(
                              width: 6.84  ,
                              height: 12   ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 6.84* ,
                              //   height: 12 *  ,
                              // ),
                            ),
                          ),
                        ),
                        const Positioned(
                          // vectorYy1 (1:91)
                          left: 320   ,
                          top: 448.0000305176 ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 6.84   ,
                              height: 12   ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 6.84* ,
                              //   height: 12 *  ,
                              // ),
                            ),
                          ),
                        ),
                        const Positioned(
                          // vectorFcX (1:92)
                          left: 320  ,
                          top: 508.0000305176  ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 6.84 ,
                              height: 12   ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 6.84* ,
                              //   height: 12 *  ,
                              // ),
                            ),
                          ),
                        ),
                        const Positioned(
                          // vectorMvT (1:93)
                          left: 320   ,
                          top: 568.0000305176   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 6.84   ,
                              height: 12   ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 6.84* ,
                              //   height: 12 *  ,
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          // vectorUEP (1:94)
                          left: 320  ,
                          top: 628.0000305176  ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 6.84   ,
                              height: 12   ,
                              // child:
                              // Image.network(
                              //   [Image url] as String
                              //   width: 6.84* ,
                              //   height: 12 *  ,
                              // ),
                            ),
                          ),
                        ),
                        Positioned(
                          // accountsettingsMJB (1:96)
                          left: 27 ,
                          top: 325  ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 137   ,
                              height: 27   ,
                              child:
                              Text(
                                'Account Settings',
                                style:  TextStyle(
                                  // 'Kanit',
                                  fontSize: 18 ,
                                  fontWeight: FontWeight.w400,
                                  height: 1.495    ,
                                  color: Color(0xb2000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // nomanmanzoorpxT (1:97)
                          left: 124   ,
                          top: 126   ,
                          child:
                          Align(
                            child:
                            SizedBox(
                              width: 110   ,
                              height: 23   ,
                              child:
                              Text(
                                'Noman Manzoor',
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                  // 'Kanit',
                                  fontSize: 15 ,
                                  height: 1.495   ,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // maskgroup11iY3 (1:98)
                          left: 13   ,
                          top: 182  ,
                          child:
                          Container(
                            // padding: EdgeInsets.fromLTRB(
                            //     34.31 *  , 41 *  , 34.31 *  , 22 *  ),
                            width: 330,
                            height: 120,
                            decoration: BoxDecoration(

                            ),
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // mywalletZ2s (1:106)
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
                                  child:
                                  Text(
                                    'My Wallet',
                                    style: TextStyle(
                                      // 'Kanit',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      height: 1.495,
                                      color: Color(0xfffafafa),
                                    ),
                                  ),
                                ),
                                Text(
                                  // FgP (1:107)
                                  '₹ 0',
                                  style: TextStyle(
                                    // 'Kanit',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    height: 1.495,
                                    color: Color(0xfffffdfd),
                                  ),
                                ),
                              ],
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
              // autogroupkec3bET (SbFaVubi1ZS5RTaantKEc3)
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // rectangle35Jef (1:53)
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0.5),
                    width: 330,
                    height: 276,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0x1619046c),
                    ),
                  ),
                  Container(
                    // image125pN7 (1:60)
                      margin: EdgeInsets.fromLTRB(33, 0, 0, 0),
                      width: 669,
                      height: 252,
                      // child:
                    // Image.network(
                    //     [Image url] as String
                    // ),
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
