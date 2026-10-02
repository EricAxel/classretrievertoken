# ClassRetrieverToken

Aplicación Flutter exportada de FlutterFlow para gestionar un flujo de autorización de Google OAuth e integrar el intercambio de tokens con servicios de BuildShip.

Incluye código Dart, recursos y proyectos para web, Android e iOS.

## Clonar el repositorio

```sh
git clone https://github.com/EricAxel/classretrievertoken.git
cd classretrievertoken
```

## Requisitos y ejecución

Instalar Flutter con una versión de Dart compatible con `>=3.0.0 <4.0.0` y con las dependencias de `pubspec.yaml`.

```sh
flutter pub get
flutter run -d chrome
```

Para revisar el código y ejecutar la prueba incluida:

```sh
flutter analyze
flutter test
```

Estos comandos no se han ejecutado durante la importación porque Flutter no está disponible en el entorno utilizado para subir el repositorio.

## Estructura

- `lib/`: aplicación, pantallas, acciones y llamadas a APIs.
- `assets/`: imágenes, animaciones y otros recursos.
- `web/`, `android/`, `ios/`: archivos específicos de cada plataforma.
- `test/`: prueba de widgets incluida en la exportación.
- `pubspec.yaml`: dependencias y configuración de recursos.

- `.gitignore`: excluye credenciales locales, archivos temporales y artefactos comunes.
- `.gitattributes`: normaliza los finales de línea de archivos de texto.
- `.editorconfig`: establece convenciones básicas de edición.
- `CONTRIBUTING.md`: explica cómo proponer cambios.

## Configuración OAuth pendiente

Se retiró un secreto OAuth incrustado en dos archivos antes de publicar el código. Los parámetros `clientSecret` quedaron vacíos; el intercambio que requiere ese secreto no funcionará hasta completar la integración segura en un backend. No reintroducir el secreto en el cliente Flutter ni en sus parámetros de compilación, ya que se distribuyen con la aplicación.

Revisar el cliente OAuth, las URLs de redirección y los endpoints BuildShip en `lib/backend/api_requests/api_calls.dart` y `lib/pages/oauthland/oauthland_widget.dart`. La exportación contiene dos URLs de redirección distintas; deben ajustarse a la configuración del despliegue. Rotar el secreto que estaba incluido en la exportación original.

No subir tokens, contraseñas ni archivos `.env` con credenciales. Si el proyecto requiere configuración, añadir un `.env.example` con valores de ejemplo sin secretos.

## Licencia

Todavía no se ha elegido una licencia para este proyecto.
