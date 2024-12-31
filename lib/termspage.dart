import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            }, 
            icon: const Icon(Icons.arrow_back),
            ),
          // title: const Text('Terms & Condition Page'),
          // centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text('TTERMS & CONDITIONS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('Please read these terms and conditions carefully before using Our Service.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('UPDATION',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('The Application may update/amend/modify these Terms of Usage from time to time. The User is responsible to check the Terms of Usage periodically to remain in compliance with these terms.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('USER CONSENT',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('By utilizing the Application, you (“Member”, “You”, “Your”) acknowledge that you comprehend the terms and provide your unconditional and explicit consent to the Terms of Usage of this Website. Should you disagree with the Terms of Usage, we kindly request that you refrain from selecting the “I AGREE” button. It is recommended that the User thoroughly reviews the Terms of Usage prior to using or registering on the Website or accessing any materials, information, or services available through the Website. Your initial and ongoing use of the Application, regardless of any modifications made over time, will indicate your acceptance of the terms of usage and your commitment to be legally bound by them.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('ACKNOWLEDGEMENT',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service. \n\nYour access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service. \n\nBy accessing or using the Service You agree to be bound by these Terms and Conditions. If You disagree with any part of these Terms and Conditions then You may not access the Service. \n\nYou represent that you are over the age of 18. The Company does not permit those under 18 to use the Service. \n\nYour access to and use of the Service is also conditioned on Your acceptance of and compliance with the Privacy Policy of the Company. Our Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your personal information when You use the Application or the Website and tells You about Your privacy rights and how the law protects You. Please read Our Privacy Policy carefully before using Our Service.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('LINK TO OTHER WEBSITES',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company. \n\nThe Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services. \n\nWe strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('TERMINATION',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions. \n\nUpon termination, Your right to use the Service will cease immediately.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('LIMITATION OF LIABILITY',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text("Notwithstanding any damages that You might incur, the entire liability of the Company and any of its suppliers under any provision of this Terms and Your exclusive remedy for all of the foregoing shall be limited to the amount actually paid by You through the Service or 100 USD if You haven't purchased anything through the Service. \n\nTo the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose. \n\nSome states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party's liability will be limited to the greatest extent permitted by law.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('"AS IS" and "AS AVAILABLE" DISCLAIMER',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text("The Service is provided to You 'AS IS' and 'AS AVAILABLE' and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected. \n\nWithout limiting the foregoing, neither the Company nor any of the company's provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components. \n\nSome jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('GOVERNING LAW',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('The laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('DISPUTES RESOLUTION',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('If You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('TRANSLATION INTERPRETATION',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text('These Terms and Conditions may have been translated if We have made them available to You on our Service. You agree that the original English text shall prevail in the case of a dispute.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:10),
                Text('CHANGES TO THESE TERMS AND CONDITIONS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
                Text("We reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion. \n\nBy continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.",
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height:15),
                Text('CONTACT US',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 7,),
                Text('If you have any questions about these Terms and Conditions, You can contact us:',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
                SizedBox(height: 5,),
                Text('•	By email: ssmseduguid@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
                ),
              ],
            ),
          ),
          )
      ),
    );
  }
}