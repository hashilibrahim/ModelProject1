import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Privacy Policy',
          style: TextStyle(fontSize: 28),
        )),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1, // Slight shadow for the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            '''
Please read these terms of use carefully before you start to use the Og mobile app ("App"). By using our App, you indicate that you accept these terms of use and that you agree to abide by them. If you do not agree to these terms of use, please refrain from using our App.

1. Introduction  
These are the general terms governing your use of the Og mobile app ("App"). The terms cover all use of this App. By using this App, you agree to these terms and conditions.

2. Definitions  
**Content:** All information, communications, software, scripting, photos, text, video, graphics, music, sounds, images, and other materials and services found on the App.  
**We, Us, or Our:** Og, the owner of the App, including its officers, agents, employees, owners, co-branders, and associates.  
**You or Your:** Any user of this App, including any visitor, customer, or member of the general public.

3. Access and Use  
**Temporary Access:** Access to our App is permitted on a temporary basis. We reserve the right to withdraw or amend the service provided on our App without notice. We will not be liable if for any reason our App is unavailable at any time or for any period.  
**Restricted Access:** From time to time, we may restrict access to some parts of our App, or our entire App, to users who have registered with us.  
**Security:** If you choose, or you are provided with, a user identification code, password, or any other piece of information as part of our security procedures, you must treat such information as confidential and not disclose it to any third party. We have the right to disable any user identification code or password at any time if you have failed to comply with any of the provisions of these terms of use.

4. User Obligations  
**Legal Right and Ability:** You represent and warrant that you possess the legal right and ability to enter into this Agreement and to use this App in accordance with all terms and conditions herein. You must be of legal age to enter into any legally binding contracts through this App.  
**Arrangements for Access:** You are responsible for making all arrangements necessary for you to have access to our App and for ensuring that all persons who access our App through your internet connection are aware of these terms and comply with them.

5. Privacy and Data Collection  
**Non-Personal Identifiable Information Collected Automatically:** We may collect and store information about your visit on an anonymous, aggregate basis. This may include the time and length of your visit, the pages you view, and the name of your Internet service provider. This information is used to measure App activity and improve our services.  
**Personal Information:** Instances may arise where Og requests personally identifiable information from App users to provide them with a service or correspondence. This information may include name, mailing address, or email address.

6. Modification of Terms  
We may change these terms and conditions at any time without advance notice. Changed terms will become effective once posted on the App and will not have any retrospective effect on existing contractual arrangements. Your continued use of this App after any change means you have accepted the changed terms and conditions.

7. Disclaimer of Warranties & Limitation of Liability  
**General:** Your access to and use of the App is at your own risk. The App and its content are provided "as is" without any guarantees, conditions, or warranties.  
**No Advice:** Commentary and other materials posted on our App are not intended as advice on which reliance should be placed. We disclaim all liability and responsibility arising from any reliance placed on such materials.  
**Service Availability:** We aim to ensure that the App is available uninterrupted, but we cannot guarantee this. Access may be suspended or restricted for repairs, maintenance, or the introduction of new facilities or services.

8. Intellectual Property Rights  
**Ownership:** We own this App and all content and other rights in it, including intellectual property rights such as copyright and patent rights.  
**Trademarks:** All trademarks on this App are subject to trademark rights of Og. You may not use any trademark, trade name, brand, or logo without first getting the owner’s written permission.

9. User Conduct  
You must not use the App to:  
- Defame, harass, stalk, threaten, or abuse others.  
- Upload or transmit harmful files, viruses, or other malware.  
- Violate any intellectual property rights.  
- Transmit or disclose confidential information.  
- Engage in any conduct that is unlawful or in violation of these terms.

10. Viruses, Hacking, and Other Offenses  
You must not misuse our App by introducing viruses, trojans, worms, logic bombs, or other harmful material. Unauthorized access to our App, servers, or databases is prohibited. We will report any breach to law enforcement authorities.

11. Linking to Our App  
You may link to our home page, provided it is done in a fair and legal way that does not damage our reputation or suggest any form of association or endorsement where none exists. We reserve the right to withdraw linking permission without notice.

12. Breach of Terms  
If you breach any of these terms, we may take action including:  
- Cancelling your license to use the App.  
- Blocking your access to the App.  
- Taking legal action against you.

13. Governing Law  
These terms and conditions are governed by and construed in accordance with the laws of the jurisdiction in which Og operates. Any disputes relating to these terms and conditions will be subject to the exclusive jurisdiction of the courts of that jurisdiction.

By using our App, you agree to these terms and conditions. If you have any questions or concerns about these terms, please contact us at [contact information].
''',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
      backgroundColor: Colors.white, // White background
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PrivacyPolicyPage(),
    debugShowCheckedModeBanner: false,
  ));
}
