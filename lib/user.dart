import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildActionCard(
              icon: Icons.shopping_bag,
              title: 'Kurangi Penggunaan Plastik',
              subtitle: 'Kurangi penggunaan plastik sekali pakai dengan membawa tas kain dan botol minum sendiri.',
            ),
            const SizedBox(height: 10),
            _buildActionCard(
              icon: Icons.lightbulb,
              title: 'Hemat Listrik di Rumah',
              subtitle: 'Matikan alat elektronik saat tidak digunakan dan gunakan lampu hemat energi.',
            ),
            const SizedBox(height: 10),
            _buildActionCard(
              icon: Icons.park,
              title: 'Tanam Pohon',
              subtitle: 'Ikut serta dalam program penghijauan untuk mengurangi emisi karbon di lingkungan Anda.',
            ),
            const SizedBox(height: 10),
            _buildActionCard(
              icon: Icons.directions_bike,
              title: 'Gunakan Transportasi Ramah Lingkungan',
              subtitle: 'Gunakan transportasi umum, sepeda, atau jalan kaki untuk mengurangi emisi kendaraan.',
            ),
            const SizedBox(height: 10),
            _buildActionCard(
              icon: Icons.delete,
              title: 'Pisahkan Sampah',
              subtitle: 'Mulailah memilah sampah organik dan non-organik untuk didaur ulang.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueAccent.withOpacity(0.1),
            child: Icon(icon, color: Colors.blueAccent),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
