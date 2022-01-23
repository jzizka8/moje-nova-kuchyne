using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
        
    protected void Page_Load(object sender, EventArgs e)
    {

       
    }


   /// <summary>
   /// Metoda, která přihlásí uživatele
   /// </summary>
   /// <param name="username">Uživatelské jméno</param>
   /// <param name="email">email</param>
    private void Log_in(string username, string email)
    {

        logout.Visible = true;
        bonus.Visible = true;
        log_out_btn_nav.Visible = true;
        bonus_nav.Visible = true;


        prihlas_nav.Visible = false;
        reg_log.Visible = false;


        
        mail_sendertxt.Text = email; //předvyplnění kolonky odesílatel v kontaktním formuláři

        label_logged.Text = "Právě jsi přihlášen jako " + username;

    }

    /// <summary>
    /// Metoda pro odhlášení
    /// skryje zabezpečené divy
    /// skryje odkazy na ně v navigaci
    /// 
    /// zobrazí div s přihlášením a odkaz na něj v navigaci
    /// </summary>
    private void Log_out()
    {
        logout.Visible = false;
        bonus.Visible = false;
        log_out_btn_nav.Visible = false;
        bonus_nav.Visible = false;


        prihlas_nav.Visible = true;
        reg_log.Visible = true;

        Labelmail.Text = "";
        remove_txt();

    }

    private void remove_txt()
    {   if (!bonus.Visible)
        {
        //pokud je user prihlasen, tak zůstane email odesilatele vyplněn, pokud se odhlasí tak je label_mail vynulovan a mail_sendertxt.Text=""
            mail_sendertxt.Text = ""; 
        }
        mail_headtxt.Text = "";
        mail_bodytxt.Text = "";
        log_usernameTxt.Text = "";
        log_passTxt.Text = "";
        reg_emailTxt.Text = "";
        reg_passTxt.Text = "";
        reg_usernameTxt.Text = ""; 

    }
    
    protected void Btn_login_Click(object sender, EventArgs e)
    {
        string connString = ConfigurationManager.ConnectionStrings["MYSQL2"].ToString(); /* connString je zde pouze název proměnný, natahnu connection string "MySQL" do proměnné connString */
        SqlConnection conn = new SqlConnection(connString); /* Objekt, který otevře databázi */

        string prikaz_str;
        if (log_usernameTxt.Text.Contains('@'))//přihlašení přes email
        {
           prikaz_str = "select username, pass, email from Users_table where email=@user_mail"; //ptáme se na řádek, kde email je to, co uživatel zadal
        }
        else //přihlášení přes username
        {
            prikaz_str = "select username, pass, email from Users_table where username=@user_mail"; //ptáme se na řádek, kde username je to, co uživatel zadal
        }
        SqlCommand prikaz = new SqlCommand(prikaz_str,conn); //string prikaz, který jsem inicializoval v podmínce jsem použil jako znění příkaz
        prikaz.Parameters.AddWithValue("@user_mail", log_usernameTxt.Text); //uživatelův vstup dosadím

        conn.Open(); //open sql
        SqlDataReader reader = prikaz.ExecuteReader();

        string user = "";
        string heslo = "";
        string email = "";

        while (reader.Read())//reader najde definovaný řádek
        {
            user = reader["username"].ToString(); //user = to co reader našel ve sloupci username v definovaném řádku
            heslo = reader["pass"].ToString();
            email = reader["email"].ToString();
        }

        reader.Close(); //ukončím reader
        conn.Close(); //close sql

        if (heslo == log_passTxt.Text && heslo!="") //stačí ověřovat heslo, druhá část je pro podchycení nevyyplněného formuláře, který by jinak prošel
        {
            Log_in(user,email); 
        }
        else
        {
            Labell.Text = "Nesprávné přihlašovací údaje"; //not succes login
        }
    }

    protected void Btn_reg_Click(object sender, EventArgs e)
    {
        if (reg_usernameTxt.Text == "" || reg_passTxt.Text == "" || reg_emailTxt.Text=="") //vše musí být vyplněno
        {
            Labelr.Text= "Musíte vyplnit všechna pole";
        }
        else
        {
            string connString = ConfigurationManager.ConnectionStrings["MYSQL2"].ToString(); /* connString je zde pouze název proměnný, natahnu connection string "MySQL" do proměnné connString */
            SqlConnection conn = new SqlConnection(connString); /* Objekt, který otevře databázi */

            conn.Open(); /* otevřu databázi */

            //ověření duplicitních jmen
            SqlCommand over_jmena = new SqlCommand("SELECT username FROM Users_table WHERE username=@username", conn); //vyber všechny řádky kde sloupec jmeno = 
            over_jmena.Parameters.AddWithValue("@username", reg_usernameTxt.Text);//hodnotě kterou zadal uživatel jako jméno


            //ověření duplicitních emailů
            SqlCommand over_email = new SqlCommand("SELECT email FROM Users_table WHERE email=@email", conn); //vyber všechny řádky kde sloupec jmeno = 
            over_email.Parameters.AddWithValue("@email", reg_emailTxt.Text);//hodnotě kterou zadal uživatel jako jméno


            SqlDataReader readerusername = over_jmena.ExecuteReader(); //provede dotaz


            if (!readerusername.HasRows) // pokud reader nenašel řádky, přidá uživatele
            {
                readerusername.Close(); //reader je potřeba ukončit, aby mohly být provedeny další příkazy

                SqlDataReader readeremail = over_email.ExecuteReader(); //provede dotaz

                if (!readeremail.HasRows)
                {
                    readeremail.Close(); //reader je potřeba ukončit, aby mohly být provedeny další příkazy

                    // string forbidden = "/ \\ @ & + = \" "; //nepovolené znaky v uživatelském jméně
                    string ok_charsu = "abcdefghijklmnopqrstuvwxyzáčďéěóíůúšřžý123456789_-";
                    string ok_charsem = "abcdefghijklmnopqrstuvwxyz0123456789._-@";
                    bool valid = true; //bool který se bude měnit pokud uživatelské jméno bude obsahovat nepovolené znaky
                    bool valid_em = true;

                    foreach (char c in reg_usernameTxt.Text.ToLower()) //projede jednotlivé znaky ve vstupu, ten se uloží do proměnné c
                    {
                        if (!ok_charsu.Contains(c)) //pokud string povolených znaků neobsahuje danný znak vstup je vyhodnocen jako neplatný
                        {
                            valid = false;
                        }
                    }


                    foreach (char c in reg_emailTxt.Text.ToLower()) //projede jednotlivé znaky ve vstupu, ten se uloží do proměnné c
                    {
                        if (!ok_charsem.Contains(c))//pokud string povolených znaků neobsahuje danný znak vstup je vyhodnocen jako neplatný 
                        {
                            valid_em = false;
                        }

                        if (!reg_emailTxt.Text.Contains('@')) //pokud vstup neobsahuje @ tak se nejedná o platný email
                        {
                            valid_em = false;
                        }
                    }

                  

                    if (!valid)
                    {
                        Labelr.Text = "Uživatelské jméno může obsahovat pouze znaky české abecedy a čísla";
                    }
                    else if (!valid_em)
                    {
                        Labelr.Text = "Email je v neplatném formátu";
                    }
                    else
                    {
                        SqlCommand prikaz = new SqlCommand("INSERT INTO Users_table(username, pass, email) VALUES (@user, @pass, @email)", conn);


                        prikaz.Parameters.AddWithValue("@user", reg_usernameTxt.Text); //za @user se v předchozím příkazu doplní text z textboxu se jménem
                        prikaz.Parameters.AddWithValue("@pass", reg_passTxt.Text); //za @pass se v předchozím příkazu doplní text z textboxu s heslem
                        prikaz.Parameters.AddWithValue("@email", reg_emailTxt.Text); //za @email se v předchozím příkazu doplní text z textboxu s emailem


                        prikaz.ExecuteNonQuery(); /*Pomocí této metody se provede příkaz SqlCommand*/
                        conn.Close(); /* zavře se databáze */

                        Log_in(reg_usernameTxt.Text, reg_emailTxt.Text);
                    }
                }
                else{
                    readeremail.Close(); //reader je potřeba ukončit
                    Labelr.Text = "Takový email už je zaregistrován";
                }
            }
            else
            {
                readerusername.Close();//reader je potřeba ukončit
                Labelr.Text = "Takové uživatelské jméno už je zaregistrováno";
            }
        }
    }


    protected void Btn_mail_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage(mail_sendertxt.Text, "l20160112@ssptaji.cz");
            mail.Body = mail_bodytxt.Text;
            mail.Subject = mail_headtxt.Text;

            SmtpClient smtp = new SmtpClient("smtp.live.com", 587); //smtp zaleží na hostingu
            smtp.Send(mail);

            Labelmail.Text = "Email byl úspěšně odeslán.";
        }
        catch
        {
            Labelmail.Text = "Chyba! Email nebyl odeslán.";

        }
        remove_txt();
    }

    protected void log_outbtn_Click(object sender, EventArgs e)
    {
        Log_out();
    }
}