using System;
using System.IO;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LoginForm
{
    public partial class Form1 : Form
    {
        public string username, password;

        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form2 form2 = new Form2();
            form2.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                var sr = new System.IO.StreamReader("C:\\" + textBox1.Text + "\\login.ID");
                username = sr.ReadLine();
                password = sr.ReadLine();
                sr.Close();

                if (username == textBox1.Text && password == textBox2.Text)
                    MessageBox.Show("Anda berhasil login", "sukses!");
                else
                    MessageBox.Show("username atau password salah!", "error!");
            }
            catch (System.IO.DirectoryNotFoundException ex)
            {
                MessageBox.Show("sorry, user tidak ditemukan", "error!");
            }
        }
    }
}
