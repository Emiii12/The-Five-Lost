using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using TMPro;

public class compararDatos : MonoBehaviour
{
    public TMP_Text escorrectaText;

    public mostrarDatos mostrarDatos;

    private string respuestaSeleccionada;
    private string respuestaCorrecta;

    public static string[] respuestas = new string[4];

   // private bool dataFetched = false

    private int correcta;

    private bool scriptRunning = false;

    private void OnTriggerEnter(Collider other)
    {
        if (!scriptRunning)
        {
            switch (this.tag)
            {
                case "1":
                    if(mostrarDatos.correcta == 1)
                    {
                        respuestaSeleccionada = mostrarDatos.respuestas[correcta];
                        escorrectaText.text = "Win";
                        
                    }else{
                        escorrectaText.text = "LOSE";
                    }
                    break;

                case "2":
                    if(mostrarDatos.correcta == 2)
                    {
                        respuestaSeleccionada = mostrarDatos.respuestas[correcta];
                        escorrectaText.text = "Win";
                    }else{
                        escorrectaText.text = "LOSE";
                    }
                    break;

                case "3":
                    if(mostrarDatos.correcta == 3)
                    {
                        respuestaSeleccionada = mostrarDatos.respuestas[correcta];
                        escorrectaText.text = "Win";
                    }else{
                        escorrectaText.text = "LOSE";
                    }
                    break;

                case "4":
                    if(mostrarDatos.correcta == 4)
                    {
                        respuestaSeleccionada = mostrarDatos.respuestas[correcta];
                        escorrectaText.text = "Win";
                    }else{
                        escorrectaText.text = "LOSE";
                    }
                    break;
            }
        }
    }
}