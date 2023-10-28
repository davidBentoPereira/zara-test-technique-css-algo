# Test de CSS

Ce test est à faire en quelques heures au plus. Ce n'est pas grave si ce n'est pas fini, mais essayez de faire le plus possible. Le dernier problème est bonus/optionel.

### Problème 1

```html
<!DOCTYPE html>
<html>
<head>
    <title>Sélecteurs CSS</title>
    <style>
        /* CSS ICI */
    </style>
</head>
<body>
    <ul class="list">
        <li>Élément 1</li>
        <li>Élément 2</li>
        <ul>
            <li>Élément 3</li>
            <li>Élément 4</li>
        </ul>
        <li>Élément 5</li>
    </ul>
</body>
</html>
```

Votre tâche consiste à écrire un sélecteur CSS pour cibler uniquement les éléments `<li>` qui sont enfants directs de la liste non ordonnée `.list`. Appliquez-leur un style spécifique.

### Problème 2

```html
<!DOCTYPE html>
<html>
<head>
    <title>Menu de Navigation</title>
    <style>
        /* CSS ICI */
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="/">Accueil</a></li>
            <li><a href="/services">Services</a></li>
            <li><a href="https://i.like.turtles.com">Turtues</a></li>
            <li><a href="/contact">Contact</a></li>
        </ul>
    </nav>
</body>
</html>
```

Écrivez un sélecteur CSS pour cibler les liens `<a>` dans le menu de navigation, mais seulement s'ils mènent à des pages internes (liens ne commençant pas par "http://" ou "https://").

### Problème 3

```html
<!DOCTYPE html>
<html>
<head>
    <title>Articles</title>
    <style>
        /* CSS ICI */
    </style>
</head>
<body>
    <h2>Ce titre ne doit pas être ciblé</h2>
    <article>
        <h1>Titre de l'article 1</h1>
        <p>Contenu de l'article 1</p>
    </article>
    <article>
        <h2>Titre de l'article 2</h2>
        <p>Contenu de l'article 2</p>
    </article>
    <article>
        <h2>Titre de l'article 3</h2>
        <p>Contenu de l'article 3</p>
    </article>
</body>
</html>
```

Écrivez un sélecteur CSS pour cibler les titres de niveau 2 (`<h2>`) à l'intérieur des articles et appliquez-leur un style particulier. 

Ensuite, selectionnez le paragraphe du premier article qui contient un `h2` et appliquez lui un style particulier.

### Problème 4

```html
<!DOCTYPE html>
<html>
<head>
    <title>Menu de Navigation Complexe</title>
    <style>
        /* CSS ICI */
    </style>
</head>
<body>
    <nav>
        <ul class="main-menu">
            <li><a href="/">Accueil</a></li>
            <li>
                <a href="/services">Services</a>
                <ul class="sub-menu">
                    <li><a href="/web-design">Web Design</a></li>
                    <li><a href="/development">Développement</a></li>
                    <li><a href="/consulting">Consulting</a></li>
                </ul>
            </li>
            <li><a href="/portfolio">Portfolio</a></li>
            <li>
                <a href="/contact">Contact</a>
                <ul class="sub-menu">
                    <li><a href="/support">Support</a></li>
                    <li><a href="/sales">Ventes</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</body>
</html>
```

Votre tâche consiste à créer un menu de navigation stylisé avec des sous-menus déroulants. Utilisez des sélecteurs CSS pour gérer les états de survol et d'activation des éléments du menu. (NB: Pas besoin de JS ici.)

### Problème 5

```html
<!DOCTYPE html>
<html>
<head>
    <title>Infobulle (Tooltip)</title>
    <style>
        /* CSS ICI */
    </style>
</head>
<body>
    <a href="#" class="tooltip" data-tooltip="Ceci est une infobulle">Lien 1</a>
    <a href="#" class="tooltip" data-tooltip="Une autre infobulle ici">Lien 2</a>
    <a href="#" class="tooltip" data-tooltip="Texte de l'infobulle">Lien 3</a>
</body>
</html>
```

Votre tâche consiste à créer des infobulles qui s'affichent lorsque l'utilisateur survole les liens. Utilisez des pseudo-éléments pour afficher le contenu de l'infobulle.

### Problème 6 (Bonus)

Imaginez que vous devez créer une interface utilisateur (UI) complexe pour une application Web. La page HTML contient plusieurs éléments, notamment des boutons, des formulaires, des graphiques et des animations. La structure HTML est complexe et volumineuse.

Votre tâche consiste à :

- Créer une mise en page responsive pour l'ensemble de la page.
- Appliquer des animations CSS pour les transitions, les transformations ou d'autres interactions utilisateur.
- Utiliser des sélecteurs CSS avancés pour cibler et styliser des éléments spécifiques.
- Gérer des interactions utilisateur complexes, telles que le déplacement de composants ou le changement de contenu en réponse aux actions de l'utilisateur.