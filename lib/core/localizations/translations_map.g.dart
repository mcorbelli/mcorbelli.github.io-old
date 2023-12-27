part of 'translations.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'portfolio.title': return 'Corbelli Mattia - Portfolio';
			case 'ui_components.app_bar.title': return 'Corbelli Mattia';
			case 'ui_components.app_bar.theme_selector.tooltip': return 'Seleziona il tema';
			case 'ui_components.app_bar.theme_selector.light': return 'Tema chiaro';
			case 'ui_components.app_bar.theme_selector.dark': return 'Tema scuro';
			case 'ui_components.app_bar.theme_selector.system': return 'Tema dispositivo';
			case 'ui_components.app_bar.navigations.homepage': return 'HOMEPAGE';
			case 'ui_components.app_bar.navigations.contacts': return 'CONTATTI';
			case 'ui_components.app_bar.navigations.not_found': return 'NON TROVATA';
			case 'ui_components.footer.version.loading': return 'Caricamento ...';
			case 'ui_components.footer.version.error': return 'Qualcosa è andato storto :(';
			case 'ui_components.footer.socials.github': return 'GitHub';
			case 'ui_components.footer.socials.linkedin': return 'LinkedIn';
			case 'ui_components.footer.socials.twitter': return 'X (ex Twitter)';
			case 'introduction.title': return 'INTRODUZIONE';
			case 'introduction.subtitle': return '(portfolio in costruzione)';
			case 'contacts.title': return 'CONTATTI';
			case 'contacts.contact_form.first_name': return 'Nome';
			case 'contacts.contact_form.last_name': return 'Cognome';
			case 'contacts.contact_form.email_address': return 'Indirizzo email';
			case 'contacts.contact_form.body_message': return 'Corpo del messaggio';
			case 'contacts.contact_form.send_req_button': return 'INVIA RICHIESTA';
			case 'not_found.title': return 'PAGINA NON TROVATA';
			default: return null;
		}
	}
}

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'portfolio.title': return 'Corbelli Mattia - Portfolio';
			case 'ui_components.app_bar.title': return 'Corbelli Mattia';
			case 'ui_components.app_bar.theme_selector.tooltip': return 'Select theme';
			case 'ui_components.app_bar.theme_selector.light': return 'Light theme';
			case 'ui_components.app_bar.theme_selector.dark': return 'Dark theme';
			case 'ui_components.app_bar.theme_selector.system': return 'System theme';
			case 'ui_components.app_bar.navigations.homepage': return 'HOMEPAGE';
			case 'ui_components.app_bar.navigations.contacts': return 'CONTACTS';
			case 'ui_components.app_bar.navigations.not_found': return 'NOT FOUND';
			case 'ui_components.footer.version.loading': return 'Caricamento ...';
			case 'ui_components.footer.version.error': return 'Qualcosa è andato storto :(';
			case 'ui_components.footer.socials.github': return 'GitHub';
			case 'ui_components.footer.socials.linkedin': return 'LinkedIn';
			case 'ui_components.footer.socials.twitter': return 'X (ex Twitter)';
			case 'introduction.title': return 'INTRODUCTION';
			case 'introduction.subtitle': return '(portfolio in development)';
			case 'contacts.title': return 'CONTACTS';
			case 'contacts.contact_form.first_name': return 'First name';
			case 'contacts.contact_form.last_name': return 'Last name';
			case 'contacts.contact_form.email_address': return 'Email address';
			case 'contacts.contact_form.body_message': return 'body message';
			case 'contacts.contact_form.send_req_button': return 'SEND REQUEST';
			case 'not_found.title': return 'PAGE NOT FOUND';
			default: return null;
		}
	}
}
