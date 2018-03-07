using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Newtonsoft.Json;

namespace MedicalDistricutionService
{
    public class DataTabeTOJs
    {
        public string DataTableTOJson(DataTable dt)
        {
            string JsonString = string.Empty;
            JsonString = JsonConvert.SerializeObject(dt);
            return JsonString;
        }
    }
}