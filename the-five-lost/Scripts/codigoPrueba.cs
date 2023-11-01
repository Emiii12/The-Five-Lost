// using UnityEngine;
// using System.Collections.Generic;

// public class hola : MonoBehaviour
// {
//     public int arraySize = 4;
//     public int minValue = 0;
//     public int maxValue = 3;

//     private int[] randomArray;

//     private void Start()
//     {
//         randomArray = GenerateRandomArray(arraySize, minValue, maxValue);

//         foreach (var number in randomArray)
//         {
//             Debug.Log(number);
//         }
//     }

//     int[] GenerateRandomArray(int size, int min, int max)
//     {
//         if (size > (max - min + 1))
//         {
//             Debug.LogError("Tamaño del array es mayor que el rango de números posibles.");
//             return null;
//         }

//         List<int> numbers = new List<int>();

//         for (int i = min; i <= max; i++)
//         {
//             numbers.Add(i);
//         }

//         int[] resultArray = new int[size];
//         for (int i = 0; i < size; i++)
//         {
//             int randomIndex = Random.Range(0, numbers.Count);
//             resultArray[i] = numbers[randomIndex];
//             numbers.RemoveAt(randomIndex);
//         }

//         return resultArray;
//     }
// }

