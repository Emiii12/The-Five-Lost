using UnityEngine;

public class borrarRegistros : MonoBehaviour
{
    void Awake()
    {
        PlayerPrefs.DeleteAll();
    }
}