using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SortExample
{
    class SortByNameThenByID:Comparer<Student>
    {
        public override int Compare(Student x, Student y)
        {
            if (!x.Name.Equals(y.Name))

                return x.Name.CompareTo(y.Name);

            //else if (x.StudentId != y.StudentId)
            else  return x.StudentId.CompareTo(y.StudentId);
            //else return 0;
        }
    }
}
