using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class ModifyTextMeshPro : MonoBehaviour
{
    public TMP_Text texto;

    public string textVariable = "Texto";

    void Start()
    {
        texto.text = textVariable;
    }

}