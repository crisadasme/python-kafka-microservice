<div align="center">
  <p align="center">
    <a href="https://getxerpa.com">
      <img alt="Codely logo" src="https://user-images.githubusercontent.com/99266739/176068654-5d81ff5d-2cc7-4a0b-acb2-7a12953c2cc5.png" width="150px" height="150"/>
  </p>

  <h1 align="center">
    ⚡️ PYTHON EVENTS TEMPLATE⚡️
  </h1>

  <strong>Este repositorio te permitirá tener una plantilla de un microservicio cuya arquitectura esta basada en eventos utilizando kafka 👍</strong>
</div>

<p align="center">
    <a href="https://github.com/Ubankapp"><img src="https://img.shields.io/badge/GetXerpa-OS-blue" alt="getxerpa.com"/></a>
    <a href="https://github.com/Ubankapp/xerpa-readme"><img src="https://img.shields.io/badge/XerpaReadme-OS-black" alt="getxerpa.com"/></a>
</p>

Existe una necesidad de agilizar la comunicación entre diversos microservicios de modo que se pueda utilizar un bus de datos (o cola de mensajes) para lograr una arquitectura muy desacoplada y facilmente replicable.


## Acerca del Proyecto 🔍
IN PROGRESS
## Especificaciones Técnicas 🛠️
IN PROGRESS
## Instalación 🚀
IN PROGRESS
## Como Utilizar 💻
IN PROGRESS
### 🚶 Primeros Pasos
`make setup`

`make all`

### 📂 Entiendo Estructura de Carpetas
```
├── 📁 src                # Código fuente del proyectos
├── 📁 docs               # Documentación relacionado al proyecto
├── 📁 requirements       # Requierimientos separados por ambiente
├── 📁 tests              # Tests asociados al proyecto
```
### ⚙️ Versionamiento
---
- Archivo: `..workflows/ci.yaml`: 
- Descripción: Utiliza **semantic-release** [Angular Commit Message Conventions](https://github.com/angular/angular/blob/master/CONTRIBUTING.md#-commit-message-format) para generar releases en base a los mensajes de commits.


La siguiente tabla muestra cuales mensajes de mensajes de commits y su tipo de release que se consideraran al momento de ejecutar el comando de `semantic-release`:

| Commit message                                                                                                                                                                                   | Release type                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------- |
| `fix(pencil): stop graphite breaking when too much pressure applied`                                                                                                                             | ~~Patch~~ Fix Release                                                                                           |
| `feat(pencil): add 'graphiteWidth' option`                                                                                                                                                       | ~~Minor~~ Feature Release                                                                                       |
| `perf(pencil): remove graphiteWidth option`<br><br>`BREAKING CHANGE: The graphiteWidth option has been removed.`<br>`The default graphite width of 10mm is always used for performance reasons.` | ~~Major~~ Breaking Release <br /> (Note that the `BREAKING CHANGE: ` token must be in the footer of the commit) |


Must be one of the following:

build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
ci: Changes to our CI configuration files and scripts (examples: CircleCi, SauceLabs)
docs: Documentation only changes
feat: A new feature
fix: A bug fix
perf: A code change that improves performance
refactor: A code change that neither fixes a bug nor adds a feature
test: Adding missing tests or correcting existing tests

## 🌚 Comandos del proyecto
---
IN PROGRESS
## Testing y Seguridad 🔥
---
IN PROGRESS
## Deployment 🐳
---
IN PROGRESS
## Limitaciones y Mejoras ♻️
---
- ¿Cuáles son las limitaciones del diseño actual?
- ¿Cuáles son las posibles extensiones en las que pensar para el futuro?
- ¿Alguna otra consideración?

## Extras ⭐️
### Diseño de Software 🎨
El siguiente documento usa de referencia la [Guía de Diseño de Software de Xerpa](https://www.notion.so/ubank/Plantilla-para-Dise-o-de-Software-2678e18bb111459dac12cc478bc12581) para definir la estructura básica que todo proyecto debe seguir y cumplir.

### Recursos Útiles 🛠
- Awesome ReadMe: https://github.com/matiassingers/awes...
- Banner Maker: https://banner.godori.dev
- Shields.io: http://shields.io
- Carbon: https://carbon.now.sh

### CheatSheet 🤯
- Markdown Guide: https://www.markdownguide.org/cheat-s...
- Markdown Cheatsheet: https://guides.github.com/pdfs/markdo...
