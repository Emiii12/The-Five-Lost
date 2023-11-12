// using UnityEngine;
// using UnityEngine.Networking;
// using System.Collections;
// using TMPro;

// public class mostrarDatos : MonoBehaviour
// {
//     public TMP_Text preguntaText;
//     public TMP_Text respuesta1Text;
//     public TMP_Text respuesta2Text;
//     public TMP_Text respuesta3Text;
//     public TMP_Text respuesta4Text;
//     public TMP_Text escorrectaText;
    
//     private string respuestaCorrecta;

//     public int correcta;

//     public int arraySize = 4;
//     public int minValue = 0;
//     public int maxValue = 3;
//     private int[] randomArray;

//     public static string[] respuestas = new string[4];

//     private bool dataFetched = false;

//     // public static string phpURL = "http://localhost/PHP/comprobar.php?nivel=1";

//     private string phpURL;  // No establecerla como estática

//     private void Start()
//     {
//         randomArray = ArrayGenerator.GenerateRandomArray(arraySize, minValue, maxValue);
//         if (!dataFetched)
//         {
//             StartCoroutine(GetDataFromDatabase());
//         }
//     }

//     private IEnumerator GetDataFromDatabase()
//     {
//         // Obtiene la temática seleccionada de PlayerPrefs
//         string tematicaSeleccionada = PlayerPrefs.GetString("TematicaSeleccionada", "Entretenimiento");
//         // Incluye la temática en la URL
//         phpURL = "http://localhost/PHP/comprobar.php?nivel=1&tematica=" + tematicaSeleccionada;

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
//                 if (lines.Length >= 5)
//                 {
//                     respuestaCorrecta = lines[1].Replace("Respuesta: ", "");

//                     string pregunta = lines[0].Replace("Pregunta: ", "");
//                     for (int i = 1; i <= 4; i++)
//                     {
//                         respuestas[i - 1] = lines[i].Replace("Respuesta: ", ""); 
//                     }

//                     preguntaText.text = pregunta;

//                     respuesta1Text.text = respuestas[randomArray[0]];
//                     respuesta2Text.text = respuestas[randomArray[1]];
//                     respuesta3Text.text = respuestas[randomArray[2]];
//                     respuesta4Text.text = respuestas[randomArray[3]];

//                     for (int i = 0; i < respuestas.Length; i++)
//                     {
//                         if (randomArray[i] == 0)
//                         {
//                             correcta = i + 1;
//                         }
//                     }
//                     dataFetched = true;
//                 }
//             }
//         }
//     }
// }


// using UnityEngine;
// using UnityEngine.Networking;
// using System.Collections;
// using TMPro;

// public class mostrarDatos : MonoBehaviour
// {
//     public TMP_Text preguntaText;
//     public TMP_Text respuesta1Text;
//     public TMP_Text respuesta2Text;
//     public TMP_Text respuesta3Text;
//     public TMP_Text respuesta4Text;

//     private string respuestaCorrecta;

//     public int correcta;

//     public int arraySize = 4;
//     public int minValue = 0;
//     public int maxValue = 3;
//     private int[] randomArray;

//     public static string[] respuestas = new string[4];

//     private bool dataFetched = false;

//     // Cambios en la URL para incluir la temática
//     public static string tematicaSeleccionada = PlayerPrefs.GetString("TematicaSeleccionada", "Entretenimiento");

//     public static string phpURL = "http://localhost/PHP/comprobar.php?nivel=1&tematica=" + tematicaSeleccionada;

//     private void Start()
//     {
//         randomArray = ArrayGenerator.GenerateRandomArray(arraySize, minValue, maxValue);
//         if (!dataFetched)
//         {
//             StartCoroutine(GetDataFromDatabase());
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
//                 if (lines.Length >= 5)
//                 {
//                     respuestaCorrecta = lines[1].Replace("Respuesta: ", "");

//                     string pregunta = lines[0].Replace("Pregunta: ", "");
//                     for (int i = 1; i <= 4; i++)
//                     {
//                         respuestas[i - 1] = lines[i].Replace("Respuesta: ", "");
//                     }

//                     preguntaText.text = pregunta;

//                     respuesta1Text.text = respuestas[randomArray[0]];
//                     respuesta2Text.text = respuestas[randomArray[1]];
//                     respuesta3Text.text = respuestas[randomArray[2]];
//                     respuesta4Text.text = respuestas[randomArray[3]];

//                     for (int i = 0; i < respuestas.Length; i++)
//                     {
//                         if (randomArray[i] == 0)
//                         {
//                             correcta = i + 1;
//                         }
//                     }
//                     dataFetched = true;
//                 }
//             }
//         }
//     }
// }




using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using TMPro;

public class mostrarDatos : MonoBehaviour
{
    public TMP_Text preguntaText;
    public TMP_Text respuesta1Text;
    public TMP_Text respuesta2Text;
    public TMP_Text respuesta3Text;
    public TMP_Text respuesta4Text;

    private string respuestaCorrecta;

    public int correcta;

    public int arraySize = 4;
    public int minValue = 0;
    public int maxValue = 3;
    private int[] randomArray;

    public static string[] respuestas = new string[4];

    private bool dataFetched = false;

    // Cambios en la URL para incluir la temática
    public static string tematicaSeleccionada;

    // URL actualizada cada vez que cambia la temática
    public static string phpURL;

    private void Start()
    {
        // Obtener la temática seleccionada en PlayerPrefs en el método Start
        tematicaSeleccionada = PlayerPrefs.GetString("TematicaSeleccionada", "Entretenimiento");

        // Actualizar la URL con la temática seleccionada
        phpURL = "http://localhost/PHP/comprobar.php?nivel=1&tematica=" + tematicaSeleccionada;

        randomArray = ArrayGenerator.GenerateRandomArray(arraySize, minValue, maxValue);

        if (!dataFetched)
        {
            StartCoroutine(GetDataFromDatabase());
        }
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
                if (lines.Length >= 5)
                {
                    respuestaCorrecta = lines[1].Replace("Respuesta: ", "");

                    string pregunta = lines[0].Replace("Pregunta: ", "");
                    for (int i = 1; i <= 4; i++)
                    {
                        respuestas[i - 1] = lines[i].Replace("Respuesta: ", "");
                    }

                    preguntaText.text = pregunta;

                    respuesta1Text.text = respuestas[randomArray[0]];
                    respuesta2Text.text = respuestas[randomArray[1]];
                    respuesta3Text.text = respuestas[randomArray[2]];
                    respuesta4Text.text = respuestas[randomArray[3]];

                    for (int i = 0; i < respuestas.Length; i++)
                    {
                        if (randomArray[i] == 0)
                        {
                            correcta = i + 1;
                        }
                    }
                    dataFetched = true;
                }
            }
        }
    }
}
