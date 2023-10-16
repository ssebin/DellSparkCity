import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EnergyMarketplace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0), // Adjust top padding as needed
      width: 1190,
      height: 450,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Your team owns ',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(width: 5.0),
                Container(
                  padding: const EdgeInsets.only(
                      left: 7.0, right: 7.0, top: 4.0, bottom: 4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      // Use your own icon here
                      SvgPicture.asset(
                        'assets/icons/currency-coins-generic.svg',
                        color: Colors.grey,
                        width: 18.0,
                        height: 18.0,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '1257 Energy Credits',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5.0),
                Text(
                  ' from saving energy.',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(width: 480.0),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 0.0), // Adjust right padding here
                  child: OutlinedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: const Color.fromRGBO(6, 114, 203, 1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                    child: Text(
                      'Purchase Credits',
                      style: TextStyle(
                          color: const Color.fromRGBO(6, 114, 203, 1)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                EnergyMarketplaceCard(
                  title: 'Own a Solar Panel',
                  additionalText: '2500 credits/panel',
                  imagePath: 'assets/solarpanel.webp',
                ),
                EnergyMarketplaceCard(
                  title: 'Convert Biomass to Energy',
                  additionalText: '1500 credits/box',
                  imagePath: 'assets/biomass.jpg',
                ),
                EnergyMarketplaceCard(
                  title: 'Invest in Hydrogen',
                  additionalText: '1900 credits/cylinder',
                  imagePath: 'assets/hydrogen.webp',
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EnergyMarketplaceCard extends StatelessWidget {
  final String title;
  final String additionalText;
  final String imagePath;

  EnergyMarketplaceCard({
    required this.title,
    required this.additionalText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: 330.0,
      height: 280.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            additionalText,
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 330.0,
            height: 110.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imagePath,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 30.0,
            child: ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(6, 114, 203, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text('Proceed'),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
        ],
      ),
    );
  }
}
