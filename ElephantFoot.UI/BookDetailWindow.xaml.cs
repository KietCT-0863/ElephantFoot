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
    /// Interaction logic for BookDetailWindow.xaml
    /// </summary>
    public partial class BookDetailWindow : Window
    {
        public Book? SelectedBook { get; set; }
        public User? CurrentUser { get; set; } = null;
        
        public BookDetailWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            if (SelectedBook == null)
            {
                return;
            }

            LoadData(SelectedBook);

            if (SelectedBook.Quantity < 1)
            {
                AddToCartButton.Background = System.Windows.Media.Brushes.LightSalmon;
                AddToCartButton.Foreground = System.Windows.Media.Brushes.Tomato;
                AddToCartButton.Content = "Out of Stock";
                AddToCartButton.IsEnabled = false;
            }
        }

        public void LoadData(Book loadBook)
        {
            if (SelectedBook == null)
            {
                return;
            }

            TitleTextBlock.Text = SelectedBook.Title;
            AuthorTextBlock.Text = SelectedBook.Author.Name;
            QuantityTextBlock.Text = SelectedBook.Quantity.ToString();
            PriceTextBlock.Text = SelectedBook.Price.ToString();
            BookDesciptionTextBlock.Text = SelectedBook.Description;
        }

        private void HomeScreenButton_Click(object sender, RoutedEventArgs e)
        {
            MainProgramWindow mainProgramWindow = new();
            mainProgramWindow.CurrentUser = CurrentUser;
            mainProgramWindow.Show();
            this.Close();
        }

        private void AddToCartButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Go to your Cart");

        }

        private void NextImageButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("This is next Image");
        }

        private void PreviousImageButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("This is previous Image");
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
    }
}
