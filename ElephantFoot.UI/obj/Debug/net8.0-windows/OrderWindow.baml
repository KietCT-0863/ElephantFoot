   M S B A M L   `   `   `  ����J  FElephantFoot.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ElephantFoot.UIElephantFoot.UI  5   	   !    ElephantFoot.UI.OrderWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ElephantFoot.UI     5   	     � Title$  OrderWindow��5   	   $
��auto��6   $	��900��6+    � WindowStartupLocation$ CenterScreen=�67    � WindowState$ 	Maximized=�6\    � 
ResizeMode$ NoResize=�6t   .��5	      �� -   5        $��MainProgramScrollViewer��5	      $
��Auto=�62   .��5
   
   (� .��5      � $	��900��6   .+�5      �� .+�5      � $��Center=�6   .+�5      �� ���#0064006!   �� 5      -   5         ��Name$ HomeScreenButton��5   !      HeaderButton#��[  6;   $��Elephant Foot��6a   $��	5,4,685,5q�6y   6�   �� 5      -   5        $ 
CartButton��5   !   #��[  65   $
��Cart��6[   $��700,4,130,5q�6j   
�������$��70��6�   $��15(�6�   �� 5      -   5        $ ProfileButton��5   !   #��[  68   $��Example User��6^   $��	775,4,5,5q�6u   $��15(�6�    � ContextMenu 5      �� 5   "   -   5         ��Name$ userContextMenu��5   .   ���#006400
�������$��1q�6p   
��� ���$��15(�6�   .@�5   &   m� -   5        $��
My Profile��5   /   6C   m� 5   &   -   5        $��Order��5   /   6>   m� 5   &   -   5        $��Logout��5   /   6?   5   #   5      5      �� 5       .+�5!      �� 
���   �$��1q�65   $��
50,10,50,5q�6I   $��55��6]    �� CornerRadius$ 10��6i   ._�5"      � .+�5#   "   �� -	   5        $��SearchTextBox��5#   *   $��
10,10,39,0q�6?   $��30��6S   $	��Top=�6_   $3��-Search by Order Id, Product Name, Author Name��6w   
�������$��15(�6�   �� 5$   "   -
   5        $��SearchButton��5$   )   $��30��6=   $��30��6I   $��Right=�6T   $	��Top=�6p   $��10q�6�   .��5%   &   �� $��/SearchIcon.png��6,   $��5q�6E   5&   #   5'      5(      �� 5*      
���   �$��1q�65   $��
50,10,50,5q�6I   $	��500��6]   $ 10��6j   $��1��6|   ._�5+      �  � ColumnDefinitions 5,   "   �� 5-   &   $��* �67   �� 5.   &   $	��10* �67   51      52      53      � 58      $��4��6   $��	0,10,0,10q�6(   .+�59      �� ���#006400	 �� Padding$	 20q�66   ._�5:      �  5;   "   �� 5<   &   $��3* �67   �� 5=   &   $��2* �67   .+�5@   "   �� $��0��6-   .+�5A   &   �� $��About Me��60   $��30(�6@   $��
ExtraBlack"�6N   
��� ���$��0,0,0,10q�6z   �� 5B   &   $����Sample Description aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa��60   $��15(�6�  
��� ���$
��Wrap=�6�  5C   #   �� 5D   "   $��1��6(   $M��G/oops-404-error-with-broken-robot-concept-illustration_114360-5529.avif��68   $	��200��6�   $	��200��6�   5E      5F      5G      5H      5I      5J      5K      5L      