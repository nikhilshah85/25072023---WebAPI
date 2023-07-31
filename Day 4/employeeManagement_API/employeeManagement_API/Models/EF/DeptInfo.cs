using System;
using System.Collections.Generic;

namespace employeeManagement_API.Models.EF;

public partial class DeptInfo
{
    public int DeptNo { get; set; }

    public string? DeptName { get; set; }

    public string? DeptCity { get; set; }

    public virtual ICollection<Opening> Openings { get; set; } = new List<Opening>();
}
