   M S B A M L   `   `   `  ���� ?  ;QLBH, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLBHQLBH  5clr-namespace:QLBH.UserControlQQLBH.UserControlQ  ;"clr-namespace:QLBH.ValidationRulesQLBH.ValidationRules  /clr-namespace:QLBH.ConverterQLBH.Converter      QLBH.OutputWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  localclr-namespace:QLBH  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (ucclr-namespace:QLBH.UserControlQ  .rules"clr-namespace:QLBH.ValidationRules  *convertclr-namespace:QLBH.Converter  -   $��Window��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���    OutputVM � DataContext# [  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Title$ 
Bán hàng��$	��750��$
��1200��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 �� *LoadedWindowCommand+   CommandParameter ��  �� ElementName$ CheckBox��.���  � RowDefinitions �� $
��auto ��� $
��auto ��� .+�� $��0��.+�$   QLBH.UserControlQ.ControlBarUC  
 � Tag �� *Title+$ Window��� $��0,35,0,0q�$��3�� �� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$��5q�.���  �� $
��auto ��� $
��auto �.+�� $��0��.+��� $
��Bold"�
���  ��$��Center=�$��24(�$��5 5 15 5q�$��
HÓA ĐƠN��� $��1�� � ColumnDefinitions �� $	��600 ��� $
��auto �.+�� $��0�� �� $	��126 ��� $
��auto ��� $
��auto �.+�� $��0�� �� �� �� �� .+�� $��0��.+��� $
��Bold"�$��5 5 15 5q�$��Tên khách hàng:��� $��1��.+��� $
��Bold"�$��5 5 15 5q�$��Số điện thoại:��� $��2��.+��� $
��Bold"�$��5 5 15 5q�$��Địa chỉ:��� $��3��.+��� $
��Bold"�$��5 5 15 5q�$��Ghi chú thêm:��� -    �Name$ CustomerInfo��$��1�� �� �� �� �� .+�� $��0��.+��� -    ��Name$ CustomerComboBox�� �� 
IsEditable .  $��	0,-8,0,23q� �� DisplayMemberPath$ DisplayName��)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Chọn tên khách hàng�� & "MaterialDesignFloatingHintComboBox#��[ ���� *ListCustomer+ �� SelectedItem �� *SelectedCustomer+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� Text ��  �� Path$ ComboBoxText�$ PropertyChanged=� �� ValidationRules '	   !QLBH.ValidationRules.NotEmptyRule	  ,
  &System.Windows.Controls.ValidationRule 
  ValidatesOnTargetUpdated . � $��1��.+���  �� 
IsReadOnly . $��
0,-12,0,25q�$  �� % !MaterialDesignFloatingHintTextBox#��[ ���� *SelectedCustomer.Phone+$ PropertyChanged=��� $y�Hidden=� .  $��
0,-12,0,25q�$  ��#��[ -   'QLBH.ValidationRules.ValidationBehavior   HasError �� *ValidateErrorPhone+.������ $ UnknowCustomerPhone�$ PropertyChanged=� $  QLBH.ValidationRules.PhoneRule   . .��� $��2��.+���  . $��0,-19,20,27q�$  ��#��[ ���� *SelectedCustomer.Address+$ PropertyChanged=��� $y�Hidden=� .  $��0,-19,20,27q�$  ��#��[ ���� *UnknowCustomerAddress+$ PropertyChanged=�� $��3��.+���  .  $��0,-15,20,25q�$  ��#��[ ���� *Status+$ PropertyChanged=�� $��2��.+��� -    ��Name$ CheckBox��
��� � �$��Khách lẻ��$
��Bold"�$	��Top=�$��	10 10 0 0q� d� 	IsChecked �� *CheckBoxChecked+$ PropertyChanged=�$ TwoWay=�{��� *CheckBoxEnabled+$ PropertyChanged=�$ TwoWay=����� *CustomerInfoCommand+���� $ CustomerInfo��� $��1�� �� $	��120 ��� $
��auto �.+�� $��0�� �� �� �� �� .+�� $��0��.+��� $
��Bold"�$��5 5 15 5q�$��Nhân viên:��� $��1��.+��� $
��Bold"�$��5 5 15 5q�$��Ngày lập:��� $��2��.+��� $
��Bold"�$��
5,11,15,-1q�$��Mã hóa đơn:���� $��3�� $  MaterialDesignRaisedAccentButton#��[ $��10,5.8,-0.2,15q�$��In hóa đơn��  � ToolTip$  In hóa đơn��
���  ��$
��Bold"����� *PrintCommand+� $��1�� �� �� �� �� .+�� $��0��.+���  .  $��	0,-8,0,23q�$ Chọn tên nhân viên��#��[ ���� *
ListUser+ �� *SelectedUser+$ PropertyChanged=� �� $ SelectedUserText�$ PropertyChanged=� 	   . ���� .R��� ! �� Orientation$! 
Horizontal=�.+��� ���� *DisplayName+�� $��5 0 0 0q�$��Center=�$��20��$��20������ " �� ImageSource" �� *Image+� $��1��.+�(  "System.Windows.Controls.DatePicker  $��Bottom=�$	��100��$��
0,-9,20,23q�$  �� ( $MaterialDesignFloatingHintDatePicker#��[ #   SelectedDate# �� *
DateOutput+$ TwoWay=�$   BlackoutDates$ /  )System.Windows.Controls.CalendarDateRange  %   Start$% 1/1/0001��
&   End$& 1/1/1800��� $��2��.+��� $��20(�$
��Bold"�$��	0,0,20,10q�$ Mã hóa đơn������ *ID+$ PropertyChanged=�  $��1��$��5q�.���  �� $
��auto ��� $
��auto �.+�� $��0 5 0 0q�$��0�� �� $	��590 ��� $
��auto �.+�� ���#aeea00$��0��$��5 0 5 0q�.+��� $
��Bold"�
���  ��$��5,20,368.2,5.4q�$&�� DANH SÁCH CHI TIẾT HÓA ĐƠN���� -   ' ��Name$' RefreshButton��
��� � �$
��Left=�$��
481,15,0,0q�$	��Top=�$��86������ *RefreshCommand+.��]� .+�'  !MaterialDesignThemes.Wpf.PackIcon  (   Kind$( TableRefresh=��� $��10(�$��
Làm mới��$��center=���`�   MultiBindingConverter) `� 	Converter#) [ .1��� $
 List���� $ CustomerComboBox���� $ CheckBox��� $��1�����#aeea00$��4.8,0,-172.8,0.4q�$
��Left=�$	��584�� �� �� .+�� $��0��.+��� $
��Bold"�
���  ��$��	5 20 15 5q�$��SẢN PHẨM:��� $��1��.+�� $��-202,0,0,0.4q�.+���  . * w� TextPath$* DisplayName��+ �� IsTextSearchEnabled+ . $��
20 5 15 10q�$ Tên sản phẩm��#��[ ���� *
ListObject+ �� *SelectedObject+$ TwoWay=�$ PropertyChanged=� �� $ SearchObject�$ PropertyChanged=� 	   . ,  &QLBH.ValidationRules.ContainObjectRule   . ���� .R��� $! 
Horizontal=�.+��� ���� *DisplayName+�� $��5 0 0 0q�$��Center=�$��20��$��20������ " �� *Image+�� $��
30 0 15 10q�$ Giá sản phẩm��#��[ .������ $ PriceObject.OutputPrice�$ PropertyChanged=� ,  &QLBH.ValidationRules.NotEmptyMoneyRule   . 2  ,QLBH.ValidationRules.StringHasWhiteSpaceRule   . %  QLBH.ValidationRules.NumberRule   . .���� $��
30 0 15 10q�$ Số lượng��#��[  �� *ValidateErrorCount+.������ $ Count�$ PropertyChanged=�$ TwoWay=� ,  &QLBH.ValidationRules.NotEmptyCountRule   .    . $  QLBH.ValidationRules.CountRule   . .���� $��
30 0 15 10q�$ Trạng thái��#��[ ���� *StatusOfOutputInfo+$ PropertyChanged=�$ TwoWay=�� $��1�� �� $	��590 ��� $	��595 �.+�� $��0�� �� $	��250 ��� $
��auto �.+�  $��5q�$��Stretch=�$��0��.���� -   , ��Name$
, List������ *
ListOutput+ �� *SelectedItem+$ OneWayToSource=�- �� View- �� .P��� . �� DisplayMemberBinding. �� *ID+.���� $��Mã HĐ��$	��130��$��7q��� . �� *Customer.DisplayName+.���� $��Khách hàng��$	��130��$��7q��� . �� *
DateOutput+/ �� StringFormat$/ 
dd/MM/yyyy��.���� $��Ngày lập��$	��130��$��7q��� . �� *Total+$/ 
0,0,0 VNĐ��.���� $��Tổng tiền��$	��130��$��7q��� . �� *Status+.���� $��Ghi chú��$	��130��$��7q�   $ SelectionChanged��.	   
 �� *$"SelectedItemListViewChangedCommand+ �� $
 List��� $��1��$��Center=�.+�� .+��� $
��Bold"�#��[ $��Tạo hóa đơn mới��$��5q�$	��150������ $
 List������ *AddOutputCommand+�� $
��Bold"�#��[ $��Sửa hóa đơn��$��5q�$	��150������ $
 List������ *EditOutputCommand+�� $
��Bold"�#��[ $��Xóa hoá đơn��$��5q�$	��150������ $ RefreshButton������ *DeleteOutputCommand+� $��1�� �� $	��250 ��� $
��auto �.+�  $��0��$��5q�$��Stretch=�.���� -   $, ListOutputInfo������ *ListOutputInfoTemp+ �� *SelectedOutputInfo+$ TwoWay=�- �� .P��� . �� *Object.DisplayName+.���� $
��Left=�$��Tên sản phẩm��$	��120��$��7q��� .���� $
��Left=�$��Ảnh��$��56��$��7q�0 �� CellTemplate0 �� .R��� 1 ��Name$1 Avatar��$��0 0 0 0q�$��Center=�$��30��$��30������ " �� *Object.Image+�� . �� *Count+.���� $
��Left=�$��Số lượng��$��85��$��7q��� . �� *InputInfo.OutputPrice+$/ 
0,0,0 VNĐ��.���� $
��Left=�$��	Giá bán��$	��121��$��7q��� . �� *
SumPrice+$/ 
0,0,0 VNĐ��.���� $
��Left=�$��Thành tiền��$	��110��$��7q��� . �� *Status+.���� $��Right=�$��Trạng thái��$	��186��$��7q�   $ SelectionChanged��.	   
 �� **(SelectedOutputInfoListViewChangedCommand+ �� $ ListOutputInfo��� $��1��$��Center=�.+�� .+��� $
��Bold"�#��[ $��Thêm sản phẩm��$��5q�$	��150������ *AddOuputInfoCommand+�� $
��Bold"�#��[ $��Sửa sản phẩm��$��5q�$	��150������ $ ListOutputInfo������ *EditOuputInfoCommand+�� $
��Bold"�#��[ $��Xóa sản phẩm��$��5q�$	��150������ *DeleteOuputInfoCommand+  $��2��.���  �� $	��400 ��� $
��auto �  $��2��$��5,5,5,0q�$��72��$	��Top=�.���  �� �� �� .+�� $��0��.+��� 
���  ��$��20(�$
��Bold"�$��5,10,15.4,0q�$��Tổng tiền:��$��40��$	��Top=��� $��20(�
���  ��$
��Bold"� . $��124,-7,-0.6,22q�$  ��#��[ ���� *TotalString+$ PropertyChanged=�$ TwoWay=�� $��1��.+��� 
���  ��$��20(�$
��Bold"�$��5,10,15.4,0q�$��Khách đưa:��$��40��$	��Top=��� $��20(�
���  ��$
��Bold"� .  $��124,-7,-0.6,22q�#��[  �� *ValidateErrorCustomerMoney+.������ $/ 
0,0,0 VNĐ��$ CustomerMoney�$ PropertyChanged=�$ TwoWay=� 4  .QLBH.ValidationRules.NotEmptyCustomerMoneyRule   .    .    . .��.��.��� $��2��$��0 0 10 0q�.+��� 
���  ��$��20(�$
��Bold"�$��5,10,15.4,10q�$��Tiền trả:��$	��110��$��40��$
��Left=�$	��Top=�#��[ ���� *
PayCommand+���� $ MoneyReturn���� -   2 ��Name$2 MoneyReturn��$��20(�
���  ��$
��Bold"� . $��124,-7,-0.6,22q�$  ��#��[ ���� *MoneyReturn+$ PropertyChanged=�$ TwoWay=�$/ 
0,0,0 VNĐ��