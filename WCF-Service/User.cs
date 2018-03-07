using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;
using System.Data;

namespace MedicalDistricutionService
{


   
    [DataContract]
    public class User
    {
        private string _First_Name;
        private string _Last_Name;
        private string _Email_Id;
        private string _Phone_number;
        private string _Store_name;
        private string _Address;
        private string _City;
        private string _State;
        private string _Zip;
        private string _Password;

        [DataMember]
        public string First_Name
        {
            get { return this._First_Name; }
            set { this._First_Name = value; }
        }
        [DataMember]
        public string Last_Name
        {
            get { return this._Last_Name; }
            set { this._Last_Name = value; }
        }
        [DataMember]
        public string Email_Id
        {
            get { return this._Email_Id; }
            set { this._Email_Id = value; }
        }
        [DataMember]
        public string Phone_number
        {
            get { return this._Phone_number; }
            set { this._Phone_number = value; }
        }
        [DataMember]
        public string Store_name
        {
            get { return this._Store_name; }
            set { this._Store_name = value; }
        }
        [DataMember]
        public string Address
        {
            get { return this._Address; }
            set { this._Address = value; }
        }
        [DataMember]
        public string City
        {
            get { return this._City; }
            set { this._City = value; }
        }
        [DataMember]
        public string State
        {
            get { return this._State; }
            set { this._State = value; }
        }
        [DataMember]
        public string Zip
        {
            get { return this._Zip; }
            set { this._Zip = value; }
        }
        [DataMember]
        public string Password
        {
            get { return this._Password; }
            set { this._Password = value; }
        }


    }
}