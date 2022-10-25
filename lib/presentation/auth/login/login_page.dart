import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/injection_container.dart';
import '../../../generated/i18n.dart';
import '../../app/resources/routs.dart';
import '../../widget/app_custom_appbar.dart';
import '../../widget/progress_button.dart';
import '../../widget/text_inputs.dart';
import '../../../core/utils/ext_failure.dart';
import '../../../core/utils/ext_string.dart';
import 'login_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginCubit _cubit = get<LoginCubit>();
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(S.of(context).header_login,context),
      resizeToAvoidBottomInset: false,
      body: BlocProvider(
        create: (_) => _cubit,
        child: BlocConsumer<LoginCubit, LoginState>(
          builder: (context, state) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Card(
                            child: Form(
                              key: _loginFormKey,
                              child: Column(children: [
                                Image.asset(getJpg('img_world')),
                                SizedBox(
                                  height: 100,
                                  child: Center(child: Text((state is StateError)?state.failure.message(context):'')),
                                ),
                                TextInputArea(
                                  textInputAction: TextInputAction.next,
                                  hint: S.of(context).g_email,
                                  onSaved: _cubit.setEmail,
                                  onChanged: _cubit.setEmail,
                                  validator: (String? email) {
                                    if (email == null) {
                                      return S
                                          .of(context)
                                          .error_validation_required_field;
                                    } else if (!(email.isEmail)) {
                                      return S
                                          .of(context)
                                          .error_validation_not_valid;
                                    }
                                  },
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 16,
                                    right: 16,
                                  ),
                                  child: const Divider(),
                                ),
                                TextInputArea(
                                  textInputAction: TextInputAction.done,
                                  hint: S.of(context).g_password,
                                  onSaved: _cubit.setPassword,
                                  onChanged: _cubit.setPassword,
                                  validator: (String? password) {
                                    if (password == null) {
                                      return S
                                          .of(context)
                                          .error_validation_required_field;
                                    } else if (!(password.isPassword)) {
                                      return S
                                          .of(context)
                                          .error_password_not_valid;
                                    }
                                  },
                                ),
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 56,
                    width: 200,
                    margin: const EdgeInsets.all(16),
                    child: ProgressButton(
                      isLoading: state is StateLoading,
                      onPressed: () {
                        if (_loginFormKey.currentState != null) {
                          if (_loginFormKey.currentState!.validate()) {
                            _loginFormKey.currentState!.save();
                            _cubit.loginUser();
                          }
                        }
                      },
                      width: double.infinity,
                      text: S.of(context).g_button_login,
                    ),
                  ),
                ),
              ],
            );
          },
          listener: (context, state) {
            if (state is StateLoginDone) {
              _navigateToCountryListPage();
            }
          },
        ),
      ),
    );
  }

  _navigateToCountryListPage() {
    Navigator.pushNamedAndRemoveUntil(
      context,
      routeCountries,
          (r) => false,
    );
  }
}
