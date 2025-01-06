using Azure.Core;
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
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        UserServices _userServ = new();
        private User? _loginUser = null;

        public LoginWindow()
        {
            InitializeComponent();
        }

        private void TextBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (EmailText.Text == "")
            {
                EmailLabel.Visibility = Visibility.Collapsed;
            }
        }

        private void TextBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(EmailText.Text))
            {
                EmailLabel.Visibility = Visibility.Visible;
            }
        }

        private void PasswordBox_GotFocus(object sender, RoutedEventArgs e)
        {
            if (PasswordText.Password == "")
            {
                PasswordLabel.Visibility = Visibility.Collapsed;
            }
        }

        private void PasswordBox_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(PasswordText.Password))
            {
                PasswordLabel.Visibility = Visibility.Visible;
            }
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            _loginUser = _userServ.Authentication(EmailText.Text, PasswordText.Password);

            if (EmailText.Text == "" || PasswordText.Password == "")
            {
                MessageBox.Show("Email and Password can not be empty!!!");
                return;
            }

            if (_loginUser == null)
            {
                MessageBox.Show("Email is incorrect");
                return;
            }

            if (_loginUser.Password == "")
            {
                MessageBox.Show("Password is incorrect");
                return;
            }

            if (_loginUser.Available == false)
            {
                MessageBox.Show("Your account had been banned");
                return;
            }

            MainProgramWindow mainProgram = new();
            mainProgram.CurrentUser = _loginUser;
            this.Hide();
            mainProgram.ShowDialog();
            this.Show();
        }

        private void ForgotPassword_Click(object sender, MouseButtonEventArgs e)
        {
            Window window = new();
            window.ShowDialog();
            this.Hide();
            this.Show();
        }

        private void RegisterTextBlock_Click(object sender, MouseButtonEventArgs e)
        {
            RegisterWindow registerWindow = new();
            registerWindow.ShowDialog();
            this.Hide();
            this.Show();
        }
    }
}
