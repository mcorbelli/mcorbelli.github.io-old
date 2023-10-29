window.addEventListener("load", function (ev) {
    var theme = localStorage.getItem('portfolio_theme');
    var splashImage = document.querySelector('#splash img');

    if (theme === 'dark') {
        document.body.style.backgroundColor = '#18191A';
        splashImage.setAttribute('src', 'splash/img/loading-dark.gif');
    } else if (theme === 'light') {
        document.body.style.backgroundColor = '#F0F2F5';
        splashImage.setAttribute('src', 'splash/img/loading-light.gif');
    } else {
        const darkTheme = window.matchMedia("(prefers-color-scheme: dark)");

        if (darkTheme.matches) {
            document.body.style.backgroundColor = '#18191A';
            splashImage.setAttribute('src', 'splash/img/loading-dark.gif');
        } else {
            document.body.style.backgroundColor = '#F0F2F5';
            splashImage.setAttribute('src', 'splash/img/loading-light.gif');
        }
    }
});