# Guía de Inicio Rápido

Este proyecto utiliza **DevContainer** para facilitar el desarrollo y pruebas locales con **Terraform** y **LocalStack**.

## Requisitos

> **Nota:** El entorno DevContainer ya incluye **Docker**, **Terraform** y **AWS CLI** preinstalados. No es necesario instalarlos manualmente.
> Además, **LocalStack ya se inicia automáticamente al abrir el DevContainer**.

## Pasos para iniciar el entorno

1. **Abrir en DevContainer**
   - Abre este proyecto en [Visual Studio Code](https://code.visualstudio.com/) con la extensión **Dev Containers** instalada.
   - Selecciona "Reabrir en Contenedor" cuando se te solicite.

2. **Verificar que LocalStack está corriendo**
   - LocalStack se inicia automáticamente al abrir el DevContainer, no necesitas iniciarlo manualmente.

3. **Configurar AWS CLI (opcional)**
   - Si deseas usar AWS CLI para verificar recursos, configura el endpoint de LocalStack:
     ```sh
     aws configure
     ```
   - Luego, usa el endpoint de LocalStack en tus comandos:
     ```sh
     aws --endpoint-url=http://localhost:4566 s3 ls
     ```

## Ejecutar la prueba de Terraform

1. **Inicializar Terraform**
   ```sh
   terraform init
   ```

2. **Aplicar la configuración para crear un bucket**
   ```sh
   terraform apply
   ```
   - Acepta los cambios cuando se te solicite.

3. **Verificar el bucket**
   - Puedes listar los buckets usando AWS CLI:
     ```sh
     aws --endpoint-url=http://localhost:4566 s3 ls
     ```

## Referencia

- El archivo `provider.tf` ya está configurado para usar LocalStack como endpoint de AWS:
  ```
  endpoints {
    s3 = "http://s3.localhost.localstack.cloud:4566"
  }
  ```
- Recuerda que para todos los comandos de AWS CLI debes usar el parámetro:
  ```
  --endpoint-url=http://localhost:4566
  ```

---
