using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1_2_kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Getdiscount_Click(object sender, EventArgs e)
        {
            // när beräkna rabatt klickats

            if (IsValid) { 

                // och valideringen lyckats
                double userArmount;
                Double.TryParse(Amount.Text, out userArmount);
                
                // skapa nytt kvitto och kör Calculate funktionen som räknar ut de olika värdena
                var receipt = new Model.Receipt(userArmount);
                receipt.Calculate(userArmount);
                
                // lägg till värdena i kvittot och ändra till visible - true
                Subtotal.Text = String.Format("Totalt: {0:c}", receipt.Subtotal);
                Subtotal.Visible = true;

                DiscountRate.Text = String.Format("Rabattsats: {0:p0}", receipt.DiscountRate);
                DiscountRate.Visible = true;

                MoneyOff.Text = String.Format("Rabatt: {0:C}", receipt.MoneyOff);
                MoneyOff.Visible = true;


                Total.Text = String.Format("Att betala: {0:c2}", receipt.Total);
                Total.Visible = true;

                
            }
        }
    }
}