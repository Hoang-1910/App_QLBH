   M S B A M L   `   `   `  ���� ?  ;QLBH, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLBHQLBH  5clr-namespace:QLBH.UserControlQQLBH.UserControlQ      QLBH.PrintWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  localclr-namespace:QLBH  (ucclr-namespace:QLBH.UserControlQ  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -     �Name$  Window�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterOwner=�   PrintVM � DataContext# [   � Title$
 Bill��$	��630��$	��756��$	��600��$��Roboto)�.���  � RowDefinitions �� $
��auto ��� $	��804 �.+�� $��0��$��	0,0,0,0.2q�.+�$   QLBH.UserControlQ.ControlBarUC  
 � Tag �� *Title+ �� ElementName$ Window���� -   	 ��Name$	 	ScrollBar��$	��Top=�$	��720��
�������$��
0,35,0,0.2q�$��3��.��� .+��� -    $  MaterialDesignRaisedAccentButton#��[ $��Right=�$��10q�$	��Top=�.��'  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Printer=�� -    �Name$ print�� �� $	��100 ��� $��50 ��� $	��200��$
��auto ��� $	��310 �.+�]� $��0��.+��� $��Images/apple.jpg��$��
10 10 0 10q�$
��Left=�$��80��$��80��$	��Top=��� $��Center=�$
��Left=�$��	15 10 0 0q�.+��� $��Right=�$-��'CỬA HÀNG PHỤ KIỆN CÔNG NGHỆ X��$��Center=�$��12(�$
��Bold"��� $��Right=�$G��AĐịa chỉ       : Số nhà 152 - Bắc Từ Liêm - Hà Nội��$��Center=�$��12(�$��Light"��� $��Right=�$<��6Điện thoại : 035 799 1677 * Hotline: 099 162 3853��$��Center=�$��12(�$��Light"��� $��Right=�$/��)Email         : cuahang.abc1711@gmail.com��$��Center=�$��12(�$��Light"��� $��Center=� �� Orientation$ 
Horizontal=�$��0q�$��1��.+��� $��HÓA ĐƠN BÁN HÀNG��$��Center=�$��30(�$
��Bold"�
���  ���� $
��auto��$��2��$��Stretch=�$��20q�.+�� $��Stretch=� � ColumnDefinitions �� $
��0.8* ��� $��1* �.+��� $��0��$��10q�.+��� $ 
Horizontal=�.+��� $��Tên khách hàng:��$��12(�$��5q��� $��Bottom=�$��DemiBold"�$��15(�$	��154��$��22������ *Customer.DisplayName+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� $ 
Horizontal=�.+��� $��Số điện thoại:��$��12(�$��5q��� $��12(�$��5q�$��DemiBold"����� *Phone+$ TwoWay=�$ PropertyChanged=��� $ 
Horizontal=�.+��� $��Địa chỉ:��$��12(�$��5q��� $��12(�$��5q�$��DemiBold"����� *	Address+$ TwoWay=�$ PropertyChanged=��� $��1��$��
0 10 10 10q�.+��� $ 
Horizontal=�.+��� $��Mã HĐ:��$��12(�$��5q��� $��12(�$��5q�$��DemiBold"����� *
IDOutput+$ TwoWay=�$ PropertyChanged=��� 
���   �$��1��$	��5 2q� J� Opacity$	 0.5Q��� $��Stretch=�$
��auto��$��Disabled=�$��Stretch=�$��	2,2,0.2,2q����� *List+ �� View �� .P���  �� DisplayMemberBinding �� *STT+.���� $
��Left=�$	��STT��$��52��$��7q���  �� Width$	 110�� �� *DisplayName+.���� $
��Left=�$��Tên sản phẩm��$	��110��$��7q��� $ 50�� �� *Count+.���� $��
Đơn vị��$��80��$��7q��� $ 70�� �� *Count+.���� $��Số lượng��$��80��$��7q��� $	 120�� �� *Price+ �� StringFormat$ 
0,0,0 VNĐ��.���� $
��Left=�$��	Giá bán��$��87��$��7q�$��13(��� $	 150�� �� *
SumPrice+$ 
0,0,0 VNĐ��.���� ���	#FF62013C$
��Left=�$��Thành tiền��$	��200��$��7q��� $ Vertical=�$��3��$��	20,0,20,0q�$��2��.+�� $��
10 20 10 0q� �� $��1* ��� $��0.85* ��� $��1* �.+��� $��GHI CHÚ��$��0��$��12(�$��
ExtraLight"��� $��
NGÀY BÁN��$��1��$��12(�$��
ExtraLight"�$
��Left=��� $��TỔNG TIỀN��$��3��$��12(�$��
ExtraLight"�$��Right=��� 
���   �$��1��$��5q�$	 0.5Q�� $��10q� �� $��0.75* ��� $
��0.5* ��� $��1* �.+��� $��0��.+��� $ 
Horizontal=�.+��� $��Hình thức thanh toán:��$��10(�$��5q��� $��10(�$��5q�$��DemiBold"��� $ 
Horizontal=�.+��� $��Mã thuế:��$��10(�$��5q��� $��01 23 45��$��10(�$��5q�$��DemiBold"��� $��1��.+��� $��Right=�$��20(�$��5q����� *
DateOutput+$ TwoWay=�$ PropertyChanged=��� $��2��.+��� $��Right=�$��Stretch=�$��20(�$��
0,5,-0.4,5q����	#FF62013C$
��Bold"����� *Total+$ TwoWay=�$ PropertyChanged=��� 
���   �$��1��$��5q�$	 0.5Q��� $ 
Horizontal=�.+��� $&�� Số tiền viết bằng chữ:��$��5q�$��12(�$��
ExtraLight"��� $��12(�$��5q�$��DemiBold"����	#FF62013C���� *TotalConvert+$ TwoWay=�$ PropertyChanged=�� $
��0 20q�$��Stretch=� �� �� .+�]� $��0��.+��� $
��Left=�$ Vertical=�.+��� $��Center=�$��Người mua hàng��$��10(��� $��(Ký, ghi rõ họ, tên)��$��10(�$��DemiBold"��� $��Right=�$��Right=�$ Vertical=�.+��� $��Center=�$��Người bán hàng��$��10(��� $,��&(Ký, đóng dấu, ghi rõ họ tên)��$��10(�$��DemiBold"�� $��0 80 0 0q�$��1��.+��� $ 
Horizontal=�.+�  $
 Heart=����	#FF62013C$��20��$��20��$��5q�$��Center=��� $��
Thank you!��$��Center=�$��20(�$��5q�$��Light"��� $ 
Horizontal=�$��Right=�$��Bottom=�.+��� $��name@email.com��$��Center=�$��8(�$��5q�$��Light"��� $��99 9999-9999��$��Center=�$��8(�$��5q�$��Light"��� $��website.com��$��Center=�$��8(�$��5q�$��Light"�