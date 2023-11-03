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

    public int correcta;

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
                Debug.LogError("Error: " + www.error);
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

                    respuesta1Text.text = respuestas[randomArray[0]];
                    respuesta2Text.text = respuestas[randomArray[1]];
                    respuesta3Text.text = respuestas[randomArray[2]];
                    respuesta4Text.text = respuestas[randomArray[3]];
                    // Debug.Log(respuestas[0]);

                    for(int i = 0 ; i < respuestas.Length ; i++)
                    {
                        if(randomArray[i] == 0) 
                        {
                            correcta = i+1;
                            //Debug.Log(correcta);
                            // Debug.Log(respuestaCorrecta);
                        }
                    }
                    dataFetched = true; 
                }
            }
        }
    }
    private bool scriptRunning = false;

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