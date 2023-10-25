using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CasaEscena : MonoBehaviour
{

    public int numeroEscena;
    
    private void OnTriggerEnter(Collider other)
    { 

        switch( this.tag )
        {
            case "1":
                Debug.Log("verificar con opcion 1");
            break;
            case "2":
                Debug.Log("con opcion 2");
            break;
        }
        //if (other.tag == "player")
        //{
        // SceneManager.LoadScene(numeroEscena);
        //}
    }

}