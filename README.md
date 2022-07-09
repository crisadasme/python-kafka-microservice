<div align="center">
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
- docker
- fastAPI
- aiokafka
- Kafka-python
- python 3.8
## Instalación 🚀
- git clone 
## Como Utilizar 💻
### 1. Levantar Proyecto
- `make up` (puede tar unos minutos)
- producer-healthcheck: `http://localhost:8000`
- swagger: `http://localhost:8000/docs`
- kafka-ui: `http://localhost:19000s`

### 2. Crear Evento 
- Envia un mensaje a Kafka, con la siguiente petición:
```json
POST http://localhost:8000/producer
Accept: application/json
Content-Type: application/json
Body:
{
    "name": "value",
    "description": "value",
}
```
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


Tipos de Commit:
```
build: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
ci: Changes to our CI configuration files and scripts (examples: CircleCi, SauceLabs)
docs: Documentation only changes
feat: A new feature
fix: A bug fix
perf: A code change that improves performance
refactor: A code change that neither fixes a bug nor adds a feature
test: Adding missing tests or correcting existing tests
```

## 🌚 Comandos del proyecto

IN PROGRESS
## Testing y Seguridad 🔥

IN PROGRESS
## Deployment 🐳

IN PROGRESS
## Limitaciones y Mejoras ♻️

- ¿Cuáles son las limitaciones del diseño actual?
- ¿Cuáles son las posibles extensiones en las que pensar para el futuro?
- ¿Alguna otra consideración?

## Extras ⭐️
### Diseño de Software 🎨
El siguiente documento usa de referencia la [Guía de Diseño de Software de Xerpa](https://www.notion.so/ubank/Plantilla-para-Dise-o-de-Software-2678e18bb111459dac12cc478bc12581) para definir la estructura básica que todo proyecto debe seguir y cumplir.

### Recursos Útiles 🛠
- [aiokafka](https://aiokafka.readthedocs.io/en/stable/ka)
- [Docker](https://docs.docker.com/get-started/overview/)
- [FastAPI](https://fastapi.tiangolo.com)
- [Kafdrop](https://github.com/obsidiandynamics/kafdrop)
- [Kafka](https://kafka.apache.org)
- [Kafka-python](https://kafka-python.readthedocs.io/en/master/)
### CheatSheet 🤯
- Markdown Guide: https://www.markdownguide.org/cheat-s...
- Markdown Cheatsheet: https://guides.github.com/pdfs/markdo...
