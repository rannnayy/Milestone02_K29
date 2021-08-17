import 'package:flutter/material.dart';
import '../utils.dart';

class TermsCondition extends StatefulWidget {
  static var routeName;
  @override
  _TermsConditionState createState() => _TermsConditionState();
}

class _TermsConditionState extends State<TermsCondition> {
  static var routeName = '/termsofservice';
  final isi = TextStyle(
    fontSize: 14.0,
    fontFamily: 'AbhayaLibre',
  );

  final judul = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    fontFamily: 'AbhayaLibre',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26.0, 0, 26.0, 0),
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 17.0, 14.0, 0),
                    child: Text(
                      'Terms & Conditions',
                      style: TextStyle(
                          fontSize: 34.0,
                          fontFamily: 'AbhayaLibre',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.85,
                          shadows: [
                            Shadow(
                                blurRadius: 10.0,
                                color: Colors.grey,
                                offset: Offset(5.0, 5.0))
                          ]),
                    ),
                  ),
                  Divider(
                    height: 0.0,
                    color: Colors.black,
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14.0, 0, 14, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Terms & Conditions', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to SampahWarrior.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'SampahWarrior is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'The CleanOut.Co app stores and processes personal data that you have provided to us, in order to provide our Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the CleanOut.Co app won’t work properly or at all.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'The app does use third party services that declare their own Terms and Conditions.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'Link to privacy policy of third party service providers used by the app',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '  \u2022 Google Play Services',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 Google Maps API',
                          style: isi,
                        ),
                        Text(''),
                        Text(
                          'If you’re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'Along the same lines, SampahWarrior cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, SampahWarrior cannot accept responsibility.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'With respect to SampahWarrior’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. SampahWarrior accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'At some point, we may wish to update the app. The app is currently available on Android & iOS – the requirements for both systems (and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. SampahWarrior does not promise that it will always update the app so that it is relevant to you and/or works with the Android & iOS version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Changes to this Terms and Conditions',
                            style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'This Terms and Conditions is effective as of 2021-07-30',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Contact Us', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact us at SampahWarrior.CleanOut@gmail.com.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'This privacy policy page was created at privacypolicytemplate.net and modified/generated by App Privacy Policy Generator',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color: MyColors.greenColor,
                            ),
                            label: Text(
                              'Back',
                              style: TextStyle(
                                  color: MyColors.greenColor,
                                  fontFamily: 'AbhayaLibre',
                                  fontSize: 20.0),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0))),
                                side: BorderSide(
                                    color: MyColors.greenColor, width: 1))),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: MyColors.lightGreenColor,
    );
  }
}
