using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
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

    private int currentQuestionID = 1;

    private string respuestaCorrecta;
    private string respuestaSeleccionada;

    private string[] respuestas = new string[4];

    private void Start()
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
                string[] lines = data.Split('\n');

                foreach (string line in lines)
                {
                    Debug.Log("Received Data: " + line);
                }

                if (lines.Length >= 6)
                {
                    respuestaCorrecta = lines[lines.Length - 2].Replace("Respuesta: ", "");

                    string pregunta = lines[0].Replace("Pregunta: ", "");
                    for (int i = 1; i <= 4; i++)
                    {
                        respuestas[i - 1] = lines[i].Replace("Respuesta: ", "");
                    }

                    preguntaText.text = pregunta;
                    respuesta1Text.text = respuestas[0];
                    respuesta2Text.text = respuestas[1];
                    respuesta3Text.text = respuestas[2];
                    respuesta4Text.text = respuestas[3];
                }
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        switch (this.tag)
        {
            case "1":
                respuestaSeleccionada = respuestas[0];
                break;

            case "2":
                respuestaSeleccionada = respuestas[1];
                break;

            case "3":
                respuestaSeleccionada = respuestas[2];
                break;

            case "4":
                respuestaSeleccionada = respuestas[3];
                break;
        }

        if (respuestaSeleccionada == respuestaCorrecta)
        {
            escorrectaText.text = "Respuesta Correcta";
            Debug.Log("Respuesta Correcta: " + respuestaSeleccionada);
            // Realiza las acciones que desees para manejar la respuesta correcta
        }
        else
        {
            escorrectaText.text = "Respuesta Incorrecta";
            Debug.Log("Respuesta Incorrecta. Respuesta correcta: " + respuestaCorrecta);
            Debug.Log("Respuesta seleccionada: " + respuestaSeleccionada);
            // Realiza las acciones que desees para manejar la respuesta incorrecta
        }
    }
}
    


// using UnityEngine;
// using UnityEngine.Networking;
// using System.Collections;
// using TMPro;

// public class hola : MonoBehaviour
// {
//     private static int currentQuestionID = 1;
//     private static bool dataFetched = false;

//     private string phpURL = "http://localhost/PHP/comprobar.php";

//     public TMP_Text preguntaText;
//     public TMP_Text respuesta1Text;
//     public TMP_Text respuesta2Text;
//     public TMP_Text respuesta3Text;
//     public TMP_Text respuesta4Text;
//     public TMP_Text escorrectaText;

//     private string respuestaCorrecta;
//     private string respuestaSeleccionada;
//     private string[] respuestas = new string[4];

//     private void Start()
//     {
//         if (!dataFetched)
//         {
//             StartCoroutine(GetDataFromDatabase());
//             dataFetched = true;
//         }
//     }

//     private IEnumerator GetDataFromDatabase()
//     {
//         using (UnityWebRequest www = UnityWebRequest.Get(phpURL + "?questionID=" + currentQuestionID))
//         {
//             yield return www.SendWebRequest();

//             if (www.result == UnityWebRequest.Result.ConnectionError || www.result == UnityWebRequest.Result.ProtocolError)
//             {
//                 Debug.LogError("Error: " + www.error);
//             }
//             else
//             {
//                 string data = www.downloadHandler.text;
//                 string[] lines = data.Split('\n');

//                 foreach (string line in lines)
//                 {
//                     Debug.Log("Received Data: " + line);
//                 }

//                 if (lines.Length >= 5)
//                 {
//                     respuestaCorrecta = lines[lines.Length-1].Replace("RespuestaCorrecta: ", "");

//                     string pregunta = lines[0].Replace("Pregunta: ", "");
//                     for (int i = 1; i <= 4; i++)
//                     {
//                         respuestas[i - 1] = lines[i].Replace("Respuesta: ", "");
//                         Debug.Log(lines[i]);
//                     }

//                     preguntaText.text = pregunta;
//                     respuesta1Text.text = respuestas[0];
//                     respuesta2Text.text = respuestas[1];
//                     respuesta3Text.text = respuestas[2];
//                     respuesta4Text.text = respuestas[3];
//                 }
//             }
//         }
//     }

//     private void OnTriggerEnter(Collider other)
//     {
//         // Verifica cuál puerta se activó (usando tags, nombres o cualquier método que elijas)
//         switch (this.tag)
//         {
//             case "1":
//                 respuestaSeleccionada = respuestas[0];
//                 break;

//             case "2":
//                 respuestaSeleccionada = respuestas[1];
//                 break;

//             case "3":
//                 respuestaSeleccionada = respuestas[2];
//                 break;

//             case "4":
//                 respuestaSeleccionada = respuestas[3];
//                 break;
//         }

//         if (respuestaSeleccionada == respuestaCorrecta)
//         {
//             escorrectaText.text = "Respuesta Correcta";
//             // Debug.Log("Respuesta Correcta: " + respuestaSeleccionada);
//             // Realiza las acciones que desees para manejar la respuesta correcta
//         }
//         else
//         {
//             escorrectaText.text = "Respuesta Incorrecta";
//             // Debug.Log("Respuesta Incorrecta. Respuesta correcta: " + respuestaCorrecta);
//             // Debug.Log("Respuesta seleccionada: " + respuestaSeleccionada);
//             // Realiza las acciones que desees para manejar la respuesta incorrecta
//         }
        
//     }
// }









// using UnityEngine;
// using System.Collections;
// using System.Collections.Generic;
// using TMPro;

// public class hola : MonoBehaviour
// {
//     public List<PreguntaYRespuestas> preguntasYRespuestas; // Asigna las preguntas y respuestas en el Inspector
//     public TMP_Text preguntaText;
//     public TMP_Text respuesta1Text;
//     public TMP_Text respuesta2Text;
//     public TMP_Text respuesta3Text;
//     public TMP_Text respuesta4Text;
//     public TMP_Text escorrectaText;

//     private int currentQuestionID = 0; // Identificador de la pregunta actual
//     private string respuestaSeleccionada;
    
//     [System.Serializable]
//     public class PreguntaYRespuestas
//     {
//         public string pregunta;
//         public List<string> respuestas;
//         public int respuestaCorrecta;
//     }

//     private void Start()
//     {
//         MostrarPregunta();
//     }

//     private void MostrarPregunta()
//     {
//         if (currentQuestionID < preguntasYRespuestas.Count)
//         {
//             PreguntaYRespuestas preguntaActual = preguntasYRespuestas[currentQuestionID];

//             preguntaText.text = preguntaActual.pregunta;
//             respuesta1Text.text = preguntaActual.respuestas[0];
//             respuesta2Text.text = preguntaActual.respuestas[1];
//             respuesta3Text.text = preguntaActual.respuestas[2];
//             respuesta4Text.text = preguntaActual.respuestas[3];
//         }
//         else
//         {
//             // Has completado todas las preguntas, puedes realizar una acción especial aquí.
//         }
//     }

//     private void OnTriggerEnter(Collider other)
//     {
//         int triggerIndex = int.Parse(this.tag) - 1; // Convierte la etiqueta del trigger a un índice

//         if (currentQuestionID < preguntasYRespuestas.Count)
//         {
//             PreguntaYRespuestas preguntaActual = preguntasYRespuestas[currentQuestionID];
//             respuestaSeleccionada = preguntaActual.respuestas[triggerIndex];

//             if (respuestaSeleccionada == preguntaActual.respuestas[preguntaActual.respuestaCorrecta])
//             {
//                 escorrectaText.text = "Respuesta Correcta " + (triggerIndex + 1);
//                 currentQuestionID++; // Avanzar a la siguiente pregunta
//                 MostrarPregunta();
//             }
//             else
//             {
//                 escorrectaText.text = "Respuesta Incorrecta " + (triggerIndex + 1);
//                 // Puedes implementar acciones para manejar la respuesta incorrecta aquí.
//             }
//         }
//     }
// }
