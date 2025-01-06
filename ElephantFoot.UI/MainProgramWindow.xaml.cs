using ElephantFoot.BLL;
using ElephantFoot.DAL.Entities;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
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
using static System.Reflection.Metadata.BlobBuilder;

namespace ElephantFoot.UI
{
    /// <summary>
    /// Interaction logic for MainProgramWindow.xaml
    /// </summary>
    public partial class MainProgramWindow : Window
    {
        private BookServices _bookServ = new();
        private List<Book> _listAllBooks = new();
        private List<Book>? _filteredBooks = null;
        private int _currentPage = 1;
        private int _itemPerPage = 15;
        private CategoryServicies _cateServ = new();
        private AuthorServices _authorServ = new();
        private Category? _selectedCategory = null;
        private Author? _selectedAuthor = null;
        public User? CurrentUser { get; set; } = null;
        public string? SearchTitle { get; set; } = null;
        private UserServices _userServ = new();

        public MainProgramWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            if (CurrentUser != null && IsAvailable(CurrentUser.Email) == false)
            {
                this.Close();
                MessageBox.Show("Your account had been banned");
            }

            if (CurrentUser != null)
            {
                ProfileButton.Content = CurrentUser.UserName;
            }

            AuthorListBox.ItemsSource = null;
            AuthorListBox.ItemsSource = _authorServ.GetAllAuthor();

            CategoryListBox.ItemsSource = null;
            CategoryListBox.ItemsSource = _cateServ.GetAllCategory();

            List<string> listOptionSort = new List<string>();
            listOptionSort.Add("Default");
            listOptionSort.Add("Title");
            listOptionSort.Add("Price");
            SortComboBox.ItemsSource = null;
            SortComboBox.ItemsSource = listOptionSort;

            _listAllBooks = _bookServ.GetAllBooks().ToList();

            if (SearchTitle != null)
            {
                SearchButton_Click(sender, e);
                return;
            }

            LoadPage(_listAllBooks);
        }

        private bool IsAvailable(string email)
        {
            User? checkUser = _userServ.GetUser(email);

            if (CurrentUser != null && checkUser != null &&
                CurrentUser.Available != checkUser.Available)
            {
                return false;
            }
            return true;
        }

        private void PreviousButton_Click(object sender, RoutedEventArgs e)
        {
            if (_currentPage > 1)
            {
                _currentPage--;
                ApplyFiltersAndLoadPage();
            }
        }

        private void NextButton_Click(object sender, RoutedEventArgs e)
        {
            _currentPage++;
            ApplyFiltersAndLoadPage();
        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            _currentPage = 1;
            SearchTitle = SearchTextBox.Text;
            ApplyFiltersAndLoadPage();
        }

        private void CategoryListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _currentPage = 1;
            _selectedCategory = CategoryListBox.SelectedItem as Category;
            ApplyFiltersAndLoadPage();
        }

        private void AuthorListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _currentPage = 1;
            _selectedAuthor = AuthorListBox.SelectedItem as Author;
            ApplyFiltersAndLoadPage();
        }

        private void SortComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            _currentPage = 1;
            ApplyFiltersAndLoadPage();
        }

        private void ApplyFiltersAndLoadPage()
        {
            _filteredBooks = _listAllBooks;

            if (!string.IsNullOrWhiteSpace(SearchTitle))
            {
                _filteredBooks = _bookServ.GetBooksByTitle(_filteredBooks, SearchTitle);
            }

            if (_selectedCategory != null)
            {
                _filteredBooks = _bookServ.GetBooksByCategory(_filteredBooks, _selectedCategory.Name);
            }

            if (_selectedAuthor != null)
            {
                _filteredBooks = _bookServ.GetBooksByAuthor(_filteredBooks, _selectedAuthor.Name);
            }

            string? selectedSortStyle = SortComboBox.SelectedItem as string;
            if (selectedSortStyle == "Title")
            {
                _filteredBooks = _bookServ.SortBookTitle(_filteredBooks);
            }
            else if (selectedSortStyle == "Price")
            {
                _filteredBooks = _bookServ.SortBookPrice(_filteredBooks);
            }
            else if (selectedSortStyle == "Default")
            {
                _filteredBooks = _bookServ.SortBookId(_filteredBooks);
            }

            LoadPage(_filteredBooks);
        }


        private void LoadPage(List<Book> books)
        {
            int startIndex = (_currentPage - 1) * _itemPerPage;
            int endIndex = Math.Min(startIndex + _itemPerPage, books.Count());
            List<Book> bookOfPage = books.Skip(startIndex).Take(_itemPerPage).ToList();



            BooksGrid.ItemsSource = null;
            BooksGrid.ItemsSource = bookOfPage;

            if (_currentPage == 1)
            {
                PreviousButton.Foreground = Brushes.LightGray;
                PreviousButton.IsEnabled = false;
            }
            else
            {
                PreviousButton.Foreground = Brushes.Black;
                PreviousButton.IsEnabled = true;
            }

            if (endIndex >= books.Count())
            {
                NextButton.Foreground = Brushes.LightGray;
                NextButton.IsEnabled = false;
            }
            else
            {
                NextButton.Foreground = Brushes.Black;
                NextButton.IsEnabled = true;
            }

            PageNumberTextBlock.Text = $"Page {_currentPage}";

            MainProgramScrollViewer.ScrollToVerticalOffset(0);

            if (books.IsNullOrEmpty())
            {
                MessageBox.Show("Goods does not EXIST!!!");
                return;
            }
        }

        private void BookDetail_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (sender is Border border && border.DataContext is Book selectedBook)
            {
                // Pass the selected book to the BookDetailWindow
                BookDetailWindow detailWindow = new();
                detailWindow.CurrentUser = CurrentUser;
                detailWindow.SelectedBook = selectedBook;
                detailWindow.Show();
                this.Close();
            }
        }

        private void HomeScreenButton_Click(object sender, RoutedEventArgs e)
        {
            Window_Loaded(sender, e);
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
