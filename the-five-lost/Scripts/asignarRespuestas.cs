using UnityEngine;

public class OtroScript : MonoBehaviour
{
    // Agrega una referencia al script DatabaseManager en el Inspector
    public DatabaseManager databaseManager;

    private void Start()
    {
        // Accede al vector de respuestas desde el DatabaseManager
        string[] respuestas = databaseManager.respuestas;

        // Muestra el contenido del vector en la consola
        // Debug.Log("Respuesta 1: " + respuestas[0]);
        // Debug.Log("Respuesta 2: " + respuestas[1]);
        // Debug.Log("Respuesta 3: " + respuestas[2]);
        // Debug.Log("Respuesta 4: " + respuestas[3]);

    }
}
