using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SortExample
{
    class ListExample
    {
        static void Main()
        {
            List<string> names = new List<string>();
            names.Add("Paul");
            names.Add("Joe");
            names.Add("John");
            names.Add("Marry");
            names.Add("Patricia");

            Console.WriteLine("***************Unsorted names****************");
            foreach (string name in names)
            {
                Console.Write("{0} ", name);
            }

            //sorting list
            names.Sort();
            //Displaying sorted names
            Console.WriteLine("\n***************Sorted names****************");
            foreach (string name in names)
            {
                Console.Write("{0} ", name);
            }

           //reversing names
            names.Reverse();
            
            //Displaying reversed names
            Console.WriteLine("\n***************Reversing names****************");
            foreach (string name in names)
            {
                Console.Write("{0} ", name);
            }
            Console.ReadLine();
        }
    }
}
