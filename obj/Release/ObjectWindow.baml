   M S B A M L   `   `   `  ���� ?  ;QLBH, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLBHQLBH  5clr-namespace:QLBH.UserControlQQLBH.UserControlQ  ;"clr-namespace:QLBH.ValidationRulesQLBH.ValidationRules      QLBH.ObjectWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     $localclr-namespace:QLBH     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (ucclr-namespace:QLBH.UserControlQ  .rules"clr-namespace:QLBH.ValidationRules  -   $��Window��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���    ObjectVM � DataContext# [  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Title$ Quản lý hàng��$	��450��$	��800��.���  � RowDefinitions �� $
��auto ��� .+�� $��0��.+�$   QLBH.UserControlQ.ControlBarUC  
 � Tag �� *Title+	 �� ElementName$	 Window��� $��1�� �� $
��auto ��� $
��auto ��� .+�#  MaterialDesignThemes.Wpf.Card  $��0��$��5q�.��� .+��� $��	5 5 15 10q�)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 
Tên hàng�� % !MaterialDesignFloatingHintTextBox#��[ -   'QLBH.ValidationRules.ValidationBehavior   HasError �� *ValidateErrorDisplayName+.������  �� Path$ DisplayName� �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� ValidationRules '   !QLBH.ValidationRules.NotEmptyRule  ,  &System.Windows.Controls.ValidationRule   ValidatesOnTargetUpdated . .���� $��	5 5 15 -4q� �� 
IsEditable .   �� DisplayMemberPath$ DisplayName��$
 
Đơn vị������ *
ListUnit+ �� SelectedItem �� *SelectedUnit+$ TwoWay=�$ PropertyChanged=� �� Text �� $ SelectedUnitText�$ PropertyChanged=�    . �� $��	5 5 15 -4q� .  $ DisplayName��$
 Nhà cung cấp������ *ListSuplier+ �� *SelectedSuplier+$ TwoWay=�$ PropertyChanged=� �� $ SelectedSuplierText�$ PropertyChanged=�    . �� $��	5 5 15 10q�$
 QRCode��#��[ ���� *QRCode+$ PropertyChanged=��� $��	5 5 15 10q�$
 BarCode��#��[ ���� *	BarCode+$ PropertyChanged=��� -    ��Name$ Avatar��
��� � �$��0 0 0 0q�$��Center=�$��50��$��50��y��� *Avatar+$ PropertyChanged=����� -   	Image�� �� ImageSource �� *
FileName+�� 
��� � �$��0 0 0 0q�$��Center=�$��50��$��50��y��� *	NoImage+$ PropertyChanged=����� -   NoImage��$ /Images/noimage.jpg���� .+��� -    ��Name$ CloseImageButton��$
��Left=�$��	-10 5 0 0q�$��10��$��10��$�� ������ *CloseImageCommand+���� $	 CloseImageButton��y��� *CloseButtonVisibility+$ PropertyChanged=�$ TwoWay=�����  �� 
TargetType" ��.R�� .+�A� 
���  ���� $��Center=�$��Center=���'  !MaterialDesignThemes.Wpf.PackIcon  $��10��$��10��   Kind$ CloseCircle=��� $��80��$��25��$��5 10 0 0q� $  MaterialDesignRaisedAccentButton#��[  � ToolTip$5 /Resource name: MaterialDesignRaisedAccentButton��$��12(�$��Chọn file������ *ImageCommand+���� $	 Image��  $��1��$��5q�.��� .+��� $	��100��$��5q�#��[ $5 /Resource name: MaterialDesignRaisedAccentButton��$��Thêm������ *
AddCommand+���� $
	 List���� $	��100��$��5q�#��[ $5 /Resource name: MaterialDesignRaisedAccentButton��$��Sửa������ *EditCommand+���� $
	 List���� $	��100��$��5q�#��[ $5 /Resource name: MaterialDesignRaisedAccentButton��$
��Xóa������ *DeleteCommand+���� $
	 List��  $��5q�$��2��$��Stretch=�.���� $��Disabled=�.���� -    ��Name$
 List������ *List+ �� *SelectedItem+$ OneWayToSource=� �� View �� .P���  �� DisplayMemberBinding �� *ID+.���� $��ID��$��7q���  �� *DisplayName+.���� $��
Tên hàng��$	��150��$��7q��� .���� $��Ảnh��$��80��$��7q� �� CellTemplate �� .R��� $ Avatar��$��0 0 0 0q�$��Center=�$��50��$��50������  �� *Image+��  �� *Unit.DisplayName+.���� $��
Đơn vị��$	��100��$��7q���  �� *Suplier.DisplayName+.���� $��Nhà cung cấp��$	��150��$��7q���  �� *QRCode+.���� $��QRCode��$	��100��$��7q���  �� *	BarCode+.���� $��BarCode��$	��100��$��7q�