
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;
using TMPro;

public class DatabaseManager : MonoBehaviour
{
    private string phpURL = "http://localhost/prueba/comprobar.php";

    public TMP_Text preguntaText;
    public TMP_Text respuesta1Text;
    public TMP_Text respuesta2Text;
    public TMP_Text respuesta3Text;
    public TMP_Text respuesta4Text;
    public TMP_Text escorrectaText;

    private int currentQuestionID = 1; // Identificador de la pregunta actual

    private string respuestaSeleccionada;

    public Transform triggersParent;

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
                    string respuestaCorrecta = lines[lines.Length - 1].Replace("Respuesta Correcta: ", "");

                    string pregunta = lines[0].Replace("Pregunta: ", "");
                    string respuesta1 = lines[1].Replace("Respuesta: ", "");
                    string respuesta2 = lines[2].Replace("Respuesta: ", "");
                    string respuesta3 = lines[3].Replace("Respuesta: ", "");
                    string respuesta4 = lines[4].Replace("Respuesta: ", "");

                    preguntaText.text = pregunta;
                    respuesta1Text.text = respuesta1;
                    respuesta2Text.text = respuesta2;
                    respuesta3Text.text = respuesta3;
                    respuesta4Text.text = respuesta4;
                }
            }
        }
    }

    public IEnumerator CheckAnswer(string respuestaSeleccionada)
    {
        using (UnityWebRequest www = UnityWebRequest.Get(phpURL + "?questionID=" + currentQuestionID + "&respuesta=" + respuestaSeleccionada))
        {
            yield return www.SendWebRequest();

            if (www.result == UnityWebRequest.Result.ConnectionError || www.result == UnityWebRequest.Result.ProtocolError)
            {
                Debug.LogError("Error: " + www.error);
            }
            else
            {
                string result = www.downloadHandler.text;
                if (result == "Correcto")
                {
                    escorrectaText.text = "Respuesta Correcta";
                    // Aquí puedes realizar cualquier acción que desees para manejar la respuesta correcta
                }
                else
                {
                    escorrectaText.text = "Respuesta Incorrecta";
                    // Aquí puedes realizar cualquier acción que desees para manejar la respuesta incorrecta
                }
            }
        }

        // Cambiar a la siguiente pregunta
        currentQuestionID++;
        yield return new WaitForSeconds(2f);
        StartCoroutine(GetDataFromDatabase());
    }
     
        private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            escorrectaText.text = "Respuesta Correcta";
            // Itera a través de los hijos del objeto "padre" (triggersParent)
            foreach (Transform child in triggersParent)
            {
                
                TMP_Text triggerText = child.GetComponentInChildren<TMP_Text>();

                if (triggerText != null)
                {
                    
                    // Comprueba si el jugador ha colisionado con un trigger hijo
                    if (other.transform.IsChildOf(child))
                    {
                        // Asigna la respuesta correspondiente en base al TMP_Text del trigger
                        if (triggerText.text == respuesta1Text.text)
                        {
                            respuestaSeleccionada = respuesta1Text.text;
                        }
                        else if (triggerText.text == respuesta2Text.text)
                        {
                            respuestaSeleccionada = respuesta2Text.text;
                        }
                        else if (triggerText.text == respuesta3Text.text)
                        {
                            respuestaSeleccionada = respuesta3Text.text;
                        }
                        else if (triggerText.text == respuesta4Text.text)
                        {
                            respuestaSeleccionada = respuesta4Text.text;
                        }

                        // Llama al método para comprobar la respuesta
                        StartCoroutine(CheckAnswer(respuestaSeleccionada));
                        break; // Sale del bucle una vez que se ha encontrado el trigger correcto.
                    }
                }
            }
        }
    }
}