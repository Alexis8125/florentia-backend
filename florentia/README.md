# Florentia - API de Chat con OpenAI

Una API simple para interactuar con los modelos de OpenAI, espec�ficamente dise�ada para Florentia, una profesora de ingl�s para ni�os.

## Requisitos

- .NET 8.0 SDK o superior
- Una clave de API de OpenAI

## Configuraci�n

1. Clona este repositorio
2. Crea un archivo `.env` en la ra�z del proyecto con el siguiente contenido:

```
OPENAI_API_KEY=tu_clave_de_api_aqui
```

Alternativamente, puedes configurar la clave de API en `appsettings.json`:

```json
{
  "OpenAI": {
    "ApiKey": "tu_clave_de_api_aqui"
  }
}
```

## Ejecutar la aplicaci�n

```bash
dotnet run
```

La API estar� disponible en `https://localhost:5001` o `http://localhost:5000`

## Endpoints

### POST /chat
Env�a un mensaje y recibe una respuesta del modelo de OpenAI.

**Ejemplo de solicitud:**
```json
{
  "userMessage": "�C�mo se dice 'hola' en ingl�s?"
}
```

**Ejemplo de respuesta:**
```json
{
  "userMessage": "�C�mo se dice 'hola' en ingl�s?",
  "aiResponse": "En ingl�s, 'hola' se dice 'hello'. Es una palabra muy f�cil y com�n que puedes usar para saludar a alguien en cualquier momento del d�a."
}
```

### GET /health
Comprueba si la API est� funcionando correctamente.

**Ejemplo de respuesta:**
```json
{
  "status": "Healthy",
  "environment": "Development",
  "timestamp": "2023-06-15T12:34:56.789Z"
}
```