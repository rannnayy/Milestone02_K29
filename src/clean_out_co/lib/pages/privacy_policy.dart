import 'package:flutter/material.dart';
import '../utils.dart';

class PrivacyPolicy extends StatelessWidget {
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
                      'Privacy Policy',
                      style: TextStyle(
                          fontSize: 48.0,
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
                        Text('Privacy Policy', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'SampahWarrior built the CleanOut.Co app as a Commercial app. This SERVICE is provided by SampahWarrior and is intended for use as is.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at CleanOut.Co unless otherwise defined in this Privacy Policy.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Information Collection and Use', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'For a better experience, while using our Service, We may require you to provide us with certain personally identifiable information, including but not limited to username, password, email address, telephone number. The information that we request will be retained on your device and is not collected by us in any way.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'The app does use third party services that may collect information used to identify you.',
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
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Log Data', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Cookies', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Service Providers', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'We may employ third-party companies and individuals due to the following reasons:',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          '  \u2022 To facilitate our Service;',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 To provide the Service on our behalf;',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 To perform Service-related services; or',
                          style: isi,
                        ),
                        Text(
                          '  \u2022 To assist us in analyzing how our Service is used.',
                          style: isi,
                        ),
                        Text(
                          'We want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Security', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Links to Other Sites', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Children’s Privacy', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Text('Changes to this Privacy Policy', style: judul),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.',
                          style: isi,
                          textAlign: TextAlign.justify,
                        ),
                        Text(''),
                        Text(
                          'This policy is effective as of 2021-07-30',
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
                              Navigator.pushReplacementNamed(context, '/');
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
