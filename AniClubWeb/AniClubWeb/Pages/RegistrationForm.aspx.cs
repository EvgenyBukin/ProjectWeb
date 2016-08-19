using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AniClubWeb.Pages
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        public static class SHA1Util
        {
            /// <summary>
            /// Compute hash for string encoded as UTF8
            /// </summary>
            /// <param name="s">String to be hashed</param>
            /// <returns>40-character hex string</returns>
            public static string SHA1HashStringForUTF8String(string s)
            {
                byte[] bytes = Encoding.UTF8.GetBytes(s);

                var sha1 = SHA1.Create();
                byte[] hashBytes = sha1.ComputeHash(bytes);

                return HexStringFromBytes(hashBytes);
            }

            /// <summary>
            /// Convert an array of bytes to a string of hex digits
            /// </summary>
            /// <param name="bytes">array of bytes</param>
            /// <returns>String of hex digits</returns>
            public static string HexStringFromBytes(byte[] bytes)
            {
                var sb = new StringBuilder();
                foreach (byte b in bytes)
                {
                    var hex = b.ToString("x2");
                    sb.Append(hex);
                }
                return sb.ToString();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static byte[] ToByteArray(string value)
        {
           return System.Text.Encoding.UTF8.GetBytes(value);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            userssDataContext dr = new userssDataContext();

            string name = Request.Form["name"];
            string passwords = Request.Form["password"];

            if (name.Length != 0 && name.Length >= 4)
            {
                if (passwords.Length != 0 && passwords.Length >= 4)
                {

                    var userlogin = (from i in dr.users
                                     where i.login == name
                                     select i).ToArray();

                    if (userlogin.Length == 0)
                    {
                        SHA1 sha = new SHA1CryptoServiceProvider();

                        user tebl = new user();

                        tebl.login = name;

                        tebl.passvord = SHA1Util.SHA1HashStringForUTF8String(passwords);

                        dr.users.InsertOnSubmit(tebl);
                        dr.SubmitChanges();

                        Response.Redirect("/");
                    }
                    else
                    {
                        ModelState.AddModelError("fail", "Данный логин уже занят." + "" +
                                                "Пожалуйста введите данные заново");
                    }
                }
                else
                {
                    ModelState.AddModelError("fail", "passwords не может быть пустым или содержать меньше 4 символов." + "" +
                                       "Пожалуйста введите данные заново.");
                }
            }
            else
            {
                ModelState.AddModelError("fail", "Name не может быть пустым или содержать меньше 4 символов." + "" +
                                        "Пожалуйста введите данные заново.");
            }
        }
    }
}