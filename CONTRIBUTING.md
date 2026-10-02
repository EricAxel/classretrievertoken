# Cómo contribuir

## Preparar un cambio

1. Clonar el repositorio y crear una rama descriptiva desde `main`.
2. Realizar cambios enfocados en una sola tarea.
3. Actualizar el README si cambian la configuración o las instrucciones de uso.
4. Revisar los archivos incluidos antes de crear el commit; no añadir secretos ni dependencias descargadas.
5. Abrir un pull request que explique el cambio y cómo se verificó.

## Convenciones

- Respetar la configuración de `.editorconfig`.
- Escribir mensajes de commit claros y descriptivos.
- Usar valores ficticios en ejemplos de configuración.
- Mantener los archivos de bloqueo de dependencias cuando se elija un gestor de paquetes.

## Verificación

Ejecutar `flutter pub get`, `flutter analyze` y `flutter test` en un entorno con Flutter instalado. La exportación incluye una prueba básica de widgets; añadir validaciones pertinentes cuando se modifique el comportamiento de la aplicación.
