import 'package:flutter/material.dart';
import 'dart:math';



class ProfilePage extends StatelessWidget {
  final String _profileImage =
      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiFcX95_M7xwghFjaFXrzCcJFq9_rciZoiIlO1t0O7zVy3KbcT4EFU0VZdmuByy_GRNFhLILYOAiq62hbjM7gLGfciixSIf6Nx5vo9flug60eYZ1Xsvfw4nOTIPwCswvBjxy_asvkY_d0lrXFesp1OqsbVW3agXv3NLJFGPWuFYXYIYu72zHuJ1smEWu2Ha/s564/TOKO%20HANDPHONE%20(HP)%20TERDEKAT3.jpg"; 
  final String _username = "Heru";
  final String _bio = "Distributor/Reseller";
  final int _followers = 59; 
  final int _following = 300; 
  final int _posts = 11; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.green[200], 
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24),
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(_profileImage),
            ),
            SizedBox(height: 16),
            Text(
              _username,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              _bio,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatCard('Toko', _posts.toString()),
                _buildStatCard('Produk', _followers.toString()),
                _buildStatCard('Demand', _following.toString()),
              ],
            ),
            SizedBox(height: 24),
            _buildButtonRow(),
            SizedBox(height: 24),
            _buildFooter(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String count) {
    return Card(
      elevation: 3,
      child: Container(
        width: 100,
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.message),
          label: Text('Message'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        SizedBox(width: 16),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.person_add),
          label: Text('Follow'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac magna ut massa varius fermentum. Aliquam erat volutpat. Mauris ac sodales justo.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Divider(),
          SizedBox(height: 8),
          Text(
            'Joined in ${DateTime.now().year - Random().nextInt(10)}',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
