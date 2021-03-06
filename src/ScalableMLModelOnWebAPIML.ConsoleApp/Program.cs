// This file was auto-generated by ML.NET Model Builder. 

using System;
using System.IO;
using System.Linq;
using Microsoft.ML;
using ScalableMLModelOnWebAPIML.Model;

namespace ScalableMLModelOnWebAPIML.ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {

            ModelBuilder.CreateModel();
            while (true)
            {
                Console.WriteLine("\n");
                Console.WriteLine("Ingrese un comentario para inferir");
                ModelInput sampleData = new ModelInput();
                var texto = Console.ReadLine();
                if (texto == "salir" || texto == "Exit" || texto == "Salir")
                {
                    System.Environment.Exit(0);
                }
                sampleData.Descripcion = texto;
                var predictionResult = ConsumeModel.Predict(sampleData);
                if (predictionResult.Prediction==1)
                {
                    Console.WriteLine("Resultado: Violencia hacia la mujer");
                    Console.WriteLine("porcentaje: " + predictionResult.Score[0].ToString());
                    Console.WriteLine("\n");
                }
                else
                {
                    Console.WriteLine("Resultado: Sin violencia");
                    Console.WriteLine("porcentaje: " + predictionResult.Score[0].ToString());
                    Console.WriteLine("\n");
                }
            }
        }
    }
}
