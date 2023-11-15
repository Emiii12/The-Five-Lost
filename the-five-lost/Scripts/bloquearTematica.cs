using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bloquearTrigger : MonoBehaviour
{
    public GameObject trigger;
    public GameObject puerta;

    void Start()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        string tematica = "";
        switch (this.tag)
        {
            case "Entretenimiento":
            case "Musica":
            case "Cultura":
            case "Deportes":
            case "Videojuegos":
                if (compararDatos.superado)
                {
                    trigger.SetActive(false);
                    puerta.SetActive(false);
                }
                break;
        }
    }
}

