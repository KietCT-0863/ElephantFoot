   M S B A M L   `   `   `  ����J  FElephantFoot.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ElephantFoot.UIElephantFoot.UI  5   	   '    !ElephantFoot.UI.MainProgramWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ElephantFoot.UI     5   	   -   5          � Title$  MainProgramWindow��5   	   $
��auto��6#   $	��900��61    � WindowStartupLocation$ CenterScreen=�6=    � WindowState$ 	Maximized=�6b    � 
ResizeMode$ NoResize=�6z   .��5	      �� -   5        $��MainProgramScrollViewer��5	      $
��Auto=�62   .��5
   
   (� .��5      � $	��900��6   .+�5      �� .+�5      � $��Center=�6   .+�5      �� ���#0064006!   �� 5      -   5         ��Name$ HomeScreenButton��5   !      HeaderButton#��[  6;   $��Elephant Foot��6a   $��	5,4,685,5q�6y   6�   �� 5      -   5        $��SearchTextBox��5   "   $��250,4,300,4q�67   $��30(�6L   
�������6Z   �� 5      -   5        $��SearchButton��5   !   $��50��65   $��599,4,251,4q�6@   
�������.��5      � .+�5   "   �� $��/SearchIcon.png��6(   $��5q�6A   5      5      �� 5      -   5        $ 
CartButton��5   !   #��[  65   $
��Cart��6[   $��700,4,130,5q�6j   
�������$��70��6�   $��15(�6�   �� 5      -   5        $ ProfileButton��5   !   #��[  68   $��Example User��6^   $��	775,4,5,5q�6u   $��15(�6�    � ContextMenu 5      �� 5   "   -   5         ��Name$ userContextMenu��5   .   ���#006400
�������$��1q�6p   
��� ���$��15(�6�   .@�5   &   m� -	   5        $��
My Profile��5   /   6C   m� 5   &   -
   5        $��Order��5   /   6>   m� 5    &   -   5        $��Logout��5    /   6?   5!   #   5#      5$      � 5'       � ColumnDefinitions 5(      �� 5)      $��* �6/   �� 5*      $��4* �6/   .+�5.      �� $��10q�6!   
���   �$��1q�6A    �� CornerRadius$ 10��6U   ._�5/      �� $��0��6)   $��10q�69   .+�51   "   9� $��Category��6+   	 9� ExpandDirection$
	 Down=�6=   $	��Top=�6T   .��52   &   �� -   5        $��CategoryListBox��52   .   
 �� DisplayMemberPath$

 Name��6f   $	��185��6   ��6E   �� *
Category+6�   53   #   9� 55   "   $��Author��6+   $
	 Down=�6;   $	��Top=�6R   .��56   &   �� -   5        $��AuthorListBox��56   .   $

 Name��6b   $	��190��6{   ��6C   �� *Author+6�   57   #   58      59      �� 5<      $��1��6!   $��10q�61   
���   �$��1q�6Q   $ 10��6e   ._�5=      �� .+�5>   "   �� $��10q�6)   
���   �$��1q�6I   ._�5?   &   � .+�5A   *   �� $��5q�65    �� Orientation$ 
Horizontal=�6@   .+�5B   .   �� $��Sort by��68   $��15(�6G   $��5q�6U   �� 5C   .   -   5        $��SortComboBox��5C   7   $	��100��6K   $��5q�6W   6b   5D   +   5E   '   5F   #   � 5H   "    5I   &   �� 5J   *   $
��317* �6;   �� 5K   *   $	��32* �6;   .+�5N   &   �� -   5        $��	BooksGrid��5N   3   $��10q�6D   $��2��6s   ��6P   �� *
bookOfPage+��5O   *   �� 5P   .   .R�5Q   2   A�  A� Columns$ 5��6>    A� Rows$ 3��6J   5R   /   ��5V   *   �� 5W   .   .R�5X   2   �� $��
BookDetail��69   -   5        $��1q�5X   K   
���   �$��5q�6s   $ 5��6~    �� Padding$ 5q�6�   ._�5Y   6   �� $��Center=�6A   .+�5Z   :   �� $M��G/oops-404-error-with-broken-robot-concept-illustration_114360-5529.avif��6@   $	��100��6�   $	��100��6�   $��UniformToFill=�6�   �� 5[   :   $
��Wrap=�6[   $
��Bold"�6o   $��5q�6�   $��Center=�6�   ��6D   �� *Title+6�   �� 5\   :   
���  ��$��5q�6�   $��Center=�6�   ��6D   �� *Price+ �� StringFormat$ {0:C}��6�   5]   7   5^   3   5_   /   5a   '   5b   #   � 5d   "   .+�5f   &   �� $ 
Horizontal=�61   $��Center=�6J   $��Bottom=�6g   $��10q�6�   $��2��6�   .+�5g   *   �� -   5        $��PreviousButton��5g   W     RadiusButton#��[ 61   $��Previous��6m   $	��100��6�   6�   �� 5h   *   -   5        $��PageNumberTextBlock��5h   4   $��Page 1��6O   $��10q�6]   $��Center=�6i   �� 5i   *   -   5        $��
NextButton��5i   W   #��[ 61   $
��Next��6i   $	��100��6x   6�   5j   '   5k   #   5l      5m      5n      � 5q      $��4��6   $��	0,10,0,10q�6(   .+�5r      �� ���#006400$ 20q�66   ._�5s      �  5t   "   �� 5u   &   $��3* �67   �� 5v   &   $��2* �67   .+�5y   "   �� $��0��6-   .+�5z   &   �� $��About Me��60   $��30(�6@   $��
ExtraBlack"�6N   
��� ���$��0,0,0,10q�6z   �� 5{   &   $����Sample Description aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa��60   $��15(�6�  
��� ���$
��Wrap=�6�  5|   #   �� 5}   "   $��1��6(   $M��G/oops-404-error-with-broken-robot-concept-illustration_114360-5529.avif��68   $	��200��6�   $	��200��6�   5~      5      5�      5�      5�      5�      5�      5�      