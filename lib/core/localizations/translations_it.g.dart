part of 'translations.g.dart';

// Path: <root>
class _TranslationsIt implements BaseTranslations<AppLocale, _TranslationsIt> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsIt.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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
	@override final TranslationMetadata<AppLocale, _TranslationsIt> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _TranslationsIt _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsPortfolioIt portfolio = _TranslationsPortfolioIt._(_root);
	late final _TranslationsHomepageIt homepage = _TranslationsHomepageIt._(_root);
	late final _TranslationsIntroductionIt introduction = _TranslationsIntroductionIt._(_root);
	late final _TranslationsContactsIt contacts = _TranslationsContactsIt._(_root);
	late final _TranslationsNotFoundIt not_found = _TranslationsNotFoundIt._(_root);
}

// Path: portfolio
class _TranslationsPortfolioIt {
	_TranslationsPortfolioIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get title => 'Corbelli Mattia - Portfolio';
}

// Path: homepage
class _TranslationsHomepageIt {
	_TranslationsHomepageIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomepageAppBarIt app_bar = _TranslationsHomepageAppBarIt._(_root);
	late final _TranslationsHomepageFooterIt footer = _TranslationsHomepageFooterIt._(_root);
}

// Path: introduction
class _TranslationsIntroductionIt {
	_TranslationsIntroductionIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get title => 'INTRODUZIONE';
	String get subtitle => '(portfolio in costruzione)';
}

// Path: contacts
class _TranslationsContactsIt {
	_TranslationsContactsIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get title => 'CONTATTI';
	String get subtitle => '(portfolio in costruzione)';
}

// Path: not_found
class _TranslationsNotFoundIt {
	_TranslationsNotFoundIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get title => 'PAGINA NON TROVATA';
}

// Path: homepage.app_bar
class _TranslationsHomepageAppBarIt {
	_TranslationsHomepageAppBarIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get title => 'Corbelli Mattia';
	late final _TranslationsHomepageAppBarThemeSelectorIt theme_selector = _TranslationsHomepageAppBarThemeSelectorIt._(_root);
	late final _TranslationsHomepageAppBarNavigationsIt navigations = _TranslationsHomepageAppBarNavigationsIt._(_root);
}

// Path: homepage.footer
class _TranslationsHomepageFooterIt {
	_TranslationsHomepageFooterIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomepageFooterVersionIt version = _TranslationsHomepageFooterVersionIt._(_root);
	late final _TranslationsHomepageFooterSocialsIt socials = _TranslationsHomepageFooterSocialsIt._(_root);
}

// Path: homepage.app_bar.theme_selector
class _TranslationsHomepageAppBarThemeSelectorIt {
	_TranslationsHomepageAppBarThemeSelectorIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get tooltip => 'Seleziona il tema';
	String get light => 'Tema chiaro';
	String get dark => 'Tema scuro';
	String get system => 'Tema dispositivo';
}

// Path: homepage.app_bar.navigations
class _TranslationsHomepageAppBarNavigationsIt {
	_TranslationsHomepageAppBarNavigationsIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get homepage => 'HOMEPAGE';
	String get contacts => 'CONTATTI';
	String get not_found => 'NON TROVATA';
}

// Path: homepage.footer.version
class _TranslationsHomepageFooterVersionIt {
	_TranslationsHomepageFooterVersionIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get loading => 'Caricamento ...';
	String get error => 'Qualcosa è andato storto :(';
}

// Path: homepage.footer.socials
class _TranslationsHomepageFooterSocialsIt {
	_TranslationsHomepageFooterSocialsIt._(this._root);

	final _TranslationsIt _root; // ignore: unused_field

	// Translations
	String get github => 'GitHub';
	String get linkedin => 'LinkedIn';
	String get twitter => 'X (ex Twitter)';
}
