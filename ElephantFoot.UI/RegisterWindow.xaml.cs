using ElephantFoot.BLL;
using ElephantFoot.DAL.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Text.RegularExpressions;
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
    /// Interaction logic for RegisterWindow.xaml
    /// </summary>
    public partial class RegisterWindow : Window
    {
        private UserServices _userServ = new();

        public RegisterWindow()
        {
            InitializeComponent();
        }

        private void UserNameTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (UserNameTextBox.Text == "")
            {
                UserNameWatermark.Visibility = Visibility.Collapsed;
            }
        }

        private void UserNameTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(UserNameTextBox.Text))
            {
                UserNameWatermark.Visibility = Visibility.Visible;
            }
        }

        private void EmailTextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (EmailTextBox.Text == "")
            {
                EmailWatermark.Visibility = Visibility.Collapsed;
            }
        }

        private void EmailTextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(EmailTextBox.Text))
            {
                EmailWatermark.Visibility = Visibility.Visible;
            }
        }


        private void LoginViaGoogleButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void RegisterButton_Click(object sender, RoutedEventArgs e)
        {
            if (IsEmptyUserName() || !ValidateUserName() || IsEmptyEmail() || !ValidateEmail() || EmailExist() || IsEmptyPassword() || !ValidatePassword() || !ComformPassword())
            {
                return;
            }

            User newUser = new User
            {
                UserName = UserNameTextBox.Text,
                Email = EmailTextBox.Text,
                Password = PasswordText.Password
            };

            MessageBox.Show("Success!!!");
            this.Close();
        }

        private bool IsEmptyUserName()
        {
            if (string.IsNullOrWhiteSpace(UserNameTextBox.Text))
            {
                MessageBox.Show("User Name cannot be EMPTY!!!");
                return true;
            }
            return false;
        }

        private bool ValidateUserName()
        {
            if (!_userServ.IsValidUserName(UserNameTextBox.Text))
            {
                MessageBox.Show("Invalid User Name.");
                return false;
            }

            return true;
        }

        private bool IsEmptyEmail()
        {
            if (string.IsNullOrWhiteSpace(EmailTextBox.Text))
            {
                MessageBox.Show("Email cannot be EMPTY!!!");
                return true;
            }

            return false;
        }

        private bool ValidateEmail()
        {
            if (!_userServ.IsValidEmail(EmailTextBox.Text))
            {
                MessageBox.Show("Invalid Email!");
                return false;
            }

            return true;
        }

        private bool EmailExist()
        {
            if (_userServ.IsExistEmail(EmailTextBox.Text))
            {
                MessageBox.Show("This email has been registered");
                return true;
            }

            return false;
        }

        private bool IsEmptyPassword()
        {
            if (string.IsNullOrWhiteSpace(PasswordText.Password))
            {
                MessageBox.Show("Password cannot be EMPTY!!!");
                return true;
            }

            return false;
        }

        private bool ValidatePassword()
        {
            if (!_userServ.IsValidPassword(PasswordText.Password))
            {
                MessageBox.Show("Password must contain 8 characters ( At least 1 letter, 1 number, 1 special character )");
                return false;
            }

            return true;
        }

        private bool ComformPassword()
        {
            if (PasswordText.Password != PasswordConfirmText.Password)
            {
                MessageBox.Show("Password does not match.");
                return false;
            }

            return true;
        }
    }
}
