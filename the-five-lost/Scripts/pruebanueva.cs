// using UnityEngine;
// using UnityEngine.Networking;
// using TMPro;

// public class PreguntaManager : MonoBehaviour
// {
//     public TextMeshProUGUI preguntaText;
//     public TextMeshProUGUI respuestaText1;
//     public TextMeshProUGUI respuestaText2;
//     public TextMeshProUGUI respuestaText3;
//     public TextMeshProUGUI respuestaText4;

//     private string phpURL = "http://localhost/prueba/comprobarnuevo.php";  // Reemplaza con la URL de tu archivo PHP
//     private Pregunta preguntaActual;

//     private void Start()
//     {
//         StartCoroutine(LoadPreguntaFromPHP());
//     }

//     IEnumerator LoadPreguntaFromPHP()
//     {
//         using (UnityWebRequest webRequest = UnityWebRequest.Get(phpURL))
//         {
//             yield return webRequest.SendWebRequest();

//             if (webRequest.isNetworkError || webRequest.isHttpError)
//             {
//                 Debug.Log("Error: " + webRequest.error);
//             }
//             else
//             {
//                 string jsonResponse = webRequest.downloadHandler.text;
//                 // Parsea el JSON y almacena la pregunta en la variable preguntaActual
//                 preguntaActual = JsonUtility.FromJson<Pregunta>(jsonResponse);

//                 // Muestra la pregunta y sus respuestas en los objetos TextMeshPro
//                 preguntaText.text = preguntaActual.pregunta;
//                 respuestaText1.text = preguntaActual.respuestas[0];
//                 respuestaText2.text = preguntaActual.respuestas[1];
//                 respuestaText3.text = preguntaActual.respuestas[2];
//                 respuestaText4.text = preguntaActual.respuestas[3];
//             }
//         }
//     }
// }