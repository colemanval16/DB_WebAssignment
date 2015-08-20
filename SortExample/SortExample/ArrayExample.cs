using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SortExample
{
    class ArrayExample
    {
        static void Main(string[] args)
        {
            //creating an array instance of size 5
            int[] array = new int[5];

            // creating an instance of Random clas
            Random random = new Random();

            //populating the array with random numbers between 1 and 100
            for (int i = 0; i < array.Length; i++)
            {
                array[i] = random.Next(1, 100);
            }

            //Displaying unsorted array
            Console.WriteLine("\n**************Unsorted Array****************");
            foreach (int i in array)
            {
                Console.Write("{0} ",i);
            }

           //Sorting array
            Array.Sort(array);

            //Displaying sorted array
            Console.WriteLine("\n***************Sorted Array******************");
            foreach (int i in array)
            {
                Console.Write("{0} ", i);
            }

            //REversing an array
            Array.Reverse(array);

            //Displaying reversed array
            Console.WriteLine("\n***************Reversed Array******************");
            foreach (int i in array)
            {
                Console.Write("{0} ", i);
            }
            Console.ReadLine();
        }
    }
}
