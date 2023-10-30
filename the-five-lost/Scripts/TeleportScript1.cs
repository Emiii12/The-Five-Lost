using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CasaEscena : MonoBehaviour
{

    public int numeroEscena;
    
    private void OnTriggerEnter(Collider other)
    { 
        string respuestaSeleccionada;
        switch( this.tag )
        {
            case "1":
                Debug.Log("verificar con opcion 1");
                
            break;
            case "2":
                Debug.Log("con opcion 2");
            break;
            case "3":
                Debug.Log("con opcion 3");
            break;
            case "4":
                Debug.Log("con opcion 4");
            break;
        }
        //if (other.tag == "player")
        //{
        // SceneManager.LoadScene(numeroEscena);
        //}
    }


}