   M S B A M L   `   `   `  ���� ?  ;QLBH, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLBHQLBH  5clr-namespace:QLBH.UserControlQQLBH.UserControlQ  ;"clr-namespace:QLBH.ValidationRulesQLBH.ValidationRules      QLBH.SuplierWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     $localclr-namespace:QLBH     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (ucclr-namespace:QLBH.UserControlQ  .rules"clr-namespace:QLBH.ValidationRules  -   $��Window��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���    	SuplierVM � DataContext# [  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Title$ Nhà cung cấp��$	��450��$	��800��.���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�$   QLBH.UserControlQ.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 Window��� $��1�� �� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$��5q�.��� .+��� $��	5 5 15 10q�)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 Tên nhà cung cấp�� % !MaterialDesignFloatingHintTextBox#��[ -   'QLBH.ValidationRules.ValidationBehavior   HasError �� *ValidateErrorDisplayName+.������  �� Path$ DisplayName� �� UpdateSourceTrigger$ PropertyChanged=� �� ValidationRules '   !QLBH.ValidationRules.NotEmptyRule  ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . .���� $��	5 5 15 10q�$
 Địa chỉ��#��[ ���� *	Address+$ PropertyChanged=��� $��	5 5 15 10q�$
 Điện thoại��#��[  �� *ValidateErrorPhone+.������ $ Phone�$ PropertyChanged=� $  QLBH.ValidationRules.PhoneRule   . .���� $��	5 5 15 10q�$
 Email��#��[ .������ $ Email�$ PropertyChanged=� $	  QLBH.ValidationRules.EmailRule	   . .��(
  "System.Windows.Controls.DatePicker
  $��	5 5 15 10q�$
 Ngày ký hợp đồng�� ( $MaterialDesignFloatingHintDatePicker#��[  
  SelectedDateFormat$ Short=� 
  SelectedDate �� *ContractDate+ �� StringFormat$ 
dd/MM/yyyy��$ PropertyChanged=� 
  BlackoutDates /  )System.Windows.Controls.CalendarDateRange     Start$ 1/1/0001��
   End$ 1/1/1800��  $��1��$��5q�.��� .+��� $	��100��$��5q� $  MaterialDesignRaisedAccentButton#��[  � ToolTip$5 /Resource name: MaterialDesignRaisedAccentButton��$��Thêm������ *
AddCommand+�� $	��100��$��5q�#��[ $5 /Resource name: MaterialDesignRaisedAccentButton��$��Sửa������ *EditCommand+���� $
	 List���� $	��100��$��5q�#��[ $5 /Resource name: MaterialDesignRaisedAccentButton��$
��Xóa������ *DeleteCommand+  $��5q�$��2��$��Stretch=�.���� $
��Auto=�.���� -    ��Name$
 List������ *List+ �� SelectedItem �� *SelectedItem+ �� Mode$ OneWayToSource=� �� View �� .P���  �� DisplayMemberBinding �� *ID+.���� $��ID��$	��100��$��7q���  �� *DisplayName+.���� $��Tên nhà cung cấp��$	��150��$��7q���  �� *	Address+.���� $��Địa chỉ��$	��150��$��7q���  �� *Phone+.���� $��Điện thoại��$	��100��$��7q���  �� *Email+.���� $��Email��$	��100��$��7q���  �� *ContractDate+$ 
dd/MM/yyyy��.���� $��Ngày ký hợp đồng��$	��100��$��7q�