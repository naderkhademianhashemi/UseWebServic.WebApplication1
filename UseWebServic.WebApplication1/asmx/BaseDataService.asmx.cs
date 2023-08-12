using AlpsCreditScoring.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace UseWebServic.WebApplication1.asmx
{
    /// <summary>
    /// Summary description for BaseDataService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [System.Web.Script.Services.ScriptService]
    public class BaseDataService : System.Web.Services.WebService
    {
        [WebMethod] //BKT_BASE_DATA
        public BaseData[] GetAllLoans()
        {
            List<BaseData> details = new List<BaseData>();
            BaseData item = new BaseData();
            item.BBD_ID = "1";
            item.BBD_TITLE = "وام بانک 1";
            details.Add(item);
            return details.ToArray();
        }

        [WebMethod]
        public string GetById(int BBD_ID)
        {
            string BBD_TITLE= "وام بانک 1";
            return BBD_TITLE;
        }

        [WebMethod] //2
        public void InsertLoan(string BBD_TITLE)
        {

        }

        [WebMethod]
        public void Delete(int BBD_ID)
        {

        }

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
    }
}
