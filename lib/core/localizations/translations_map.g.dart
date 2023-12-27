part of 'translations.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'myText': return ({required InlineSpan name, required InlineSpanBuilder tapHere}) => TextSpan(children: [
				const TextSpan(text: 'Benvenuto '),
				name,
				const TextSpan(text: '. Per favore, clicca '),
				tapHere('here'),
				const TextSpan(text: '!'),
			]);
			case 'portfolio.title': return 'Corbelli Mattia - Portfolio';
			case 'uiComponents.appBar.title': return 'Corbelli Mattia';
			case 'uiComponents.appBar.themeSelector.tooltip': return 'Seleziona il tema';
			case 'uiComponents.appBar.themeSelector.light': return 'Tema chiaro';
			case 'uiComponents.appBar.themeSelector.dark': return 'Tema scuro';
			case 'uiComponents.appBar.themeSelector.system': return 'Tema dispositivo';
			case 'uiComponents.appBar.navigations.homepage': return 'HOMEPAGE';
			case 'uiComponents.appBar.navigations.contacts': return 'CONTATTI';
			case 'uiComponents.appBar.navigations.notFound': return 'NON TROVATA';
			case 'uiComponents.footer.version.result': return ({required Object value}) => 'V ${value}';
			case 'uiComponents.footer.version.loading': return 'Caricamento ...';
			case 'uiComponents.footer.version.error': return 'Qualcosa è andato storto :(';
			case 'uiComponents.footer.socials.github': return 'GitHub';
			case 'uiComponents.footer.socials.linkedin': return 'LinkedIn';
			case 'uiComponents.footer.socials.twitter': return 'X (ex Twitter)';
			case 'introduction.title': return 'INTRODUZIONE';
			case 'introduction.subtitle': return '(portfolio in costruzione)';
			case 'contacts.title': return 'CONTATTI';
			case 'contacts.contactForm.firstName': return 'Nome';
			case 'contacts.contactForm.lastName': return 'Cognome';
			case 'contacts.contactForm.emailAddress': return 'Indirizzo email';
			case 'contacts.contactForm.bodyMessage': return 'Corpo del messaggio';
			case 'contacts.contactForm.privacyPolicy': return ({required InlineSpanBuilder tapHere}) => TextSpan(children: [
				const TextSpan(text: 'Acconsento al trattamento dei miei dati personali per finalità di contatto e confermo di aver letto e accettato l\''),
				tapHere('Informativa sulla Privacy'),
				const TextSpan(text: '. Comprendo che i miei dati saranno utilizzati esclusivamente per rispondere alla mia richiesta di ricontatto e che posso revocare il consenso in qualsiasi momento.'),
			]);
			case 'contacts.contactForm.sendReqButton': return 'INVIA RICHIESTA';
			case 'notFound.title': return 'PAGINA NON TROVATA';
			default: return null;
		}
	}
}

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'portfolio.title': return 'Corbelli Mattia - Portfolio';
			case 'uiComponents.appBar.title': return 'Corbelli Mattia';
			case 'uiComponents.appBar.themeSelector.tooltip': return 'Select theme';
			case 'uiComponents.appBar.themeSelector.light': return 'Light theme';
			case 'uiComponents.appBar.themeSelector.dark': return 'Dark theme';
			case 'uiComponents.appBar.themeSelector.system': return 'System theme';
			case 'uiComponents.appBar.navigations.homepage': return 'HOMEPAGE';
			case 'uiComponents.appBar.navigations.contacts': return 'CONTACTS';
			case 'uiComponents.appBar.navigations.notFound': return 'NOT FOUND';
			case 'uiComponents.footer.version.result': return ({required Object value}) => 'V ${value}';
			case 'uiComponents.footer.version.loading': return 'Loading ...';
			case 'uiComponents.footer.version.error': return 'Something went wrong :(';
			case 'uiComponents.footer.socials.github': return 'GitHub';
			case 'uiComponents.footer.socials.linkedin': return 'LinkedIn';
			case 'uiComponents.footer.socials.twitter': return 'X (ex Twitter)';
			case 'introduction.title': return 'INTRODUCTION';
			case 'introduction.subtitle': return '(portfolio in development)';
			case 'contacts.title': return 'CONTACTS';
			case 'contacts.contactForm.firstName': return 'First name';
			case 'contacts.contactForm.lastName': return 'Last name';
			case 'contacts.contactForm.emailAddress': return 'Email address';
			case 'contacts.contactForm.bodyMessage': return 'Body message';
			case 'contacts.contactForm.privacyPolicy': return ({required InlineSpanBuilder tapHere}) => TextSpan(children: [
				const TextSpan(text: 'I consent to the processing of my personal data for contact purposes and confirm that I have read and accepted the '),
				tapHere('Privacy Policy'),
				const TextSpan(text: '. I understand that my information will only be used to respond to my request for a re-contact and that I can withdraw my consent at any time.'),
			]);
			case 'contacts.contactForm.sendReqButton': return 'SEND REQUEST';
			case 'notFound.title': return 'PAGE NOT FOUND';
			default: return null;
		}
	}
}
