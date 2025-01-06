using ElephantFoot.BLL;
using ElephantFoot.DAL.Entities;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ElephantFoot.UI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        BookServices _bookServ = new();
        Book _selectedBook = new();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            BookListDataGrid.ItemsSource = null;
            BookListDataGrid.ItemsSource = _bookServ.GetAllBooks();
        }

        private void Details_Click(object sender, RoutedEventArgs e)
        {
            BookDetailWindow bookDetailWindow = new();
            bookDetailWindow.SelectedBook = _selectedBook;
            bookDetailWindow.ShowDialog();
            this.Hide();
        }

        private void BookListDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (BookListDataGrid.SelectedItems.Count > 0)
            {
                _selectedBook = BookListDataGrid.SelectedItems[0] as Book;
            }
        }

        private void HomeScreenButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void CartButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void AccountButtonn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}