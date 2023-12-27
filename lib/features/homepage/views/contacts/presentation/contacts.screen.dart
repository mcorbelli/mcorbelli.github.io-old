import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/localizations/translations.g.dart';
import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';

class ContactsScreen extends Screen {
  final _route = AppRoutes.contacts;

  @override
  String get routeName => _route.routeName;

  @override
  String get routePath => _route.routePath;

  @override
  Page<void> build(context, state) {
    return NoTransitionPage(
      child: ScreenTypeLayout.builder(
        desktop: (_) => const _ContactsDesktop(),
        tablet: (_) => const _ContactsDesktop(),
        mobile: (_) => const _ContactsDesktop(),
      ),
    );
  }
}

class _ContactsDesktop extends StatefulWidget {
  const _ContactsDesktop();

  @override
  State<_ContactsDesktop> createState() => _ContactsDesktopState();
}

class _ContactsDesktopState extends State<_ContactsDesktop> {
  late GlobalKey<FormBuilderState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey<FormBuilderState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: size.height / 10.0,
          ),
          child: DisplayMedium(t.contacts.title),
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: size.width / 1.5,
          ),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'first_name',
                        decoration: InputDecoration(
                          labelText: t.contacts.contact_form.first_name,
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'last_name',
                        decoration: InputDecoration(
                          labelText: t.contacts.contact_form.last_name,
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                FormBuilderTextField(
                  name: 'email_address',
                  decoration: InputDecoration(
                    labelText: t.contacts.contact_form.email_address,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                FormBuilderTextField(
                  name: 'body_message',
                  decoration: InputDecoration(
                    labelText: t.contacts.contact_form.body_message,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 50.0,
        ),
        ElevatedButton(
          onPressed: _onFormSubmit,
          child: Text(t.contacts.contact_form.send_req_button),
        ),
      ],
    );
  }

  void _onFormSubmit() {
    final isValid = _formKey.currentState?.saveAndValidate(
      focusOnInvalid: true,
      autoScrollWhenFocusOnInvalid: true,
    );

    if (isValid == true) {
      debugPrint(_formKey.currentState?.value.toString());
    }
  }
}
