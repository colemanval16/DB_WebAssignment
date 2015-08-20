using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SortExample
{
    class StudentTest
    {
        static void Main()
        {
            List<Student> list = new List<Student>();
            Student student1 = new Student();
            student1.StudentId = 1;
            student1.Name = "Marry";
            student1.Module = "OOP1";
            Student student2 = new Student();
            student2.StudentId = 101;
            student2.Name = "John";
            student2.Module = "Programming";
            Student student3 = new Student();
            student3.StudentId = 3;
            student3.Name = "Peter";
            student3.Module = "Databases";
            
            //Adding student instances to list
            list.Add(student1);
            list.Add(student2);
            list.Add(student3);


            Console.WriteLine("*******Unsorted Student List*********");
            foreach (Student student in list)
            {
                Console.WriteLine(student);
            }

            //SortByNameThenByID sorting = new SortByNameThenByID();
            //list.Sort(sorting);

            list.Sort(new SortByNameThenByID());

            Console.WriteLine("*******Sorted Student List*********");
            foreach (Student student in list)
            {
                Console.WriteLine(student);
            }
            Console.ReadLine();
        }
    }
}
