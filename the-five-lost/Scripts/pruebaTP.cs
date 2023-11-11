using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TP : MonoBehaviour
{
    public int numeroEscena;
    
    private void OnTriggerEnter(Collider other)
    { 
        if (other.tag == "Player")
        {
            SceneManager.LoadScene(numeroEscena);
        }
    }
}

// using System.Collections;
// using System.Collections.Generic;
// using UnityEngine;
// using UnityEngine.SceneManagement;

// public class TP : MonoBehaviour
// {
//     // Ahora numeroEscena es un parámetro público que puedes establecer desde el editor de Unity.
//     public int numeroEscena;

//     // Método para teletransportarse a la escena especificada.
//     public void TeleportToScene()
//     {
//         SceneManager.LoadScene(numeroEscena);
//     }

//     private void OnTriggerEnter(Collider other)
//     { 
//         if (other.tag == "Player")
//         {
//             // Llamamos al método TeleportToScene cuando el jugador entra en el área de activación.
//             TeleportToScene();
//         }
//     }
// }
