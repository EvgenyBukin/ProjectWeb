using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            Graphics graf = pictureBox1.CreateGraphics();
            graf.TranslateTransform((float)pictureBox1.Width / 2, (float)pictureBox1.Height / 2);
            Pen p = new Pen(Color.Black);

            for (int caseSwitch = 1; caseSwitch <= 4; caseSwitch++){
                switch (caseSwitch)
                {
                    case 1:
                        graf.Clear(Color.White);
                        graf.DrawEllipse(p, 0, -30, 20, 20);                           // o

                        graf.DrawLine(p, new Point(20, -40), new Point(0, -40));       // -

                        graf.DrawLine(p, new Point(0, -40), new Point(0, -100));       // |
                        graf.DrawLine(p, new Point(-20, -100), new Point(0, -100));    // -
                        graf.DrawLine(p, new Point(-20, -100), new Point(10, -120));   // /

                        graf.DrawLine(p, new Point(20, -40), new Point(20, -100));     // |
                        graf.DrawLine(p, new Point(20, -100), new Point(40, -100));    // -
                        graf.DrawLine(p, new Point(40, -100), new Point(10, -120));    // \
                        Thread.Sleep(1000);
                        break;

                    case 2:
                        graf.Clear(Color.White);
                        graf.DrawEllipse(p, 0, -30, 20, 20);                         // o

                        graf.DrawLine(p, new Point(30, -30), new Point(30, -10));    // |

                        graf.DrawLine(p, new Point(90, -30), new Point(30, -30));    // -
                        graf.DrawLine(p, new Point(90, -30), new Point(90, -50));    // |
                        graf.DrawLine(p, new Point(110, -20), new Point(90, -50));   // \

                        graf.DrawLine(p, new Point(90, -10), new Point(30, -10));    // -
                        graf.DrawLine(p, new Point(90, -10), new Point(90, 10));     // |
                        graf.DrawLine(p, new Point(90, 10), new Point(110, -20));    // /
                        Thread.Sleep(1000);
                        break;

                    case 3:
                        graf.Clear(Color.White);
                        graf.DrawEllipse(p, 0, -30, 20, 20);                           // o

                        graf.DrawLine(p, new Point(20, 0), new Point(0, 0));           // -

                        graf.DrawLine(p, new Point(0, 0), new Point(0, 60));           // |
                        graf.DrawLine(p, new Point(-20, 60), new Point(0, 60));        // -
                        graf.DrawLine(p, new Point(-20, 60), new Point(10, 80));       // \

                        graf.DrawLine(p, new Point(20, 0), new Point(20, 60));         // |
                        graf.DrawLine(p, new Point(20, 60), new Point(40, 60));        // -
                        graf.DrawLine(p, new Point(40, 60), new Point(10, 80));        // /
                        Thread.Sleep(1000);
                        break;

                    case 4:
                        graf.Clear(Color.White);
                        graf.DrawEllipse(p, 0, -30, 20, 20);                           // o

                        graf.DrawLine(p, new Point(-10, -30), new Point(-10, -10));    // |

                        graf.DrawLine(p, new Point(-70, -30), new Point(-10, -30));    // -
                        graf.DrawLine(p, new Point(-70, -30), new Point(-70, -50));    // |
                        graf.DrawLine(p, new Point(-90, -20), new Point(-70, -50));    // /

                        graf.DrawLine(p, new Point(-70, -10), new Point(-10, -10));    // -
                        graf.DrawLine(p, new Point(-70, -10), new Point(-70, 10));     // |
                        graf.DrawLine(p, new Point(-70, 10), new Point(-90, -20));     // \
                        break;
                }
            }
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
