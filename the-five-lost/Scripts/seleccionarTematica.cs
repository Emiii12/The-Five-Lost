using UnityEngine;
using UnityEngine.SceneManagement;

public class seleccionarTematica : MonoBehaviour
{
    void Start() 
    {
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            string tematica = "";
            switch (this.tag)
            {
                case "Entretenimiento":
                    tematica = "Entretenimiento";
                    break;
                case "Musica":
                    tematica = "Musica";
                    break;
                case "Cultura":
                    tematica = "Cultura General";
                    break;
                case "Deportes":
                    tematica = "Deportes";
                    break;
                case "Videojuegos":
                    tematica = "Videojuegos";
                    break;
                default:
                    tematica = "Entretenimiento";
                    break;
            }
            
            if (PlayerPrefs.GetInt(tematica + "_superado", 0) == 1)
            {
                Debug.Log("Tematica ya superada. Elija otra");
            }
            else
            {
                mostrarDatos.tematicaSeleccionada = tematica;
                PlayerPrefs.SetString("TematicaSeleccionada", tematica);
                SceneManager.LoadScene(tematica);
            }

        }
    }
}
