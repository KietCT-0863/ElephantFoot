   M S B A M L   `   `   `  ����J  FElephantFoot.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ElephantFoot.UIElephantFoot.UI  5   	        ElephantFoot.UI.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ElephantFoot.UI     5   	   -   5          � Title$  
MainWindow��5   	    � WindowStartupLocation$ CenterOwner=�6    � WindowState$ 	Maximized=�6@   .��5	      �� $
��Auto=�6   .��5
   
   (� .��5      � $	��900��6    � RowDefinitions 5      �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   �� 5      $
��Auto �6$   .+�5      � $��Center=�6   .+�5      �� ���#0064006   �� 5      -   5         ��Name$ HomeScreenButton��5         HeaderButton#��[  67   $��Elephant Foot��6]   $��	5,4,685,5q�6u   6�   �� 5      -   5        $ 
CartButton��5      #��[  61   $
��Cart��6W   $��700,4,130,5q�6f   
�������$��70��6�   �� 5      -   5        $ AccountButtonn��5      #��[  65   $��Account��6[   $��	775,4,5,5q�6m   $	��120��6�   5      � 5      $��1��6   .+�5      �� .+�5       �� -   5         ��Name$ TitleTextBox��5    "   $��Title Search��68   $	��290��6L   $
��Left=�6X   &   System.Windows.Controls.DataGrid  5"      -   5          Name$ BookListDataGrid��5"   #   $��125,11,20,18q�6=      AutoGenerateColumns$ false��6S      Columns 5#      0  *System.Windows.Controls.DataGridTextColumn  5$   "   ,  &System.Windows.Controls.DataGridColumn	   Header$	 Id��65   
   Width5  /System.Windows.Controls.DataGridLengthConverter$
 50 6A   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6L   �� *BookId+  5%   "   $	 Title��65   $

 Auto 6D    6Q   �� *Title+  5&   "   $	 Description��65   $

 Auto 6J    6W   �� *Description+  5'   "   $	 Publication Date��65   $

 Auto 6O    6\   �� *PublicationDate+  5(   "   $	 Quantity��65   $

 Auto 6G    6T   �� *
Quantity+  5)   "   $	 	Available��65   $

 Auto 6H    6U   �� *	Available+  5*   "   $	 Price��65   $
 70 6D    6O   �� *Price+  5+   "   $	 Author��65   $

 Auto 6E    6R   �� *Author.Name+  5,   "   $	 Category��65   $

 Auto 6G    6T   �� *Category.Name+5.      �� 5/      -   5        $ Details��5/   !   $��Book Details��62   $
��Left=�6I   $��	35,11,0,0q�6d   $	��Top=�6w   6�   50      51      � 54      $��4��6   $��	0,10,0,10q�6$   .+�55      �� ���#006400 �� Padding$ 20q�62   ._�56      �  � ColumnDefinitions 57      �� 58   "   $��3* �63   �� 59   "   $��2* �63   .+�5<      �� $��0��6)   .+�5=   "   �� $��About Me��6,   $��30(�6<   $��
ExtraBlack"�6J   
��� ���$��0,0,0,10q�6v   �� 5>   "   $����Sample Description aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa��6,   $��15(�6�  
��� ���$
��Wrap=�6�  5?      �� 5@      $��1��6$   $M��G/oops-404-error-with-broken-robot-concept-illustration_114360-5529.avif��64   $	��200��6�   $	��200��6�   5A      5B      5C      5E      5F      5G      5H      