part of 'translations.g.dart';

// Path: <root>
class _TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsPortfolioEn portfolio = _TranslationsPortfolioEn._(_root);
	@override late final _TranslationsUiComponentsEn ui_components = _TranslationsUiComponentsEn._(_root);
	@override late final _TranslationsIntroductionEn introduction = _TranslationsIntroductionEn._(_root);
	@override late final _TranslationsContactsEn contacts = _TranslationsContactsEn._(_root);
	@override late final _TranslationsNotFoundEn not_found = _TranslationsNotFoundEn._(_root);
}

// Path: portfolio
class _TranslationsPortfolioEn extends _TranslationsPortfolioIt {
	_TranslationsPortfolioEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Corbelli Mattia - Portfolio';
}

// Path: ui_components
class _TranslationsUiComponentsEn extends _TranslationsUiComponentsIt {
	_TranslationsUiComponentsEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUiComponentsAppBarEn app_bar = _TranslationsUiComponentsAppBarEn._(_root);
	@override late final _TranslationsUiComponentsFooterEn footer = _TranslationsUiComponentsFooterEn._(_root);
}

// Path: introduction
class _TranslationsIntroductionEn extends _TranslationsIntroductionIt {
	_TranslationsIntroductionEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'INTRODUCTION';
	@override String get subtitle => '(portfolio in development)';
}

// Path: contacts
class _TranslationsContactsEn extends _TranslationsContactsIt {
	_TranslationsContactsEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'CONTACTS';
	@override late final _TranslationsContactsContactFormEn contact_form = _TranslationsContactsContactFormEn._(_root);
}

// Path: not_found
class _TranslationsNotFoundEn extends _TranslationsNotFoundIt {
	_TranslationsNotFoundEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'PAGE NOT FOUND';
}

// Path: ui_components.app_bar
class _TranslationsUiComponentsAppBarEn extends _TranslationsUiComponentsAppBarIt {
	_TranslationsUiComponentsAppBarEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Corbelli Mattia';
	@override late final _TranslationsUiComponentsAppBarThemeSelectorEn theme_selector = _TranslationsUiComponentsAppBarThemeSelectorEn._(_root);
	@override late final _TranslationsUiComponentsAppBarNavigationsEn navigations = _TranslationsUiComponentsAppBarNavigationsEn._(_root);
}

// Path: ui_components.footer
class _TranslationsUiComponentsFooterEn extends _TranslationsUiComponentsFooterIt {
	_TranslationsUiComponentsFooterEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsUiComponentsFooterVersionEn version = _TranslationsUiComponentsFooterVersionEn._(_root);
	@override late final _TranslationsUiComponentsFooterSocialsEn socials = _TranslationsUiComponentsFooterSocialsEn._(_root);
}

// Path: contacts.contact_form
class _TranslationsContactsContactFormEn extends _TranslationsContactsContactFormIt {
	_TranslationsContactsContactFormEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get first_name => 'First name';
	@override String get last_name => 'Last name';
	@override String get email_address => 'Email address';
	@override String get body_message => 'body message';
	@override String get send_req_button => 'SEND REQUEST';
}

// Path: ui_components.app_bar.theme_selector
class _TranslationsUiComponentsAppBarThemeSelectorEn extends _TranslationsUiComponentsAppBarThemeSelectorIt {
	_TranslationsUiComponentsAppBarThemeSelectorEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get tooltip => 'Select theme';
	@override String get light => 'Light theme';
	@override String get dark => 'Dark theme';
	@override String get system => 'System theme';
}

// Path: ui_components.app_bar.navigations
class _TranslationsUiComponentsAppBarNavigationsEn extends _TranslationsUiComponentsAppBarNavigationsIt {
	_TranslationsUiComponentsAppBarNavigationsEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get homepage => 'HOMEPAGE';
	@override String get contacts => 'CONTACTS';
	@override String get not_found => 'NOT FOUND';
}

// Path: ui_components.footer.version
class _TranslationsUiComponentsFooterVersionEn extends _TranslationsUiComponentsFooterVersionIt {
	_TranslationsUiComponentsFooterVersionEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get loading => 'Caricamento ...';
	@override String get error => 'Qualcosa è andato storto :(';
}

// Path: ui_components.footer.socials
class _TranslationsUiComponentsFooterSocialsEn extends _TranslationsUiComponentsFooterSocialsIt {
	_TranslationsUiComponentsFooterSocialsEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get github => 'GitHub';
	@override String get linkedin => 'LinkedIn';
	@override String get twitter => 'X (ex Twitter)';
}
