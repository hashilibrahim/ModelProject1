import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/registrationmodule/quesions/registration1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.deepOrange,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const PricingCards(),
    );
  }
}

class StandardPricingCard extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final Color backgroundColor;
  final List<String> features;

  const StandardPricingCard({
    required this.title,
    required this.price,
    required this.subtitle,
    required this.backgroundColor,
    required this.features,
  });

  Widget _buildFeatureRow(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.deepOrange, size: 20),
          SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            price,
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 24),
          ...features.map((feature) => _buildFeatureRow(feature)),
          Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Reg1(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text('Register Now'),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPricingCard extends StatefulWidget {
  const CustomPricingCard({Key? key}) : super(key: key);

  @override
  State<CustomPricingCard> createState() => _CustomPricingCardState();
}

class _CustomPricingCardState extends State<CustomPricingCard> {
  final Set<String> _selectedServices = {};

  Widget _buildInputField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 60,
          ),
          // Expanded(
          //   child:
          Container(
            height: 37,
            width: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
                decoration: InputDecoration(
              hintText: '100',
              hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              border: InputBorder.none,
            )),
          ),
          // ),
        ]),
        SizedBox(height: 12),
      ],
    );
  }

  Widget _buildServiceTag(String service) {
    final bool isSelected = _selectedServices.contains(service);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            _selectedServices.remove(service);
          } else {
            _selectedServices.add(service);
          }
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? Colors.deepOrange : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? Colors.deepOrange : Colors.grey.shade300,
          ),
        ),
        child: Text(
          service,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureRow(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.deepOrange, size: 16),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 252, 247),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CUSTOM',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '--- KWD/month',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'For Your organization',
            style: TextStyle(
              fontSize: 12,
              color: const Color.fromARGB(58, 255, 246, 198),
            ),
          ),
          SizedBox(height: 24),
          _buildInputField('Inbound Calls'),
          _buildInputField('Outbound Calls'),
          _buildInputField('Omnichannel \nInteraction'),
          Text(
            'Select your service',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            children: [
              _buildServiceTag('Websites'),
              _buildServiceTag('Apps'),
              _buildServiceTag('Social Media'),
            ],
          ),
          SizedBox(height: 16),
          _buildFeatureRow('Ticketing System'),
          _buildFeatureRow('Reports'),
          _buildFeatureRow(
              'Bilingual Language (AR/EN) IVR\n(Interactive Voice Response)'),
          SizedBox(
            width: 10,
          ),
          _buildFeatureRow('24/7'),
          Spacer(),
          Center(
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Reg1(),
                    ));
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.deepOrange,
                side: BorderSide(color: Colors.deepOrange),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text('Register Now'),
            ),
          ),
        ],
      ),
    );
  }
}

class PricingCards extends StatelessWidget {
  const PricingCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Packages',
          textAlign: TextAlign.start,
          style: GoogleFonts.poppins(
            color: Colors.deepOrange,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(
            color: Colors.grey.withOpacity(0.2),
            height: 1,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: Row(
            children: [
              StandardPricingCard(
                title: 'SILVER',
                price: '350 KWD/month',
                subtitle: 'For Startup businesses',
                backgroundColor: Colors.grey[100]!,
                features: [
                  '250 Inbound Calls',
                  '150 Outbound Calls',
                  '100 Omnichannel Interaction\n(Websites, Apps, Social Media)',
                  'Ticketing System',
                  'Reports',
                  'Bilingual Language (AR/EN) IVR\n(Interactive Voice Response)',
                  '24/7',
                ],
              ),
              StandardPricingCard(
                title: 'GOLD',
                price: '650 KWD/month',
                subtitle: 'For Small & Medium businesses',
                backgroundColor: Color(0xFFFFEBB9),
                features: [
                  '500 Inbound Calls',
                  '300 Outbound Calls',
                  '200 Omnichannel Interaction\n(Websites, Apps, Social Media)',
                  'Ticketing System',
                  'Reports',
                  'Bilingual Language (AR/EN) IVR\n(Interactive Voice Response)',
                  '24/7',
                ],
              ),
              StandardPricingCard(
                title: 'PLATINUM',
                price: '1,100 KWD/month',
                subtitle: 'For Large organization',
                backgroundColor: Color(0xFFFFF5E6),
                features: [
                  '1,000 Inbound Calls',
                  '600 Outbound Calls',
                  '400 Omnichannel Interaction\n(Websites, Apps, Social Media)',
                  'Ticketing System',
                  'Reports',
                  'Bilingual Language (AR/EN) IVR\n(Interactive Voice Response)',
                  '24/7',
                ],
              ),
              CustomPricingCard(),
            ],
          ),
        ),
      ),
    );
  }
}
