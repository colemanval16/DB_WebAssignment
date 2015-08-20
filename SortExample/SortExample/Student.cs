using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SortExample
{
    class Student:IComparable<Student>
    {
        //auto-implemented properties
        public int StudentId { get; set; }
        public string Name { get; set; }
        public string Module { get; set; }

        //ToString method
        public override string ToString()
        {
            return string.Format("Student Id: {0}\nName: {1}\nModule: {2}", StudentId, Name, Module);
        }

        public int CompareTo(Student student)
        {
            return this.StudentId.CompareTo(student.StudentId);
        }
    }
}
