using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using TMPro;

public class hola2 : MonoBehaviour
{
    public TMP_Text escorrectaText;

    public hola hola;


    
    private string respuestaSeleccionada;
    private string respuestaCorrecta;

    public static string[] respuestas = new string[4];

   // private bool dataFetched = false

    private int correcta;

    private bool dataFetched = false;

    private bool scriptRunning = false;
    private void Start()
    {/*
        if (!dataFetched)
        {
            StartCoroutine(GetDataFromDatabase());
        }*/
    }
    private void OnTriggerEnter(Collider other)
    {
        if (!scriptRunning)
        {
            switch (this.tag)
            {
                case "1":
                    if(hola.correcta == 1)
                    {
                        respuestaSeleccionada = hola.respuestas[correcta];
                        escorrectaText.text = "Win";
                        
                    }else{
                        escorrectaText.text = "LOSE";
                    }
                    break;

                case "2":
                    if(hola.correcta == 2)
                    {
                        respuestaSeleccionada = hola.respuestas[correcta];
                        escorrectaText.text = "Win";
                    }else{
                        escorrectaText.text = "LOSE";
                    }
                    break;

                case "3":
                    if(hola.correcta == 3)
                    {
                        respuestaSeleccionada = hola.respuestas[correcta];
                        escorrectaText.text = "Win";
                    }else{
                        escorrectaText.text = "LOSE";
                    }
                    break;

                case "4":
                    if(hola.correcta == 4)
                    {
                        respuestaSeleccionada = hola.respuestas[correcta];
                        escorrectaText.text = "Win";
                    }else{
                        escorrectaText.text = "LOSE";
                    }
                    break;
            }
        }
    }
}