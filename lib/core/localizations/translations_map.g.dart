part of 'translations.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsIt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'portfolio.title': return 'Corbelli Mattia - Portfolio';
			case 'homepage.app_bar.title': return 'Corbelli Mattia';
			case 'homepage.app_bar.theme_selector.tooltip': return 'Seleziona il tema';
			case 'homepage.app_bar.theme_selector.light': return 'Tema chiaro';
			case 'homepage.app_bar.theme_selector.dark': return 'Tema scuro';
			case 'homepage.app_bar.theme_selector.system': return 'Tema dispositivo';
			case 'homepage.app_bar.navigations.homepage': return 'HOMEPAGE';
			case 'homepage.app_bar.navigations.contacts': return 'CONTATTI';
			case 'homepage.app_bar.navigations.not_found': return 'NON TROVATA';
			case 'homepage.footer.version.loading': return 'Caricamento ...';
			case 'homepage.footer.version.error': return 'Qualcosa è andato storto :(';
			case 'homepage.footer.socials.github': return 'GitHub';
			case 'homepage.footer.socials.linkedin': return 'LinkedIn';
			case 'homepage.footer.socials.twitter': return 'X (ex Twitter)';
			case 'introduction.title': return 'INTRODUZIONE';
			case 'introduction.subtitle': return '(portfolio in costruzione)';
			case 'contacts.title': return 'CONTATTI';
			case 'contacts.subtitle': return '(portfolio in costruzione)';
			case 'not_found.title': return 'PAGINA NON TROVATA';
			default: return null;
		}
	}
}

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'portfolio.title': return 'Corbelli Mattia - Portfolio';
			case 'homepage.app_bar.title': return 'Corbelli Mattia';
			case 'homepage.app_bar.theme_selector.tooltip': return 'Select theme';
			case 'homepage.app_bar.theme_selector.light': return 'Light theme';
			case 'homepage.app_bar.theme_selector.dark': return 'Dark theme';
			case 'homepage.app_bar.theme_selector.system': return 'System theme';
			case 'homepage.app_bar.navigations.homepage': return 'HOMEPAGE';
			case 'homepage.app_bar.navigations.contacts': return 'CONTACTS';
			case 'homepage.app_bar.navigations.not_found': return 'NOT FOUND';
			case 'homepage.footer.version.loading': return 'Caricamento ...';
			case 'homepage.footer.version.error': return 'Qualcosa è andato storto :(';
			case 'homepage.footer.socials.github': return 'GitHub';
			case 'homepage.footer.socials.linkedin': return 'LinkedIn';
			case 'homepage.footer.socials.twitter': return 'X (ex Twitter)';
			case 'introduction.title': return 'INTRODUCTION';
			case 'introduction.subtitle': return '(portfolio in development)';
			case 'contacts.title': return 'CONTACTS';
			case 'contacts.subtitle': return '(portfolio in development)';
			case 'not_found.title': return 'PAGE NOT FOUND';
			default: return null;
		}
	}
}
