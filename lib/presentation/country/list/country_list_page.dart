import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:samimtest/core/utils/ext_failure.dart';
import 'package:samimtest/presentation/app/resources/app_colors.dart';
import 'package:samimtest/presentation/country/list/country_list_cubit.dart';
import 'package:samimtest/presentation/country/widgets/country_list_widget.dart';

import '../../../core/utils/ext_failure.dart';
import 'package:shimmer/shimmer.dart';
import '../../../di/injection_container.dart';
import '../../../generated/i18n.dart';
import '../../widget/app_custom_appbar.dart';

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
      appBar: getAppbar(S.of(context).header_country_list, context),
      body: BlocProvider(
        create: (_) => _cubit..getCountries(),
        child: BlocBuilder<CountryListCubit, CountryListState>(
          builder: (context, state) {
            if (state is StateError) {
              return Center(child: Text(state.failure.message(context)));
            } else {
              return Column(
                children: [
                  Expanded(
                    child: Shimmer.fromColors(
                      baseColor: AppColors.gray,
                      highlightColor: AppColors.gray700,
                      enabled: (state is StateDataLoaded),
                      child: CountryListWidget(
                          items: (state is StateDataLoaded) ? state.items : []),
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
