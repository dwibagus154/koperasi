import 'package:flutter/material.dart';
import 'package:koperasi/screens/home/home.dart';
import 'package:koperasi/screens/home/service/service_screen.dart';
import 'package:koperasi/screens/home/transaction/transaction_screen.dart';

class koperasi extends StatefulWidget {
  const koperasi({Key? key}) : super(key: key);

  @override
  _koperasiState createState() => _koperasiState();
}

class _koperasiState extends State<koperasi> {
  int _currentPage = 1;
  final List _pages = [HomeScreen(), TransactionScreen(), ServiceScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Koperasi'),
      ),
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: "Transaksi"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Layanan"),
        ],
        onTap: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    ));
  }
}
