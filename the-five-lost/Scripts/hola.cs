using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using TMPro;
using System.Collections.Generic;

public class hola : MonoBehaviour
{
    public TMP_Text preguntaText;
    public TMP_Text respuesta1Text;
    public TMP_Text respuesta2Text;
    public TMP_Text respuesta3Text;
    public TMP_Text respuesta4Text;
    public TMP_Text escorrectaText;
    private string respuestaSeleccionada;
    private string respuestaCorrecta;

    private int correcta;

    public int arraySize = 4;
    public int minValue = 0;
    public int maxValue = 3;
    private int[] randomArray;

    public static string[] respuestas = new string[4];

    private bool dataFetched = false;

    private void Start()
    {
        randomArray = GenerateRandomArray(arraySize, minValue, maxValue);
        if (!dataFetched)
        {
            StartCoroutine(GetDataFromDatabase());
        }
    }

    private IEnumerator GetDataFromDatabase()
    {
        string phpURL = "http://localhost/PHP/comprobar.php";

        using (UnityWebRequest www = UnityWebRequest.Get(phpURL))
        {
            yield return www.SendWebRequest();

            if (www.result == UnityWebRequest.Result.ConnectionError || www.result == UnityWebRequest.Result.ProtocolError)
            {
                // Debug.LogError("Error: " + www.error);
            }
            else
            {
                string data = www.downloadHandler.text;
                
                string[] lines = data.Split('\n');      
                if (lines.Length >= 5)
                {
                    respuestaCorrecta = lines[1].Replace("Respuesta: ", "");
                    // Debug.Log("La respuesta correcta es: " + respuestaCorrecta);
                    

                    string pregunta = lines[0].Replace("Pregunta: ", "");
                    for (int i = 1; i <= 4; i++)
                    {
                        respuestas[i - 1] = lines[i].Replace("Respuesta: ", "");
                        // Debug.Log(respuestas[i - 1]);
                    }

                    preguntaText.text = pregunta;

                    //ramdon conb logica para no repetir numeros enel vector R
                    // R[ 3 2 1 0]
                    //busca en R[] la pas del numero 1  
                    respuesta1Text.text = respuestas[randomArray[0]];
                    respuesta2Text.text = respuestas[randomArray[1]];
                    respuesta3Text.text = respuestas[randomArray[2]];
                    respuesta4Text.text = respuestas[randomArray[3]];
                    Debug.Log(respuestas[0]);

                    for(int i = 0 ; i < respuestas.Length ; i++)
                    {
                        if(randomArray[i] == 0) 
                        {
                            correcta = i+1;
                            //Debug.Log(correcta);
                            //Debug.Log(respuestaCorrecta);
                        }
                    }
                
                    dataFetched = true; // Marcar que los datos han sido cargados
                }
            }
        }
    }
    private bool scriptRunning = false;

    private void OnTriggerEnter(Collider other)
    {
        if (!scriptRunning)
        {
            switch (this.tag)
            {
                case "1":
                    if(correcta == 1)
                    {
                        respuestaSeleccionada = respuestas[correcta];
                        escorrectaText.text = "Win";
                    }else{
                        //perdiste
                    }
                    break;

                case "2":
                    respuestaSeleccionada = respuestas[1];
                    escorrectaText.text = respuestaSeleccionada;
                    break;

                case "3":
                    respuestaSeleccionada = respuestas[2];
                    escorrectaText.text = respuestaSeleccionada;
                    break;

                case "4":
                    respuestaSeleccionada = respuestas[3];
                    escorrectaText.text = respuestaSeleccionada;
                    break;
            }
        }
    }

    int[] GenerateRandomArray(int size, int min, int max)
    {
        if (size > (max - min + 1))
        {
            Debug.LogError("Tamaño del array es mayor que el rango de números posibles.");
            return null;
        }

        List<int> numbers = new List<int>();

        for (int i = min; i <= max; i++)
        {
            numbers.Add(i);
        }

        int[] resultArray = new int[size];
        for (int i = 0; i < size; i++)
        {
            int randomIndex = Random.Range(0, numbers.Count);
            resultArray[i] = numbers[randomIndex];
            numbers.RemoveAt(randomIndex);
        }

        return resultArray;
    }
    
}





// using UnityEngine;
// using UnityEngine.Networking;
// using System.Collections;
// using TMPro;

// public class hola : MonoBehaviour
// {
//     private string phpURL = "http://localhost/PHP/comprobar.php";

//     public TMP_Text preguntaText;
//     public TMP_Text respuesta1Text;
//     public TMP_Text respuesta2Text;
//     public TMP_Text respuesta3Text;
//     public TMP_Text respuesta4Text;
//     public TMP_Text escorrectaText;

//     private int currentQuestionID = 1;
//     private static bool dataFetched = false;

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
//         using (UnityWebRequest www = UnityWebRequest.Get(phpURL))
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

//                 if (lines.Length >= 6)
//                 {
//                     respuestaCorrecta = lines[lines.Length - 2].Replace("Respuesta: ", "");
//                     Debug.Log("La respuesta correcta es: " + respuestaCorrecta);

//                     string pregunta = lines[0].Replace("Pregunta: ", "");
//                     for (int i = 1; i <= 4; i++)
//                     {
//                         respuestas[i - 1] = lines[i].Replace("Respuesta: ", "");
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
//         switch (this.tag)
//         {
//             case "1":
//                  
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
//             Debug.Log("Respuesta Correcta: " + respuestaSeleccionada);
//             // Realiza las acciones que desees para manejar la respuesta correcta
//         }
//         else
//         {
//             escorrectaText.text = "Respuesta Incorrecta";
//             Debug.Log("Respuesta Incorrecta. Respuesta correcta: " + respuestaCorrecta);
//             Debug.Log("Respuesta seleccionada: " + respuestaSeleccionada);
//             // Realiza las acciones que desees para manejar la respuesta incorrecta
//         }
//     }
// }
    


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
//                     Debug.Log("La respuesta correcta es: " + respuestaCorrecta);

//                     string pregunta = lines[0].Replace("Pregunta: ", "");
//                     for (int i = 1; i <= 4; i++)
//                     {
//                         respuestas[i - 1] = lines[i].Replace("Respuesta: ", "");
//                         // Debug.Log(lines[ i]);
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
