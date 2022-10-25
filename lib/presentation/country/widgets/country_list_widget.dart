import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/domain/country/entity/country.dart';

class CountryListWidget extends StatefulWidget {
  final List<Country> items;

  const CountryListWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<CountryListWidget> createState() => _CountryListWidget();
}

class _CountryListWidget extends State<CountryListWidget> {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    _itemCount = widget.items.length;
    return ListView.builder(
      itemCount: _itemCount,
      itemBuilder: _onBindView,
    );
  }

  Widget _onBindView(BuildContext context, int index) {
    Country item = widget.items[index];
    return ListTile(
      leading: Container(
        width: 48,
        height: 48,
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        alignment: Alignment.center,
        child: SvgPicture.network(
          item.flagUrl,
          semanticsLabel: 'A shark?!',
          placeholderBuilder: (BuildContext context) => Container(
              padding: const EdgeInsets.all(30.0),
              child: const CircularProgressIndicator()),
        ),
      ),
      title: Text(item.name),
      subtitle: Text(item.capital),
      dense: false,
    );
  }
}
