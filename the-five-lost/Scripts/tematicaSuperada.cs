using UnityEngine;

public class tematicaSuperada : MonoBehaviour
{
    public static bool EstaSuperado(string tematica)
    {
        return PlayerPrefs.GetInt(tematica + "_superado", 0) == 1;
    }

    public static void MarcarComoSuperado(string tematica)
    {
        PlayerPrefs.SetInt(tematica + "_superado", 1);
    }
}
