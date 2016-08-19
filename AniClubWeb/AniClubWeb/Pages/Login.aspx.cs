/*
===========================================================
if (name != null && password != null
&& FormsAuthentication.Authenticate(name, password))
{
FormsAuthentication.SetAuthCookie(name, false);
Response.Redirect(Request["ReturnUrl"] ?? "/");
}
else
{
ModelState.AddModelError("fail", "Логин или пароль не правильны." +
"Пожалуйста введите данные заново");
}
===========================================================
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AniClubWeb.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userssDataContext db = new userssDataContext();    

            try {

                if (IsPostBack)
                {
                    string name = Request.Form["name"];
                    string passwords = Request.Form["password"];

                    string sha1 = RegistrationForm.SHA1Util.SHA1HashStringForUTF8String(passwords);

                    var userlogin = (from u in db.users
                                     where u.login == name
                                     select u).ToArray();

                    var userpass = (from u in db.users
                                    where u.passvord == sha1
                                    select u).ToArray();

                    if (name == userlogin[0].login && sha1 == userpass[0].passvord)
                    {
                        FormsAuthentication.SetAuthCookie(name, false);
                        Response.Redirect(Request["ReturnUrl"] ?? "/");
                    }
                    else
                    {
                        ModelState.AddModelError("fail", "Логин или пароль не правильны." +
                            "Пожалуйста введите данные заново");
                    }
                }
            }
            catch (SystemException y) {
                ModelState.AddModelError("fail", "Логин или пароль не правильны." +
                                        "Пожалуйста введите данные заново");
            }
        }
    }
}