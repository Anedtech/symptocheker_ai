import 'package:flutter/material.dart';

class NearbyProviderPage extends StatelessWidget {
  const NearbyProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providers = [
      {'name': 'City Hospital', 'distance': '2 km', 'address': 'Main St 12'},
      {'name': 'Health Clinic', 'distance': '1.5 km', 'address': 'Market Rd 5'},
      {
        'name': 'Family Care Center',
        'distance': '3 km',
        'address': 'Park Ave 8',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Nearby Healthcare Providers',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: providers.length,
            separatorBuilder:
                (_, __) => Divider(color: Colors.blueGrey[100], thickness: 1),
            itemBuilder:
                (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color(0xFF1976D2),
                    child: const Icon(
                      Icons.local_hospital,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    providers[index]['name']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF1976D2),
                    ),
                  ),
                  subtitle: Text(
                    providers[index]['address']!,
                    style: TextStyle(color: Colors.blueGrey[400], fontSize: 13),
                  ),
                  trailing: Text(
                    providers[index]['distance']!,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
