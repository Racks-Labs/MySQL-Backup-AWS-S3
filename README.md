
# MySQL AWS-S3 backups

Una aplicación simple de NodeJS para respaldar tu base de datos MySQL en S3 mediante un cron.

[![Desplegar en Railway](https://railway.app/button.svg)](https://railway.app/template/GRx3Mi?referralCode=rb8SV8)

## Uso local

Sigue estos pasos para configurar y utilizar la aplicación en tu entorno local:

1. Configura las variables de entorno según lo especificado en `/src/env.ts`.

2. Ejecuta el siguiente comando para instalar las dependencias:

   ```bash
   npm install
   ```

3. Luego, ejecuta el siguiente comando para compilar la aplicación:

   ```bash
   npm run build
   ```

4. Finalmente, inicia la aplicación con el siguiente comando:

   ```bash
   npm run start
   ```

Esta aplicación realiza automáticamente respaldos a las 5 a.m. por defecto. Además, es una versión mejorada en comparación con otros repositorios de respaldo, con una integración sencilla en Railway.

