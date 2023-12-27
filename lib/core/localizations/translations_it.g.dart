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
	TextSpan myText({required InlineSpan name, required InlineSpanBuilder tapHere}) => TextSpan(children: [
		const TextSpan(text: 'Benvenuto '),
		name,
		const TextSpan(text: '. Per favore, clicca '),
		tapHere('here'),
		const TextSpan(text: '!'),
	]);
	late final _TranslationsPortfolioIt portfolio = _TranslationsPortfolioIt._(_root);
	late final _TranslationsUiComponentsIt uiComponents = _TranslationsUiComponentsIt._(_root);
	late final _TranslationsIntroductionIt introduction = _TranslationsIntroductionIt._(_root);
	late final _TranslationsContactsIt contacts = _TranslationsContactsIt._(_root);
	late final _TranslationsNotFoundIt notFound = _TranslationsNotFoundIt._(_root);
}

// Path: portfolio
class _TranslationsPortfolioIt {
	_TranslationsPortfolioIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Corbelli Mattia - Portfolio';
}

// Path: uiComponents
class _TranslationsUiComponentsIt {
	_TranslationsUiComponentsIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsUiComponentsAppBarIt appBar = _TranslationsUiComponentsAppBarIt._(_root);
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
	late final _TranslationsContactsContactFormIt contactForm = _TranslationsContactsContactFormIt._(_root);
}

// Path: notFound
class _TranslationsNotFoundIt {
	_TranslationsNotFoundIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'PAGINA NON TROVATA';
}

// Path: uiComponents.appBar
class _TranslationsUiComponentsAppBarIt {
	_TranslationsUiComponentsAppBarIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Corbelli Mattia';
	late final _TranslationsUiComponentsAppBarThemeSelectorIt themeSelector = _TranslationsUiComponentsAppBarThemeSelectorIt._(_root);
	late final _TranslationsUiComponentsAppBarNavigationsIt navigations = _TranslationsUiComponentsAppBarNavigationsIt._(_root);
}

// Path: uiComponents.footer
class _TranslationsUiComponentsFooterIt {
	_TranslationsUiComponentsFooterIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsUiComponentsFooterVersionIt version = _TranslationsUiComponentsFooterVersionIt._(_root);
	late final _TranslationsUiComponentsFooterSocialsIt socials = _TranslationsUiComponentsFooterSocialsIt._(_root);
}

// Path: contacts.contactForm
class _TranslationsContactsContactFormIt {
	_TranslationsContactsContactFormIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get firstName => 'Nome';
	String get lastName => 'Cognome';
	String get emailAddress => 'Indirizzo email';
	String get bodyMessage => 'Corpo del messaggio';
	TextSpan privacyPolicy({required InlineSpanBuilder tapHere}) => TextSpan(children: [
		const TextSpan(text: 'Acconsento al trattamento dei miei dati personali per finalità di contatto e confermo di aver letto e accettato l\''),
		tapHere('Informativa sulla Privacy'),
		const TextSpan(text: '. Comprendo che i miei dati saranno utilizzati esclusivamente per rispondere alla mia richiesta di ricontatto e che posso revocare il consenso in qualsiasi momento.'),
	]);
	String get sendReqButton => 'INVIA RICHIESTA';
}

// Path: uiComponents.appBar.themeSelector
class _TranslationsUiComponentsAppBarThemeSelectorIt {
	_TranslationsUiComponentsAppBarThemeSelectorIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get tooltip => 'Seleziona il tema';
	String get light => 'Tema chiaro';
	String get dark => 'Tema scuro';
	String get system => 'Tema dispositivo';
}

// Path: uiComponents.appBar.navigations
class _TranslationsUiComponentsAppBarNavigationsIt {
	_TranslationsUiComponentsAppBarNavigationsIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get homepage => 'HOMEPAGE';
	String get contacts => 'CONTATTI';
	String get notFound => 'NON TROVATA';
}

// Path: uiComponents.footer.version
class _TranslationsUiComponentsFooterVersionIt {
	_TranslationsUiComponentsFooterVersionIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String result({required Object value}) => 'V ${value}';
	String get loading => 'Caricamento ...';
	String get error => 'Qualcosa è andato storto :(';
}

// Path: uiComponents.footer.socials
class _TranslationsUiComponentsFooterSocialsIt {
	_TranslationsUiComponentsFooterSocialsIt._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get github => 'GitHub';
	String get linkedin => 'LinkedIn';
	String get twitter => 'X (ex Twitter)';
}
