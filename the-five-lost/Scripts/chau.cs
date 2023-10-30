using UnityEngine;
using TMPro;

public class AnswerManager : MonoBehaviour
{
    public TMP_Text escorrectaText;

    public int respuestaCorrecta;

    private bool dataFetched = false;

    private void OnTriggerEnter(Collider other)
    {
        if (dataFetched)
        {
            escorrectaText.text = "Respuesta: " + hola.respuestas[respuestaCorrecta]; // Acceder a respuestas a través de DatabaseManager
        }
    }
}
