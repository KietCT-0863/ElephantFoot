using ElephantFoot.BLL;
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
    /// Interaction logic for ProfileWindow.xaml
    /// </summary>
    public partial class ProfileWindow : Window
    {
        private UserServices _userServ = new();
        public User? CurrentUser { get; set; } = null;

        public ProfileWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            if (CurrentUser == null)
            {
                return;
            }

            if (CurrentUser == null)
            {
                return;
            }

            NameTextBox.Text = CurrentUser.UserName;
            PasswordBox.Password = CurrentUser.Password;
            EmailTextBox.Text = CurrentUser.Email;
            AddressTextBox.Text = CurrentUser.Address;
            PhoneTextBox.Text = CurrentUser.Phone;

            UserNameTextBlock.Text = CurrentUser.UserName;
            UserEmailTextBlock.Text = CurrentUser.Email;
        }

        private void CartButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ProfileButton_Click(object sender, RoutedEventArgs e)
        {
            Button? button = sender as Button;
            if (button != null && button.ContextMenu != null)
            {
                button.ContextMenu.PlacementTarget = button;
                button.ContextMenu.Placement = System.Windows.Controls.Primitives.PlacementMode.Bottom;
                button.ContextMenu.IsOpen = true;
            }
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

        private void HomeScreenButton_Click(object sender, RoutedEventArgs e)
        {
            MainProgramWindow mainProgramWindow = new();
            mainProgramWindow.CurrentUser = CurrentUser;
            mainProgramWindow.Show();
            this.Close();
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
