using System;
using System.Collections.Generic;
using System.IO;
using System.Configuration;
using CSharp.ExtractingManagingOCR.CloudStorage;
using CSharp.ExtractingManagingOCR.WithoutCloudStorage;

namespace CSharp
{
    class RunExamples
    {
        [STAThread]
        public static void Main()
        {
            Console.WriteLine("Open RunExamples.cs. In Main() method, Un-comment the example that you want to run");
            Console.WriteLine("=====================================================");
            
            // Un-comment the one you want to try out

            //// =====================================================
            //// =====================================================
            //// ExtractingManagingOCR - CloudStorage
            //// =====================================================
            //// =====================================================

            //ExtractOCRorHOCRTextFromSpecificBlockImage.Run();
            //ExtractOCRorHOCRTextFromSpecificBlockImage.Run();

            //// =====================================================
            //// =====================================================
            //// ExtractingManagingOCR - WithoutCloudStorage
            //// =====================================================
            //// =====================================================

            //ExtractOCRorHOCRTextFromURLImage.Run();
            ExtractOCRorHOCRTextFromImageWithoutStorage.Run();

            // Stop before exiting
            Console.WriteLine("\n\nProgram Finished. Press any key to exit....");
            Console.ReadKey();
        }
        
    }
}
