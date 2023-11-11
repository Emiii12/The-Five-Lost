using System.Collections.Generic;
using UnityEngine;

public static class ArrayGenerator
{
    public static int[] GenerateRandomArray(int size, int min, int max)
    {
        if (size > (max - min + 1))
        {
            Debug.LogError("Tamaño del array es mayor que el rango de números posibles.");
            return null;
        }

        List<int> numbers = new List<int>();

        for (int i = min; i <= max; i++)
        {
            numbers.Add(i);
        }

        int[] resultArray = new int[size];
        for (int i = 0; i < size; i++)
        {
            int randomIndex = Random.Range(0, numbers.Count);
            resultArray[i] = numbers[randomIndex];
            numbers.RemoveAt(randomIndex);
        }

        return resultArray;
    }
}
