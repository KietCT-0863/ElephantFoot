   M S B A M L   `   `   `  ����J  FElephantFoot.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ElephantFoot.UIElephantFoot.UI  5   	   &     ElephantFoot.UI.BookDetailWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ElephantFoot.UI     5   	   -   5          � Title$  BookDetailWindow��5   	    � WindowStartupLocation$ CenterScreen=�6"    � WindowState$ 	Maximized=�6G    � 
ResizeMode$ NoResize=�6v   .��5	      � .+�5
   
   �� $
��Auto=�6   .��5      (� .��5      � $	��900��6    � RowDefinitions 5      �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   �� 5      $
��Auto �6(   .+�5      � $��Center=�6   .+�5      �� ���#0064006!   �� 5      -   5         ��Name$ HomeScreenButton��5   !      HeaderButton#��[  6;   $��Elephant Foot��6a   $��	5,4,685,5q�6y   6�   �� 5      -   5        $ 
CartButton��5   !   #��[  65   $
��Cart��6[   $��700,4,130,5q�6j   
�������$��70��6�   $��15(�6�   �� 5!      -   5        $ ProfileButton��5!   !   #��[  68   $��Example User��6^   $��	775,4,5,5q�6u   $��15(�6�    � ContextMenu 5"      �� 5#   "   -   5         ��Name$ userContextMenu��5#   .   ���#006400
�������$��1q�6p   
��� ���$��15(�6�   .@�5$   &   m� -   5        $��
My Profile��5$   /   6C   m� 5%   &   -   5        $��Order��5%   /   6>   m� 5&   &   -   5        $��Logout��5&   /   6?   5'   #   5)      5*      � 5-      $��1��6   $��40,10,40,10q�6(    � ColumnDefinitions 5.      �� 5/      $��2* �6/   �� 50      $��3* �6/   .+�54      �� 	 �� CornerRadius$	 10��6!   $��1q�63   
���   �
�������$��0��6r   $��0,8,48,0q�6�   $	��280��6�   $	��Top=�6�   ._�55      � $��0,0,2,-1q�6#   .+�56   "   �� $M��G/oops-404-error-with-broken-robot-concept-illustration_114360-5529.avif��6(   $��	19,0,17,0q�6y   $��Center=�6�   $	��240��6�   $	��240��6�   
 J� RenderTransformOrigin$
 0.46,0.5&�6�   �� 57   "   -	   5        $ PreviousImageButton��57   T     TransparentButton#��[ 6)   $	��◀��6q   $��	0,0,210,0q�6}   6�   �� 58   "   -
   5        $ NextImageButton��58   T   #��[ 6)   $	��▶��6m   $��	210,0,0,0q�6y   6�   59      5:      � 5=      $��	298,8,0,0q�6   $��2��62    5>      �� 5?   "   $	��79* �60   �� 5@   "   $	��65* �60   .+�5B      �� $��2,0,0,0q�6%   $	 10��66   
���   �$��1q�6\   $��2��6p   �� 5C      $��20,20,20,20q�6)   $��2��6>   .+�5D   "   �� -   5         ��Name$ TitleTextBlock��5D   ,   $��Sample��6D   $��15(�6R   $
��Bold"�6`   $	��0,5q�6r   $
��Wrap=�6   �� 5E   "   -   5        $ AuthorTextBlock��5E   ,   $��Sample Author��6E   $��12(�6Z   $	��0,5q�6h   �� 5F   "   -   5        $ QuantityTextBlock��5F   ,   $��Quantity: 10��6G   $��12(�6[   $	��0,5q�6i   �� 5G   "   -   5        $ PriceTextBlock��5G   ,   $��	85.500 đ��6D   
���  ��$
��Bold"�6e   $��15(�6w   $	��0,5q�6�   �� 5H   "   $
��Left=�6+   $	��140��6F   $	��0,5q�6R   �� 5I   "   -   5        $ AddToCartButton��5I   )   $��Add to Cart��6B   
����� ����#008b8b$	��0,5q�6   $��40��6�   5J      5K      5L      � 5O      $��2��6   $��40,10,40,10q�6(   .+�5P      �� $��1q�6!   
���   �$	 20��6I    �� Padding$ 20q�6[   ._�5Q      �� .+�5R   "   �� $��Book Description��6,   $��15(�6D   $
��Bold"�6R   $��0,0,0,10q�6d   �� 5S   "   -   5        $ BookDesciptionTextBlock��5S   ,   $����Thiên Sứ Nhà Bên - Tập 8 “Hôm nay… mình không về… có được không…?”  Lễ hội trường nhộn nhịp đã trôi qua, mọi người lại quay về với cuộc sống thường nhật. Amane một lần nữa truyền đạt cảm xúc của cậu đến Mahiru bằng lời nói, đồng thời hứa hẹn về một tương lai bên nhau. Vì muốn tặng Mahiru một món quà bảo chứng cho lời hứa đó, Amane quyết định đi làm thêm. Mặt khác, Mahiru trong lúc cô đơn chờ đợi Amane đi làm về, đã bí mật làm một thứ để bày tỏ tình cảm của mình với cậu…  Đây là câu chuyện tình ngọt ngào với cô gái nhà bên tuy lạnh lùng nhưng thật đáng yêu đã được ủng hộ nhiệt tình trên trang Shousetsuka ni Narou. ��6M   $
��Wrap=�5W   �   5X      5Y      5Z      � 5]      $��3��6   $��40,10,40,10q�6(   .+�5^      �� 
���   �$��1q�65   $	 10��6I   $ 20q�6[   ._�5_      �� $��Related Products��6(   $��15(�6@   $
��Bold"�6N   5`      5a      � 5d      $��4��6   $��	0,10,0,10q�6(   .+�5e      �� ���#006400$ 20q�66   ._�5f      �  5g   "   �� 5h   &   $��3* �67   �� 5i   &   $��2* �67   .+�5l   "   �� $��0��6-   .+�5m   &   �� $��About Me��60   $��30(�6@   $��
ExtraBlack"�6N   
��� ���$��0,0,0,10q�6z   �� 5n   &   $����Sample Description aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa��60   $��15(�6�  
��� ���$
��Wrap=�6�  5o   #   �� 5p   "   $��1��6(   $M��G/oops-404-error-with-broken-robot-concept-illustration_114360-5529.avif��68   $	��200��6�   $	��200��6�   5q      5r      5s      5t      5u      5v      5w      5x      