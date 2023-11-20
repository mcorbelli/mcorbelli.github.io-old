part of 'translations.g.dart';

// Path: <root>
class _TranslationsEn extends _TranslationsIt {

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
	@override final TranslationMetadata<AppLocale, _TranslationsIt> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsPortfolioEn portfolio = _TranslationsPortfolioEn._(_root);
	@override late final _TranslationsHomepageEn homepage = _TranslationsHomepageEn._(_root);
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

// Path: homepage
class _TranslationsHomepageEn extends _TranslationsHomepageIt {
	_TranslationsHomepageEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomepageAppBarEn app_bar = _TranslationsHomepageAppBarEn._(_root);
	@override late final _TranslationsHomepageFooterEn footer = _TranslationsHomepageFooterEn._(_root);
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
	@override String get subtitle => '(portfolio in development)';
}

// Path: not_found
class _TranslationsNotFoundEn extends _TranslationsNotFoundIt {
	_TranslationsNotFoundEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'PAGE NOT FOUND';
}

// Path: homepage.app_bar
class _TranslationsHomepageAppBarEn extends _TranslationsHomepageAppBarIt {
	_TranslationsHomepageAppBarEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Corbelli Mattia';
	@override late final _TranslationsHomepageAppBarThemeSelectorEn theme_selector = _TranslationsHomepageAppBarThemeSelectorEn._(_root);
	@override late final _TranslationsHomepageAppBarNavigationsEn navigations = _TranslationsHomepageAppBarNavigationsEn._(_root);
}

// Path: homepage.footer
class _TranslationsHomepageFooterEn extends _TranslationsHomepageFooterIt {
	_TranslationsHomepageFooterEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomepageFooterVersionEn version = _TranslationsHomepageFooterVersionEn._(_root);
	@override late final _TranslationsHomepageFooterSocialsEn socials = _TranslationsHomepageFooterSocialsEn._(_root);
}

// Path: homepage.app_bar.theme_selector
class _TranslationsHomepageAppBarThemeSelectorEn extends _TranslationsHomepageAppBarThemeSelectorIt {
	_TranslationsHomepageAppBarThemeSelectorEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get tooltip => 'Select theme';
	@override String get light => 'Light theme';
	@override String get dark => 'Dark theme';
	@override String get system => 'System theme';
}

// Path: homepage.app_bar.navigations
class _TranslationsHomepageAppBarNavigationsEn extends _TranslationsHomepageAppBarNavigationsIt {
	_TranslationsHomepageAppBarNavigationsEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get homepage => 'HOMEPAGE';
	@override String get contacts => 'CONTACTS';
	@override String get not_found => 'NOT FOUND';
}

// Path: homepage.footer.version
class _TranslationsHomepageFooterVersionEn extends _TranslationsHomepageFooterVersionIt {
	_TranslationsHomepageFooterVersionEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get loading => 'Caricamento ...';
	@override String get error => 'Qualcosa è andato storto :(';
}

// Path: homepage.footer.socials
class _TranslationsHomepageFooterSocialsEn extends _TranslationsHomepageFooterSocialsIt {
	_TranslationsHomepageFooterSocialsEn._(_TranslationsEn root) : this._root = root, super._(root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get github => 'GitHub';
	@override String get linkedin => 'LinkedIn';
	@override String get twitter => 'X (ex Twitter)';
}
