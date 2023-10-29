using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;
using TMPro;

public class hola : MonoBehaviour
{
    private string phpURL = "http://localhost/PHP/comprobar.php";

    public TMP_Text preguntaText;
    public TMP_Text respuesta1Text;
    public TMP_Text respuesta2Text;
    public TMP_Text respuesta3Text;
    public TMP_Text respuesta4Text;
    public TMP_Text escorrectaText;

    private int currentQuestionID = 1; // Identificador de la pregunta actual

    private string respuestaSeleccionada;
    private string respuestaCorrecta; // Declarar respuestaCorrecta como variable de instancia

    public Transform triggersParent;

    public string[] respuestas = new string[4];
    
    // Declarar las variables de respuesta como variables de instancia
    private string respuesta1;
    private string respuesta2;
    private string respuesta3;
    private string respuesta4;

    private void Start()
    {
        StartCoroutine(GetDataFromDatabase());
    }

    private IEnumerator GetDataFromDatabase()
    {
        using (UnityWebRequest www = UnityWebRequest.Get(phpURL + "?questionID=" + currentQuestionID))
        {
            yield return www.SendWebRequest();

            if (www.result == UnityWebRequest.Result.ConnectionError || www.result == UnityWebRequest.Result.ProtocolError)
            {
                Debug.LogError("Error: " + www.error);
            }
            else
            {
                string data = www.downloadHandler.text;
                string[] lines = data.Split('\n');

                if (lines.Length >= 5)
                {
                    respuestaCorrecta = lines[lines.Length - 1].Replace("RespuestaCorrecta: ", "");

                    string pregunta = lines[0].Replace("Pregunta: ", "");
                    respuesta1 = lines[1].Replace("Respuesta: ", "");
                    respuesta2 = lines[2].Replace("Respuesta: ", "");
                    respuesta3 = lines[3].Replace("Respuesta: ", "");
                    respuesta4 = lines[4].Replace("Respuesta: ", "");

                    respuestas[0] = respuesta1;
                    respuestas[1] = respuesta2;
                    respuestas[2] = respuesta3;
                    respuestas[3] = respuesta4;

                    preguntaText.text = pregunta;
                    respuesta1Text.text = respuesta1;
                    respuesta2Text.text = respuesta2;
                    respuesta3Text.text = respuesta3;
                    respuesta4Text.text = respuesta4;

                    
                    Debug.Log("1ra respuesta correcta: " + respuestaCorrecta);
                }
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    { 
        switch (this.tag)
        {
            case "1":
                // Debug.Log("aaaaa");
                respuestaSeleccionada = respuesta1;
                // Debug.Log(respuestaSeleccionada);
                // Debug.Log("aaaaaaaaaaaaaaaaa");
                break;

            case "2":
                // Debug.Log("con opcion 2");
                respuestaSeleccionada = respuesta2;
                break;

            case "3":
                // Debug.Log("con opcion 3");
                respuestaSeleccionada = respuesta3;
                break;

            case "4":
                // Debug.Log("con opcion 4");
                respuestaSeleccionada = respuesta4;
                
                break;
        }

        // Comparar respuestaSeleccionada con respuestaCorrecta después de que el jugador haya seleccionado una respuesta
        for (int i = 0; i < respuestas.Length; i++)
        {
            if (this.tag == (i + 1).ToString()) // Comprueba si la etiqueta coincide con el índice del arreglo
            {
                respuestaSeleccionada = respuestas[i];

                if (respuestaSeleccionada == respuestaCorrecta)
                {
                    escorrectaText.text = "Respuesta Correcta " + (i + 1);
                    Debug.Log(respuestaSeleccionada);
                    // Realiza las acciones que desees para manejar la respuesta correcta
                }
                else
                {
                    escorrectaText.text = "Respuesta Incorrecta " + (i + 1);
                    Debug.Log("2da respuesta correcta: " + respuestaCorrecta);
                    Debug.Log(respuestaSeleccionada);
                    // Realiza las acciones que desees para manejar la respuesta incorrecta
                }
            }
        }
    }
}

