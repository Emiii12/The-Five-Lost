using UnityEngine;
using UnityEngine.Networking;
using System.Collections;
using TMPro;
using UnityEngine.SceneManagement;

public class compararDatos : MonoBehaviour
{
    public TMP_Text escorrectaText;

    public mostrarDatos mostrarDatos;


    private string respuestaSeleccionada;

    public static string[] respuestas = new string[4];

    private int correcta;

    private static int nivelActual = 1;

    private string nombreEscenaActual;

    private bool scriptRunning = false;

    void Start()
    {
        nombreEscenaActual = SceneManager.GetActiveScene().name;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!scriptRunning)
        {
            if (other.tag == "Player")
            {
                switch (this.tag)
                {
                    case "1":
                        if(mostrarDatos.correcta == 1)
                        {
                            respuestaSeleccionada = mostrarDatos.respuestas[correcta];
                            Debug.Log("WIN");
                            Debug.Log(nivelActual);
                            if(nivelActual == 1) 
                            {
                                nivelActual+=1;
                            }
                            if(nivelActual == 8)  
                            {
                                SceneManager.LoadScene("TFL");
                            }
                            SceneManager.LoadScene(nombreEscenaActual);
                            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + (nivelActual++);
                        }else{
                            Debug.Log("LOSE");
                            nivelActual = 0 + 1;
                            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + (nivelActual);
                            Debug.Log(nivelActual);
                            SceneManager.LoadScene("TFL");
                        }
                        break;

                    case "2":
                        if(mostrarDatos.correcta == 2)
                        {
                            respuestaSeleccionada = mostrarDatos.respuestas[correcta];
                            Debug.Log("WIN");
                            Debug.Log(nivelActual);
                            if(nivelActual == 1) 
                            {
                                nivelActual+=1;
                            }
                            if(nivelActual == 8)  
                            {
                                SceneManager.LoadScene("TFL");
                            }
                            SceneManager.LoadScene(nombreEscenaActual);
                            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + (nivelActual++);
                        }else{
                            Debug.Log("LOSE");
                            nivelActual = 0 + 1;
                            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + (nivelActual);
                            Debug.Log(nivelActual);
                            SceneManager.LoadScene("TFL");
                        }
                        break;

                    case "3":
                        if(mostrarDatos.correcta == 3)
                        {
                            respuestaSeleccionada = mostrarDatos.respuestas[correcta];
                            Debug.Log("WIN");
                            Debug.Log(nivelActual);
                            if(nivelActual == 1) 
                            {
                                nivelActual+=1;
                            }
                            if(nivelActual == 8)  
                            {
                                SceneManager.LoadScene("TFL");
                            }
                            SceneManager.LoadScene(nombreEscenaActual);
                            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + (nivelActual++);
                        }else{
                            Debug.Log("LOSE");
                            nivelActual = 0 + 1;
                            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + (nivelActual);
                            Debug.Log(nivelActual);
                            SceneManager.LoadScene("TFL");
                        }
                        break;

                    case "4":
                        if(mostrarDatos.correcta == 4)
                        {
                            respuestaSeleccionada = mostrarDatos.respuestas[correcta];
                            Debug.Log("WIN");
                            Debug.Log(nivelActual);
                            if(nivelActual == 1) 
                            {
                                nivelActual+=1;
                            }
                            if(nivelActual == 8)  
                            {
                                SceneManager.LoadScene("TFL");
                            }
                            SceneManager.LoadScene(nombreEscenaActual);
                            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + (nivelActual++);
                        }else{
                            Debug.Log("LOSE");
                            nivelActual = 0 + 1;
                            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + (nivelActual);
                            Debug.Log(nivelActual);
                            SceneManager.LoadScene("TFL");
                        }
                        break;
                }
            }
        }
    }
}