using UnityEngine;
using UnityEngine.SceneManagement;

public class seleccionarTematica : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            string tematica = "";

            // Utiliza un switch para asignar la temática según el tag del trigger
            switch (this.tag)
            {
                case "Entretenimiento":
                    tematica = "Entretenimiento";
                    PlayerPrefs.SetString("TematicaSeleccionada", tematica);
                    SceneManager.LoadScene("Entretenimiento");
                    // Debug.Log("tematica");
                    break;
                case "Musica":
                    tematica = "Musica";
                    PlayerPrefs.SetString("TematicaSeleccionada", tematica);
                    SceneManager.LoadScene("Musica");
                    // Debug.Log("tematica");
                    break;
                case "CulturaGeneral":
                    tematica = "Cultura General";
                    PlayerPrefs.SetString("TematicaSeleccionada", tematica);
                    SceneManager.LoadScene("Cultura General");
                    // Debug.Log("tematica");
                    break;
                case "Deporte":
                    tematica = "Deporte";
                    PlayerPrefs.SetString("TematicaSeleccionada", tematica);
                    SceneManager.LoadScene("Deporte");
                    // Debug.Log("tematica");
                    break;
                case "Videojuego":
                    tematica = "Videojuegos";
                    PlayerPrefs.SetString("TematicaSeleccionada", tematica);
                    SceneManager.LoadScene("Videojuegos");
                    // Debug.Log("tematica");
                    break;
                default:
                    // En caso de un tag no reconocido, asigna un valor por defecto
                    tematica = "Entretenimiento";
                    break;
            }

            
            
        }
    }
}
