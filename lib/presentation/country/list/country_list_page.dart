import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samimtest/core/utils/ext_failure.dart';
import 'package:samimtest/presentation/country/list/country_list_cubit.dart';
import 'package:samimtest/presentation/country/widgets/country_list_widget.dart';

import '../../../core/utils/ext_failure.dart';
import '../../../di/injection_container.dart';
import '../../../generated/i18n.dart';
import '../../app/resources/app_colors.dart';
import '../../widget/app_custom_appbar.dart';
import '../../widget/skelton_loader.dart';

class CountryListPage extends StatefulWidget {
  const CountryListPage({Key? key}) : super(key: key);

  @override
  State<CountryListPage> createState() => _CountryListPageState();
}

class _CountryListPageState extends State<CountryListPage> {
  final CountryListCubit _cubit = get<CountryListCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: getAppbar(S.of(context).header_country_list, context),
      body: BlocProvider(
        create: (_) => _cubit..getCountries(),
        child: BlocBuilder<CountryListCubit, CountryListState>(
          builder: (context, state) {
            if (state is StateError) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.failure.message(context)),
                  TextButton(
                    child: Text(S.of(context).g_button_retry),
                    onPressed: () => _cubit.getCountries(),
                  ),
                ],
              );
            } else if(state is StateLoading) {
              return SkeletonLoader(
                builder: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 10,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 12,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                items: 10,
                period: const Duration(seconds: 2),
                highlightColor: AppColors.blue,
              );
            } else {
              return CountryListWidget(
                  items: (state is StateDataLoaded) ? state.items : []);
            }
          },
        ),
      ),
    );
  }
}
