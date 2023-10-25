using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class DataManager : MonoBehaviour
{
    private string phpURL = "http://localhost/prueba/comprobar.php";

    public Transform triggersParent; // El objeto que contiene los triggers
    private List<string> respuestasCorrectas = new List<string>();
    private string respuestaCorrecta;


    public TMP_Text preguntaText;
    public TMP_Text respuesta1Text;
    public TMP_Text respuesta2Text;
    public TMP_Text respuesta3Text;
    public TMP_Text respuesta4Text;
    public TMP_Text escorrectaText;

    private void Empezar()
    {
        StartCoroutine(GetDataFromDatabase());
    }

    private IEnumerator GetDataFromDatabase()
    {
        using (UnityWebRequest www = UnityWebRequest.Get(phpURL))
        {
            yield return www.SendWebRequest();

            if (www.result == UnityWebRequest.Result.ConnectionError || www.result == UnityWebRequest.Result.ProtocolError)
            {
                Debug.LogError("Error: " + www.error);
            }
            else
            {
                string data = www.downloadHandler.text;
                string[] lines = data.Split("\n");

                if (lines.Length >= 5)
                {
                    respuestaCorrecta = lines[lines.Length - 1].Replace("Respuesta Correcta: ", "");

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

//     public void CheckAnswer(string respuestaSeleccionada)
//     {
//         if (respuestaSeleccionada == respuestaCorrecta)
//         {
//             escorrectaText.text = ("Respuesta Correcta");
//             // Aquí puedes realizar cualquier acción que desees para manejar la respuesta correcta
//         }
//         else
//         {
//             escorrectaText.text = ("Respuesta Incorrecta");
//             // Aquí puedes realizar cualquier acción que desees para manejar la respuesta incorrecta
//         }
//     }
    
//     public class RespuestaTrigger : MonoBehaviour
// {
//     public string respuestaTexto; // Asigna el texto de la respuesta en el Inspector

    private void OnTriggerEnter(Collider other)
     {
        Debug.Log(  "hola:" + other.tag );
//         if (other.CompareTag("Player")) // Asegúrate de tener una etiqueta "Player" en tu jugador
//         {
//             // Acción que ocurre al seleccionar esta respuesta
//             DataManager dataManager = FindObjectOfType<DataManager>();
//             if (dataManager != null)
//             {
//                 dataManager.CheckAnswer(respuestaTexto);
//             }
//         }
//     }
 }
}