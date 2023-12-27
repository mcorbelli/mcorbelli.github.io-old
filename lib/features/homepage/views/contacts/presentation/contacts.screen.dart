import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router_plus/go_router_plus.dart';
import 'package:portfolio_web/core/constants/url.const.dart';
import 'package:portfolio_web/core/data/services/toast.service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:portfolio_web/core/localizations/translations.g.dart';
import 'package:portfolio_web/core/data/enums/app_routes.enum.dart';
import 'package:portfolio_web/core/styles/typograph.theme.dart';
import 'package:url_launcher/url_launcher.dart';

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
                          labelText: t.contacts.contactForm.firstName,
                          border: const OutlineInputBorder(),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: FormBuilderTextField(
                        name: 'last_name',
                        decoration: InputDecoration(
                          labelText: t.contacts.contactForm.lastName,
                          border: const OutlineInputBorder(),
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                        ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FormBuilderTextField(
                  name: 'email_address',
                  decoration: InputDecoration(
                    labelText: t.contacts.contactForm.emailAddress,
                    border: const OutlineInputBorder(),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FormBuilderTextField(
                  name: 'body_message',
                  decoration: InputDecoration(
                    labelText: t.contacts.contactForm.bodyMessage,
                    border: const OutlineInputBorder(),
                    alignLabelWithHint: true,
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  maxLines: 8,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FormBuilderCheckbox(
                  name: 'privacy_policy',
                  title: Text.rich(t.contacts.contactForm.privacyPolicy(
                    tapHere: (text) => TextSpan(
                      text: text,
                      style: const TextStyle(
                        color: Colors.blue,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          final url = Uri.parse(UrlConst.privacyPolicy);
                          if (!await launchUrl(url)) {
                            throw Exception('Could not launch $url');
                          }
                        },
                    ),
                  )),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                ),
                const Divider(
                  height: 50.0,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: _onFormSubmit,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(t.contacts.contactForm.sendReqButton),
                    ),
                  ),
                ),
              ],
            ),
          ),
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

      ToastService.success(ToastArgs(
        context: context,
        title: 'Email inviata con successo',
      ));
    }
  }
}
