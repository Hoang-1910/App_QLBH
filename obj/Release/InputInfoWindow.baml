   M S B A M L   `   `   `  ���� ?  ;QLBH, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLBHQLBH  5clr-namespace:QLBH.UserControlQQLBH.UserControlQ  ;"clr-namespace:QLBH.ValidationRulesQLBH.ValidationRules      QLBH.InputInfoWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  localclr-namespace:QLBH  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (ucclr-namespace:QLBH.UserControlQ  .rules"clr-namespace:QLBH.ValidationRules  -   $��Window��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���    InputInfoVM � DataContext# [  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Title$ Thông tin nhập hàng��$	��450��$	��800��.���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�$   QLBH.UserControlQ.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 Window��� $��1�� �� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$��5q�.��� .+��� $��5 5 15 5q�)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên hàng hóa�� �� 
IsEditable .   & "MaterialDesignFloatingHintComboBox#��[ ���� *
ListObject+ �� SelectedItem �� *SelectedObject+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� Text ��  �� Path$ SelectedObjectText�$ PropertyChanged=� �� ValidationRules '   !QLBH.ValidationRules.NotEmptyRule  ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . ���� .R���  �� Orientation$ 
Horizontal=�.+��� ���� *DisplayName+�� $��5 0 0 0q�$��Center=�$��20��$��20������  �� ImageSource �� *Image+(  "System.Windows.Controls.DatePicker  $��	5 5 15 10q�$
 Ngày nhập�� ( $MaterialDesignFloatingHintDatePicker#��[    SelectedDateFormat$ Short=�-   'QLBH.ValidationRules.ValidationBehavior   HasError �� *ValidateErrorDate+   SelectedDate �� $ SelectedInputDate�$ PropertyChanged=�    .    BlackoutDates /	  )System.Windows.Controls.CalendarDateRange	   	  Start$ 1/1/0001��
 	  End$ 1/1/1800���� $��	5 5 15 10q�$
 Số lượng�� % !MaterialDesignFloatingHintTextBox#��[  �� *ValidateErrorCount+.������ $ Count�$ PropertyChanged=�$ TwoWay=� ,
  &QLBH.ValidationRules.NotEmptyCountRule
   . 2  ,QLBH.ValidationRules.StringHasWhiteSpaceRule   . $  QLBH.ValidationRules.CountRule   . .���� -    ��Name$ txtInputPrice��$��	5 5 15 10q�$
 Giá nhập��#��[  �� *ValidateErrorInputPrice+.������ $ 
InputPrice�$ PropertyChanged=� 4  .QLBH.ValidationRules.NotEmptyCustomerMoneyRule   .    . %  QLBH.ValidationRules.NumberRule   . .���� $��	5 5 15 10q�$
 Giá xuất��#��[  �� *ValidateErrorOutputPrice+.������ $ OutputPrice�$ PropertyChanged=�    .    .    . .���� $��	5 5 15 10q�$
 Trạng thái nhập��#��[ ���� *Status+$ PropertyChanged=�  $��1��$��5q�.��� .+��� $	��100��$��5q� $  MaterialDesignRaisedAccentButton#��[  � ToolTip$5 /Resource name: MaterialDesignRaisedAccentButton��$��Thêm������ *
AddCommand+�� $	��100��$��5q�#��[ $5 /Resource name: MaterialDesignRaisedAccentButton��$��Sửa������ *EditCommand+���� $
	 List���� $	��100��$��5q�#��[ $5 /Resource name: MaterialDesignRaisedAccentButton��$
��Xóa������ *DeleteCommand+  $��5q�$��2��$��Stretch=�.���� $
��Auto=�.���� -    ��Name$
 List������ *List+ �� *SelectedItem+$ OneWayToSource=� �� View �� .P���  �� DisplayMemberBinding �� *Object.DisplayName+.���� $��
Hàng hóa��$	��150��$��7q���  �� *Input.DateInput+  �� StringFormat$  
dd/MM/yyyy��.���� $��Ngày nhập��$	��150��$��7q���  �� *Count+.���� $��Số lượng��$	��100��$��7q���  �� *
InputPrice+$  
0,0,0 VNĐ��.���� $��Giá nhập��$	��100��$��7q���  �� *OutputPrice+$  
0,0,0 VNĐ��.���� $��Giá xuất��$	��100��$��7q���  �� *Status+.���� $��Trạng thái nhập��$	��150��$��7q�