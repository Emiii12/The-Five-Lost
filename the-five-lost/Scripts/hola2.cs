using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using TMPro;

public class hola2 : MonoBehaviour
{
    /*
    public TMP_Text preguntaText;
    public TMP_Text respuesta1Text;
    public TMP_Text respuesta2Text;
    public TMP_Text respuesta3Text;
    public TMP_Text respuesta4Text;
    */
    public TMP_Text escorrectaText;
    
    private string respuestaSeleccionada;
    private string respuestaCorrecta;

    public static string[] respuestas = new string[4];

   // private bool dataFetched = false;


    private void Start()
    {/*
        if (!dataFetched)
        {
            StartCoroutine(GetDataFromDatabase());
        }*/
    }
/*
    private IEnumerator GetDataFromDatabase()
    {
        string phpURL = "http://localhost/PHP/comprobar.php";

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
                    respuestaCorrecta = lines[lines.Length - 2].Replace("RespuestaCorrecta: ", "");
                    Debug.Log("La respuesta correcta es: " + respuestaCorrecta);
                    

                    string pregunta = lines[0].Replace("Pregunta: ", "");
                    for (int i = 1; i <= 4; i++)
                    {
                        respuestas[i - 1] = lines[i].Replace("Respuesta: ", "");
                        Debug.Log(respuestas[i - 1]);
                    }

                    preguntaText.text = pregunta;
                    respuesta1Text.text = respuestas[0];
                    respuesta2Text.text = respuestas[1];
                    respuesta3Text.text = respuestas[2];
                    respuesta4Text.text = respuestas[3];

                    dataFetched = true; // Marcar que los datos han sido cargados
                }
            }
        }
    }
    */
    private void OnTriggerEnter(Collider other)
    {
        
        switch (this.tag)
        {
            case "1":
                respuestaSeleccionada = respuestas[0];
                escorrectaText.text = respuestaSeleccionada;
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

        //if (respuestaSeleccionada == respuestaCorrecta)
        //{
           // escorrectaText.text = "Respuesta Correcta";
            // Debug.Log("Respuesta Correcta: " + respuestaSeleccionada);
            // Realiza las acciones que desees para manejar la respuesta correcta
        //}
       // else
       // {
            //escorrectaText.text = "Respuesta Incorrecta";
            // Debug.Log("Respuesta Incorrecta. Respuesta correcta: " + respuestaCorrecta);
            // Debug.Log("Respuesta seleccionada: " + respuestaSeleccionada);
            // Realiza las acciones que desees para manejar la respuesta incorrecta
      //  }
    
    }
    
}




