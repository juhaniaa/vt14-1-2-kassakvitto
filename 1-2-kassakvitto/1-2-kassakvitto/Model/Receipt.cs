using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1_2_kassakvitto.Model
{
    public class Receipt
    {
        private double _subtotal;

        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Subtotal 
        {
            get { return _subtotal; }
            private set 
            {
                if (value <= 0) {
                    throw new ArgumentOutOfRangeException();
                }
                _subtotal = value; 
            } 
        }

        public double Total { get; private set; }

        public Receipt(double subtotal) 
        {
            this.Subtotal = subtotal;
        }

        public void Calculate(double subtotal) 
        { 
            // ta reda på rabattsats
            if (subtotal > 500) {
                DiscountRate = 0;
            }

            if (500 <= subtotal && subtotal < 1000) {
                DiscountRate = 0.05;
            }

            if (1000 <= subtotal && subtotal < 5000)
            {
                DiscountRate = 0.10;
            }

            if (5000 <= subtotal)
            {
                DiscountRate = 0.15;
            }

            // räkna ut rabatt
            MoneyOff = DiscountRate * subtotal;

            // räkna ut reducerat pris
            Total = subtotal - MoneyOff;
        }
    }
}