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
    private static string[] respuestas = new string[4];
    private int correcta;
    public static int nivelActual = 1;
    private string nombreEscenaActual;
    public static string nombreEscenaPrincipal = "TFL";
    private bool scriptRunning = false;

    public static bool superado;

    void Start()
    {
        nombreEscenaActual = SceneManager.GetActiveScene().name;
        mostrarDatos.tematicaSeleccionada = PlayerPrefs.GetString("TematicaSeleccionada", "Entretenimiento");
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!scriptRunning && other.tag == "Player")
        {
            int tagValue = int.Parse(gameObject.tag);
            
            mostrarDatos.phpURL = "http://localhost/PHP/comprobar.php?nivel=" + nivelActual + "&tematica=" + mostrarDatos.tematicaSeleccionada;  

            if (mostrarDatos.correcta == tagValue)
            {
                respuestaSeleccionada = mostrarDatos.respuestas[correcta];
            }
            else
            {
                nivelActual = 1;
                SceneManager.LoadScene(nombreEscenaPrincipal);
                return;
            }

            if (nivelActual == 2)
            {
                SceneManager.LoadScene(nombreEscenaPrincipal);
                nivelActual = 1;
                if (!superado)
                {
                    PlayerPrefs.SetInt(mostrarDatos.tematicaSeleccionada + "_superado", 1);
                    superado = true;
                }
            }
            else
            {
                nivelActual++;
                SceneManager.LoadScene(nombreEscenaActual);
            }
        }
    }
}


























































