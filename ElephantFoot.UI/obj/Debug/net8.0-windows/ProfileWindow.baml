   M S B A M L   `   `   `  ����J  FElephantFoot.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ElephantFoot.UIElephantFoot.UI  5   	   #    ElephantFoot.UI.ProfileWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ElephantFoot.UI     5   	   -   5          � Title$  ProfileWindow��5   	   $
��auto��6   $	��900��6-    � WindowStartupLocation$ CenterScreen=�69    � WindowState$ 	Maximized=�6^    � 
ResizeMode$ NoResize=�6v   .��5	      �� -   5        $��MainProgramScrollViewer��5	      $
��Auto=�62   .��5
   
   (� .��5      � $	��900��6   .+�5      �� .+�5      � $��Center=�6   .+�5      �� ���#0064006!   �� 5      -   5         ��Name$ HomeScreenButton��5   !      HeaderButton#��[  6;   $��Elephant Foot��6a   $��	5,4,685,5q�6y   6�   �� 5      -   5        $ 
CartButton��5   !   #��[  65   $
��Cart��6[   $��700,4,130,5q�6j   
�������$��70��6�   $��15(�6�   �� 5      -   5        $ ProfileButton��5   !   #��[  68   $��Example User��6^   $��	775,4,5,5q�6u   $��15(�6�    � ContextMenu 5      �� 5   "   -   5         ��Name$ userContextMenu��5   .   ���#006400
�������$��1q�6p   
��� ���$��15(�6�   .@�5   &   m� -   5        $��
My Profile��5   /   6C   m� 5   &   -   5        $��Order��5   /   6>   m� 5   &   -	   5        $��Logout��5   /   6?   5   #   5      5      � 5      $��10q�6   .+�5!      �� 
���   �$��1q�65    �� CornerRadius$ 10��6I   ._�5"      �� .+�5#   "   �� $��Acccount Information��6,   $��30(�6H   $��10q�6V   $��Center=�6b   �� 5$   "   $��Stretch=�6,   $	��700��6J   
���   �$��2q�6j   � 5&   "   $��0,20,0,0q�6'    � ColumnDefinitions 5'   &   �� 5(   *   $��* �6;   �� 5)   *   $
��1.5* �6;   �� 5*   *   $
��0.5* �6;   .+�5-   &   �� $��10,25,10,10q�61   .+�5.   *   �� 
���   �$��2q�6E   $	��150��6Y   $	��150��6f   $	 100��6r   $��0,0,0,20q�6�   ��5/   .   �� 50   2   	 �� ImageSource$�	 {d:\fpt\personal project\elephantfoot\elephantfoot.ui\oops-404-error-with-broken-robot-concept-illustration_114360-5529.avif��6=   52   +   �� 53   *   -
   5        $��UserNameTextBlock��53   4   $��Example User��6M   $��Center=�6a   $��	ExtraBold"�6~   $��15(�6�   �� 54   *   -   5        $��UserEmailTextBlock��54   4   $��Example@gmail.com��6N   $��Center=�6g   $��12(�6�   55   '   �� 57   &   $��5q�61   $��1��6<   .+�58   *   �� 
 �� Orientation$
 Vertical=�65   $��5q�6L   .+�59   .   �� $��	Full Name��68   $��15(�6I   �� 5:   .   -   5        $��NameTextBox��5:   6   $	��250��6I   $��15(�6U   $
��Left=�6c   5;   +   �� 5=   *   $��5q�65   .+�5>   .   �� $��Password��68   $��15(�6H   G� 5?   .   -   5        $��PasswordBox��5?   :   $	��250��6M   $
��Left=�6Y   $��15(�6t   5@   +   �� 5B   *   $��5q�65   .+�5C   .   �� $��Email��68   $��15(�6E   �� 5D   .   -   5        $��EmailTextBox��5D   6   $	��250��6J   $
��Left=�6V   $��15(�6q   5E   +   �� 5G   *   $��5q�65   .+�5H   .   �� $��Address��68   $��15(�6G   �� 5I   .   -   5        $��AddressTextBox��5I   6   $	��250��6L   $
��Left=�6X   $��15(�6s   5J   +   �� 5L   *   $��5q�65   .+�5M   .   �� $��Phone��68   $��15(�6E   �� 5N   .   -   5        $��PhoneTextBox��5N   6   $	��250��6J   $
��Left=�6V   $��15(�6q   5O   +   5P   '   �� 5R   &   $��	0,25,0,10q�61   $��2��6D   .+�5S   *   �� -   5        $��
SaveButton��5S   1     RadiusButton#��[ 6C   $
��Save��6i   $��Center=�6x   $	��100��6�   $��15(�6�   6�   5T   '   5U   #   5V      5W      5X      � 5Z      $��4��6   $��	0,10,0,10q�6(   .+�5[      �� ���#006400 �� Padding$ 20q�66   ._�5\      �  5]   "   �� 5^   &   $��3* �67   �� 5_   &   $��2* �67   .+�5b   "   �� $��0��6-   .+�5c   &   �� $��About Me��60   $��30(�6@   $��
ExtraBlack"�6N   
��� ���$��0,0,0,10q�6z   �� 5d   &   $����Sample Description aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa��60   $��15(�6�  
��� ���$
��Wrap=�6�  5e   #   �� 5f   "   $��1��6(   $M��G/oops-404-error-with-broken-robot-concept-illustration_114360-5529.avif��68   $	��200��6�   $	��200��6�   5g      5h      5i      5k      5l      5m      5n      5o      