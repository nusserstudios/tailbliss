
# Página web del CAUS

Esta es la página web oficial del Club de Algoritmia de la Universidad de Sevilla. Es un sitio web estático generado mediante el framework [Hugo](https://gohugo.io/). Todo el contenido está escrito en Markdown y se puede editar empleando cualquier editor y Git. Además, se tiene una configuración de `Github Actions` que reconstruye automáticamente el sitio una vez se realicen `push` a la rama `main`.


# Instalación 

**Clonar el repositorio en local**

`git clone git@github.com:algoritmiaUS/caus-web.git`

**Instalar las dependencias del proyecto**

```
# Las dependencias son hugo, npm y golang, si usas Linux/OSX/WSL2 es recomendable usar homebrew

$ brew install hugo

$ brew install npm

$ sudo apt install golang-go
```
**Nota:** Si es necesario una versión anterior de las librerías porque da errores, seguir el siguiente [enlace](https://nelson.cloud/how-to-install-older-versions-of-homebrew-packages/).

**Instalar las dependencias del proyecto**

```
# Entramos en el directorio del repositorio
$ cd caus-web

# Instalamos la dependencias
$ npm install
```

**Para comenzar a desarrollar**

```
hugo server --config hugo.yaml
```

**Para generar el sitio HTML**

```
# Haz las modificaciones que desees, y no olvides que la configuración aquí es hugo.yaml no .toml (el formato de yaml es mucho mejor de todos modos)
Para generar /public para subir a tu sitio web

$ sudo hugo --gc --minify
```


## Credits
nusserstudios - TailBliss theme
https://github.com/nusserstudios/tailbliss

