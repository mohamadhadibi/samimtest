import 'package:flutter/material.dart';
import 'package:samimtest/presentation/app/resources/app_colors.dart';

class CountryListPage extends StatefulWidget {
  const CountryListPage({Key? key}) : super(key: key);

  @override
  State<CountryListPage> createState() => _CountryListPageState();
}

class _CountryListPageState extends State<CountryListPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.orange,
      body: Center(child: Text('Country List Page'),),
    );
  }
}
