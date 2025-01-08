using ElephantFoot.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ElephantFoot.UI
{
    /// <summary>
    /// Interaction logic for OrderWindow.xaml
    /// </summary>
    public partial class OrderWindow : Window
    {
        public User? CurrentUser { get; set; } = null;

        public OrderWindow()
        {
            InitializeComponent();
        }

        private void CartButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void HomeScreenButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ProfileButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            MenuItem? clickedMenuItem = sender as MenuItem;
            if (clickedMenuItem != null)
            {
                string? menuItemHeader = clickedMenuItem.Header.ToString();

                switch (menuItemHeader)
                {
                    case "My Profile":
                        ProfileWindow profileWindow = new();
                        profileWindow.CurrentUser = CurrentUser;
                        this.Close();
                        profileWindow.Show();
                        break;

                    case "Order":
                        MessageBox.Show("Order selected");
                        break;

                    case "Logout":
                        MessageBox.Show("Logout selected");
                        break;

                    default:
                        break;
                }
            }
        }
    }
}
