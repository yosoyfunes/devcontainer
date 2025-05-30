# Guía de Inicio Rápido

Este proyecto utiliza **DevContainer** para facilitar el desarrollo y pruebas locales con **Terraform** y **LocalStack**.

## Requisitos

> **Nota:** El entorno DevContainer ya incluye **Docker**, **Terraform**, **Terragrunt** y **AWS CLI** preinstalados. No es necesario instalarlos manualmente.
> Además, **LocalStack ya se inicia automáticamente al abrir el DevContainer**.

## Pre-requisitos

Asegúrate de tener instalados los siguientes componentes antes de comenzar:

- [Visual Studio Code](https://code.visualstudio.com/)
- [Extensión Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) para VSCode
- [Docker](https://www.docker.com/)

## Pasos para iniciar el entorno

1. **Abrir en DevContainer**
   - Abre este proyecto en [Visual Studio Code](https://code.visualstudio.com/) con la extensión **Dev Containers** instalada.
   - Selecciona "Reabrir en Contenedor" cuando se te solicite.

2. **Verificar que LocalStack está corriendo**
   - LocalStack se inicia automáticamente al abrir el DevContainer, no necesitas iniciarlo manualmente.
   - Si necesitas reiniciarlo manualmente, ejecuta:
     ```sh
     localstack start -d
     ```

3. **Configurar AWS CLI (opcional)**
   - Si deseas usar AWS CLI para verificar recursos, configura el endpoint de LocalStack:
     ```sh
     aws configure
     ```
   - Luego, podes correr cuaquier comando de aws-cli:
     ```sh
     aws s3 ls
     ```
   - No es necesario especificar el endpoint de LocalStack manualmente, ya que la variable de entorno `AWS_ENDPOINT_URL` está configurada automáticamente en el entorno del contenedor.

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
     aws s3 ls
     ```

## Referencia

- El archivo `provider.tf` ya está configurado para usar LocalStack como endpoint de AWS:
  ```
  endpoints {
    s3 = "http://s3.localhost.localstack.cloud:4566"
  }
  ```
- Recuerda que para todos los comandos de AWS CLI estamos  usando el parámetro (seteado en la variable AWS_ENDPOINT_URL):
  ```
  --endpoint-url=http://localhost:4566
  ```

## Abrir el proyecto con GitHub Codespaces

Puedes abrir y trabajar en este proyecto directamente en la nube usando [GitHub Codespaces](https://github.com/features/codespaces). Solo haz clic en el botón **"Code"** y selecciona **"Open with Codespaces"** para iniciar un entorno de desarrollo completo y preconfigurado.

# Devcontainer para LocalStack DinD

Este entorno incluye:

- LocalStack y herramientas relacionadas
- Docker
- AWS CLI, Terraform, Terraform-docs
- **Terragrunt** (preinstalado en la imagen personalizada)

---
