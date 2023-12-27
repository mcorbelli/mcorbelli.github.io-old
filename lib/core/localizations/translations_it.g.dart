part of 'translations.g.dart';

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsPortfolioIt portfolio = _TranslationsPortfolioIt._(_root);
	late final _TranslationsUiComponentsIt ui_components = _TranslationsUiComponentsIt._(_root);
	late final _TranslationsIntroductionIt introduction = _TranslationsIntroductionIt._(_root);
	late final _TranslationsContactsIt contacts = _TranslationsContactsIt._(_root);
	late final _TranslationsNotFoundIt not_found = _TranslationsNotFoundIt._(_root);
}

// Path: portfolio
class _TranslationsPortfolioIt {
	_TranslationsPortfolioIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Corbelli Mattia - Portfolio';
}

// Path: ui_components
class _TranslationsUiComponentsIt {
	_TranslationsUiComponentsIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsUiComponentsAppBarIt app_bar = _TranslationsUiComponentsAppBarIt._(_root);
	late final _TranslationsUiComponentsFooterIt footer = _TranslationsUiComponentsFooterIt._(_root);
}

// Path: introduction
class _TranslationsIntroductionIt {
	_TranslationsIntroductionIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'INTRODUZIONE';
	String get subtitle => '(portfolio in costruzione)';
}

// Path: contacts
class _TranslationsContactsIt {
	_TranslationsContactsIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'CONTATTI';
	late final _TranslationsContactsContactFormIt contact_form = _TranslationsContactsContactFormIt._(_root);
}

// Path: not_found
class _TranslationsNotFoundIt {
	_TranslationsNotFoundIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'PAGINA NON TROVATA';
}

// Path: ui_components.app_bar
class _TranslationsUiComponentsAppBarIt {
	_TranslationsUiComponentsAppBarIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Corbelli Mattia';
	late final _TranslationsUiComponentsAppBarThemeSelectorIt theme_selector = _TranslationsUiComponentsAppBarThemeSelectorIt._(_root);
	late final _TranslationsUiComponentsAppBarNavigationsIt navigations = _TranslationsUiComponentsAppBarNavigationsIt._(_root);
}

// Path: ui_components.footer
class _TranslationsUiComponentsFooterIt {
	_TranslationsUiComponentsFooterIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsUiComponentsFooterVersionIt version = _TranslationsUiComponentsFooterVersionIt._(_root);
	late final _TranslationsUiComponentsFooterSocialsIt socials = _TranslationsUiComponentsFooterSocialsIt._(_root);
}

// Path: contacts.contact_form
class _TranslationsContactsContactFormIt {
	_TranslationsContactsContactFormIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get first_name => 'Nome';
	String get last_name => 'Cognome';
	String get email_address => 'Indirizzo email';
	String get body_message => 'Corpo del messaggio';
	String get send_req_button => 'INVIA RICHIESTA';
}

// Path: ui_components.app_bar.theme_selector
class _TranslationsUiComponentsAppBarThemeSelectorIt {
	_TranslationsUiComponentsAppBarThemeSelectorIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tooltip => 'Seleziona il tema';
	String get light => 'Tema chiaro';
	String get dark => 'Tema scuro';
	String get system => 'Tema dispositivo';
}

// Path: ui_components.app_bar.navigations
class _TranslationsUiComponentsAppBarNavigationsIt {
	_TranslationsUiComponentsAppBarNavigationsIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get homepage => 'HOMEPAGE';
	String get contacts => 'CONTATTI';
	String get not_found => 'NON TROVATA';
}

// Path: ui_components.footer.version
class _TranslationsUiComponentsFooterVersionIt {
	_TranslationsUiComponentsFooterVersionIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loading => 'Caricamento ...';
	String get error => 'Qualcosa è andato storto :(';
}

// Path: ui_components.footer.socials
class _TranslationsUiComponentsFooterSocialsIt {
	_TranslationsUiComponentsFooterSocialsIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get github => 'GitHub';
	String get linkedin => 'LinkedIn';
	String get twitter => 'X (ex Twitter)';
}
