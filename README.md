<div align="center">
  <h1 align="center">
    ⚡️ PYTHON KAFKA MICROSERVICE⚡️
  </h1>

  <strong>Este repositorio te permitirá tener una plantilla de un microservicio cuya arquitectura esta basada en eventos utilizando kafka 👍</strong>
</div>


Existe una necesidad de agilizar la comunicación entre diversos microservicios de modo que se pueda utilizar un bus de datos (o cola de mensajes) para lograr una arquitectura muy desacoplada y facilmente replicable.


## Acerca del Proyecto 🔍
IN PROGRESS
## Especificaciones Técnicas 🛠️
- Docker
- FastAPI
- Aiokafka
- Kafka-python
- Python3.9
## Instalación 🚀
1. Clonar Repositorio
2. Instalar Python3.9
3. Instalar Docker

## Como Utilizar 💻
1. Iniciar Infraestructura Local (Tarda unos minutos en inicializar): `make rebuild` y `make up`
2. Iniciar Entorno Virtual: `make setup`
3. Validar proyecto utilizando `continuous integration`: `make build`

### 🚶 Primeros Pasos
Con el ambiente local ejecutandose, puedes validar lo siguiente:
  1. Comprobar el `health-check` del microservicio utilizando la URL: `http://localhost:8000` .
  2. Comprobar el `swagger` del microservicio utlizando la URL: `http://localhost:8000/docs`
  3. Comprobar la `UI` de la cola de eventos (kafka) utilizando la siguiente URL: `http://localhost:19000`
  4. Publicar un nuevo evento a la cola utilizando la siguiente petición:
    ```
    json
    POST http://localhost:8000/producer
    Accept: application/json
    Content-Type: application/json
    Body:
    {
        "name": "value",
        "description": "value",
    }
    ``` 

### 📂  Estructura de Carpetas
```
├── 📁 src                # Código fuente del proyectos
├── 📁 docs               # Documentación relacionado al proyecto
├── 📁 requirements       # Requierimientos separados por ambiente
├── 📁 tests              # Tests asociados al proyecto
```
### ⚙️ Versionamiento
---
- Ejecución: `../workflows/ci.yaml`: 
- Descripción: **semantic-release** [Angular Commit Message Conventions](https://github.com/angular/angular/blob/master/CONTRIBUTING.md#-commit-message-format) 
  
| Mensaje Commit                                                                                                                                                                                   | Tipo de Release                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------------- |
| `fix(pencil): stop graphite breaking when too much pressure applied`                                                                                                                             | ~~Patch~~ Fix Release                                                                                           |
| `feat(pencil): add 'graphiteWidth' option`                                                                                                                                                       | ~~Minor~~ Feature Release                                                                                       |
| `perf(pencil): remove graphiteWidth option`<br><br>`BREAKING CHANGE: The graphiteWidth option has been removed.`<br>`The default graphite width of 10mm is always used for performance reasons.` | ~~Major~~ Breaking Release <br /> (Note that the `BREAKING CHANGE: ` token must be in the footer of the commit) |

## 🌚 Acciones del proyecto
A continuación se listan las acciones disponibles en el archivo `Makefile`:
```
up                   [docker-compose] run the project.
stop                 [docker-compose] stop Docker containers without removing them.
down                 [docker-compose] stop and remove Docker containers.
rebuild              [docker-compose] rebuild base Docker images.
reset                [docker-compose] update Docker images and reset local databases.
pull                 [docker-compose] update Docker images without losing local databases.

setup                [development] Setup a virutal environment.
install              [development] Install requirements dependencies.
lint                 [development] Runs linter.
test                 [development] Runs unit tests.
format               [development] Format code and sort imports.
release              [development] Run semantic-release.
deploy               [development] Dockerize project and push image to repository.

retry-release        [devops-utilities] retry last semantic-release.
dry-release          [devops-utilities] run dry semantic-release.
```
## Testing y Seguridad 🔥
### Tests Unitarios
- Carpeta: `tests/`
- Comando: `make tests` (considerar installación de dependencias)
### Tests Integración
- Carpeta: 
- Comando: 
### Tests Aceptación 
- Carpeta: 
- Comando:
## Deployment 🐳
IN PROGRESS

## Limitaciones y Mejoras ♻️
- ¿Cuáles son las limitaciones del diseño actual?
- ¿Cuáles son las posibles extensiones en las que pensar para el futuro?
- ¿Alguna otra consideración?

## Extras ⭐️
### Recursos Útiles 🛠
- [Aiokafka](https://aiokafka.readthedocs.io/en/stable/ka)
- [Docker](https://docs.docker.com/get-started/overview/)
- [FastAPI](https://fastapi.tiangolo.com)
- [Kafdrop](https://github.com/obsidiandynamics/kafdrop)
- [Kafka](https://kafka.apache.org)
- [Kafka-python](https://kafka-python.readthedocs.io/en/master/)
### CheatSheet 🤯
- Markdown Guide: https://www.markdownguide.org/cheat-s...
- Markdown Cheatsheet: https://guides.github.com/pdfs/markdo...

## Proyecto Original 
[Proyecto Original de FernandoBLima](https://github.com/FernandoBLima/python-kafka-docker)
