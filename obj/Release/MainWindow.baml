   M S B A M L   `   `   `  ���� U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  ? ;QLBH, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLBHQLBH 5clr-namespace:QLBH.UserControlQQLBH.UserControlQ    QLBH.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  >lvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf  localclr-namespace:QLBH  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (ucclr-namespace:QLBH.UserControlQ  -   $��
mainWindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���   
 MainVM � DataContext# [  � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=� � Title$) #Phần mềm quản lý cửa hàng��$	��700��$
��1200��.  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ Loaded��.  (System.Windows.Interactivity.TriggerBase	   Actions.	 6  0System.Windows.Interactivity.InvokeCommandAction  
   Command
 �� *LoadedWindowCommand+   CommandParameter ��  �� ElementName$ 
mainWindow�� � 	Resources   	MenuClose �� 
TargetName �� TargetProperty9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value p� KeyTime p� Value �� KeyTime �� Value �� UpdateSourceTrigger  MenuOpen 
 LogOut��%�  &	       &	     &	 (    �� .��U� $ GridMenu��$ (FrameworkElement.Width)�.\�  $ 0��$	 200Q�  $ 0:0:0.5��$ 60Q�U� $ Avatar��$ (FrameworkElement.Width)�.\�  $ 0��$ 70Q�  $ 0:0:0.5��$ 50Q�U� $ Avatar��$ (FrameworkElement.Height)�.\�  $ 0��$ 70Q�  $ 0:0:0.5��$ 50Q�r� $ Avatar��$ (FrameworkElement.Margin)�.	��� $ 0��$ 0,5,0,0q��� $ 0:0:0.5��$ 0,40,0,0q��� $ UserName��$ (TextBlock.Text)�.�a� $ 0�� �� *
UserName+$ PropertyChanged=�a� $ 0:0:0.5��$  ���� $ UserRole��$ (TextBlock.Text)�.�a� $ 0�� �� *
UserRole+a� $ 0:0:0.5��$  ��r� $ LogOutButton��$ (FrameworkElement.Margin)�.	��� $ 0��$ 0,4,0,0q��� $ 0:0:0.5��$ 0,-5,0,0q��� .��U� $ GridMenu��$ (FrameworkElement.Width)�.\�  $ 0��$ 60Q�  $ 0:0:0.5��$	 200Q�U� $ Avatar��$ (FrameworkElement.Width)�.\�  $ 0��$ 50Q�  $ 0:0:0.5��$ 70Q�U� $ Avatar��$ (FrameworkElement.Height)�.\�  $ 0��$ 50Q�  $ 0:0:0.5��$ 70Q�r� $ Avatar��$ (FrameworkElement.Margin)�.	��� $ 0��$ 0,40,0,0q��� $ 0:0:0.5��$ 0,5,0,5q��� $ UserName��$ (TextBlock.Text)�.�a� $ 0��$  ��a� $ 0:0:0.5�� �� *
UserName+$ PropertyChanged=��� $ UserRole��$ (TextBlock.Text)�.�a� $ 0��$  ��a� $ 0:0:0.5�� �� *
UserRole+r� $ LogOutButton��$ (FrameworkElement.Margin)�.	��� $ 0��$ 0,-5,0,0q��� $ 0:0:0.5��$ 0,4,0,0q��� .��U� $ GridMenu��$ (FrameworkElement.Width)�.\�  $ 0��$	 200Q�  $ 0:0:0.5��$ 60Q� � Triggers :�  :� RoutedEvent$ ButtonBase.Click�� :� 
SourceName$ ButtonOpenMenu��.[��� #��[ :� $ ButtonBase.Click��$ ButtonCloseMenu��.[��� #��[ :� $ ButtonBase.Click��$ LogOutButton��.[��� #��[ .��� .+�� $��0��$��35��$	��Top=�.+�$  QLBH.UserControlQ.ControlBarUC  
 � Tag �� *Title+$ 
mainWindow��� -    �Name$ GridMenu��$��0 35 0 0q�$��60�� K� ZIndex$ 1��$
��Left=�
��� � �.+��� .+�� $	��160������  �� EndPoint$ 0.5,1&� � MappingMode$ RelativeToBoundingBox=� �� 
StartPoint$ 0.5,0&�.���   � Color$  Green��! � Offset$! 0Q�� $  	#FFAEEA00��$! 1Q�� $  	#FFAEEA00��$! 0.418Q�� $  	#FFAEEA00��$! 0.599Q�.+��� $	��160��.+�A� -   " A�Name$" Avatar��$��0 40 0 0q�$��Center=�$��50��$��50������ # �� ImageSource# �� *Avatar+�� -   $ ��Name$$ UserName��$��Center=�$�� ���� -   $$ UserRole��$��Center=�$�� ��� $��0 0 0 0q�$��Center=�.+��� -   % ��Name$% LogOutButton��$��Bottom=�$��0q�$��0 -5 0 0q�
���  ��$��45��$	��200������ *LogOutCommand+��Z� ��Z� .���� $	��140��$��	-35 0 0 0q�& �� Orientation$& 
Horizontal=�.+�'  !MaterialDesignThemes.Wpf.PackIcon  '   Kind$' Power=�$��Center=�$��35��$��35���� $��Đăng xuất��$��Center=�$��15 10q���`�   MultiBindingConverter( `� 	Converter#( [ .1��� $ 
mainWindow���� $ ButtonCloseMenu���� $ ButtonOpenMenu��   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ LogOutButton��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ LogOutButton���� -   $% ButtonCloseMenu��$��0 0 13 0q�$��0q�$��35��$��35��$	��Top=�$��Right=�$y�	Collapsed=���Z� ��Z� .��  $��25��$��25��
��� � �$' 	ArrowLeft=��� -   $% ButtonOpenMenu��$��0 0 13 0q�$��0q�$��35��$��35��$	��Top=�$��Right=���Z� ��Z� .��  $��25��$��25��
��� � �$
' Menu=��� $��0q�$��Disabled=�
�������.@��� $��0q�) � Cursor$
) Hand��.���� -	   $% Button1��$��60��$	��200������ *OutputWindowCommand+���� $ 
mainWindow����Z� ��Z� .���� $	��140��$��	-24 0 0 0q�$& 
Horizontal=�.+�  $
' Cart=�$��Center=�$��25��$��25���� $��
Bán hàng��$��Center=�$��20 10q�   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ Button1��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ Button1���� $��0q�.���� -
   $% Button2��$��60��$	��200������ *OutputInfoWindowCommand+���� $ 
mainWindow����Z� ��Z� .���� $	��140��$��	-24 0 0 0q�$& 
Horizontal=�.+�  $' Export=�$��Center=�$��25��$��25���� $��Xuất hàng��$��Center=�$��20 10q�   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ Button2��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ Button2���� $��0q�.���� -   $% Button3��$��60��$	��200������ *InputInfoWindowCommand+���� $ 
mainWindow����Z� ��Z� .���� $	��140��$��	-24 0 0 0q�$& 
Horizontal=�.+�  $' Import=�$��Center=�$��25��$��25���� $��Nhập hàng��$��Center=�$��20 10q�   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ Button3��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ Button3���� $��0q�.���� -   $% Button4��$��60��$	��200������ *ObjectWindowCommand+���� $ 
mainWindow����Z� ��Z� .���� $	��140��$��	-24 0 0 0q�$& 
Horizontal=�.+�  $' CellphoneIphone=�$��Center=�$��25��$��25���� $��
Hàng hóa��$��Center=�$��20 10q�   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ Button4��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ Button4���� $��0q�.���� -   $% Button5��$��60��$	��200������ *SuplierWindowCommand+���� $ 
mainWindow����Z� ��Z� .���� $	��140��$��	-24 0 0 0q�$& 
Horizontal=�.+�  $' LocalShipping=�$��Center=�$��25��$��25���� $��Nhà cung cấp��$��Center=�$��20 10q�   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ Button5��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ Button5���� $��0q�.���� -   $% Button6��$��60��$	��200������ *UnitWindowCommand+���� $ 
mainWindow����Z� ��Z� .���� $	��140��$��	-24 0 0 0q�$& 
Horizontal=�.+�  $' TapeMeasure=�$��Center=�$��25��$��25���� $��Đơn vị tính��$��Center=�$��20 10q�   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ Button6��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ Button6���� $��0q�.���� -   $% Button7��$��60��$	��200������ *CustomerWindowCommand+���� $ 
mainWindow����Z� ��Z� .���� $	��140��$��	-24 0 0 0q�$& 
Horizontal=�.+�  $' HumanMaleMale=�$��Center=�$��25��$��25���� $��Khách hàng��$��Center=�$��20 10q�   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ Button7��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ Button7���� $��0q�.���� -   $% Button8��$��60��$	��200������ *UserWindowCommand+���� $ 
mainWindow����Z� ��Z� .���� $	��140��$��	-24 0 0 0q�$& 
Horizontal=�.+�  $' AccountGroup=�$��Center=�$��25��$��25���� $��Người dùng��$��Center=�$��20 10q�   $ 
MouseEnter��.	   
 �� *MouseEnterButton+ �� $ Button8��  $ 
MouseLeave��.	   
 �� *MouseLeaveButton+ �� $ Button8��� $��	60 35 0 0q�* � RowDefinitions* �� $
��auto ��� $
��auto ��� $
��auto ��� .+��� $��0��$��0 5 0 0q�$��Center=�$
��auto��$& 
Horizontal=�.+�#	  MaterialDesignThemes.Wpf.Card	  $��Right=�$��5 5 30 5q� ! PrimaryHueDarkForegroundBrush#���  $��0q�$	��235������ $ 0.5,1&�$ 0.5,0&�.��� $  Green��� $  	#FFAEEA00��$! 1Q�.��� * �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��20(�$
��Bold"�$��
16 16 16 0q�$��SỐ HÀNG NHẬP���� $��1��
�������$��20(�$
��Bold"�+ �� Padding$+ 0 0 0 10q�$��	16 0 16 8q�$��Center=�$
��Left=����� *ThongKe.LuongNhap+�� $��2��  	 MaterialDesignLightSeparator#��[	 �� $��3��$��16 -30 16 8q�$
��Left=�$��Tổng tiền:��� $��4��, � ColumnDefinitions, �� $
��auto ��� .+��� $��0��
���  ��$��20(�$
��Bold"�$��16 0 0 8q�$��Center=�$
��Left=����� *ThongKe.GiaNhap+- �� StringFormat$- 0,0,0���� $��1��
���  ��$��20(�$
��Bold"�$��5 0 16 8q�$��Center=�$
��Left=�$
��VNĐ��'
  !MaterialDesignThemes.Wpf.PopupBox
  $��Right=�$��2 0 2 0q�$��15q�. 
  PopupContent.. �� 	  $��Center=�$��5 5 30 5q�#���  $��0q�$	��235������ $ 0.5,1&�$ 0.5,0&�.��� $  Green��� $  	#FFAEEA00��$! 1Q�.��� * �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��20(�$
��Bold"�$��
16 16 16 4q�$��SỐ HÀNG ĐÃ BÁN���� $��1��
�������$��20(�$
��Bold"�$+ 0 0 0 10q�$��	16 0 16 8q�$��Center=�$
��Left=����� *ThongKe.LuongXuat+�� $��2��#��[	 �� $��3��$��16 -30 16 8q�$
��Left=�$��Tổng tiền:��� $��3��, �� $
��auto ��� .+��� $��0��
���  ��$��20(�$
��Bold"�$��16 0 0 8q�$��Center=�$
��Left=����� *ThongKe.GiaXuat+$- 0,0,0���� $��1��
���  ��$��20(�$
��Bold"�$��5 0 16 8q�$��Center=�$
��Left=�$
��VNĐ��
  $��Right=�$��2 0 2 0q�$��15q�.. �� 	  $��Center=�$��5 5 30 5q�#���  $��0q�$	��235������ $ 0.5,1&�$ 0.5,0&�.��� $  Green��� $  	#FFAEEA00��$! 1Q�.��� * �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��20(�$
��Bold"�$��
10 16 16 4q�$��SỐ HÀNG TỒN KHO���� $��1��$+ 0 0 0 10q�
�������$��20(�$
��Bold"�$��	16 0 16 8q�$��Center=�$
��Left=����� *ThongKe.LuongTon+�� $��2��#��[	 
  $��Right=�$��2 0 2 0q�$��15q�.. �� 	  $��Right=�$��5 5 10 5q�#���  $��0q�$	��235������ $ 0.5,1&�$ 0.5,0&�.��� $  Green��� $  	#FFAEEA00��$! 1Q�.��� * �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��20(�$
��Bold"�$��
16 16 16 4q�$��TIỀN LÃI��� $��3��, �� $
��auto ��� .+��� $��0��
���  ��$��20(�$
��Bold"�$��16 0 0 8q�$��Center=�$
��Left=����� *ThongKe.GiaLai+$- 0,0,0���� $��1��
���  ��$��20(�$
��Bold"�$��5 0 16 8q�$��Center=�$
��Left=�$
��VNĐ��
  $��Right=�$��2 0 2 0q�$��15q�.. �� � $��1��$��5 10 5 5q�.+�	  .��]� $��5q�.+�	  $��0 0 5 0q�$
��Left=�.���� $& 
Horizontal=�.+�   LiveCharts.Wpf.PieChart  -   /  Name$/ 	PieChart1��$��0 0 0 5q�&    LiveCharts.Wpf.Charts.Base.Chart0   LegendLocation$0 Bottom=�$
��Left=�$	��Top=�$	��200��$	��200��1   Series1 �� *PieChartSeriesCollection+$ PropertyChanged=��� .+�  -   $/ 	PieChart2��$��0 0 0 5q�$��Right=�$	��Top=�$	��200��$	��200��1 �� *PieChartSeriesCollectionForSP+$ PropertyChanged=�0 �� *Legend+�� $+ 0 0 0 5q�$��Center=�$��Center=�$��Các sản phẩm��y��� *VisibilityOfTitle+	  .��#   LiveCharts.Wpf.CartesianChart  $0 Bottom=�$��5q�$��Right=�1 �� * CartesianChartSeriesCollection+2   AxisX2    LiveCharts.Wpf.Axis  -   3  Name$3 labelDefaultValue��4   
ShowLabels4 . 5   MinValue$5 0Q�6   MaxValue$6 7Q�7   
FontWeight$
7 Bold"�8   
Foreground8 �	#FFAEEA009   Labels9 �� *Labels+:   	Separator:    LiveCharts.Wpf.Separator  ;   Step$; 1Q�{�.  <   AxisY<   -   $3 AxisY��$5 0Q�:   {�.  ; �� *StepY+� $��2��.+�� $��0��$��5q�.+��� $& 
Horizontal=�.+�� $	��400��, �� $
��auto ��� $
��auto ��� $
��auto �.+�� $��0��.+���  $
  MaterialDesignRaisedAccentButton#��[
 $	��100��$��	20 10 0 0q�$��LỌC��= � ToolTip$8= 2Resource name: MaterialDesignRaisedLightDarkButton������ *FilterCommand+� $��1��.+��� > �� TextWrapping$
> Wrap=�? �� AcceptsReturn? .  % !MaterialDesignFloatingHintTextBox#��[ $	��115��$��25 5 0 0q�$��Center=�$
��Left=�)  #MaterialDesignThemes.Wpf.HintAssist@   Hint$@ Nhập tên sản phẩm������ *Filter+A �� 
IsReadOnlyA �� *
ReadOnly+�� $��2��$��	25 19 0 0q�B �� 
IsEditableB .  $@ Sản phẩm������ *ListKindObject+C �� SelectedItemC �� *SelectedKindObject+� $��5 0 0 0q�, �� $
��auto ��� $
��auto ��� $
��auto ��� $
��auto �.+�� $��0��.+��� #��[
 $	��100��$��	25 10 0 0q�$��THỐNG KÊ��$8= 2Resource name: MaterialDesignRaisedLightDarkButton������ *ThongKeCommand+���� $ labelDefaultValue��� $��1��.+��� $��	25 19 0 0q�B .  $+@ %Chọn kiểu thời gian thống kê������ *ListKindDate+C �� *SelectedKindDate+� $��2��.+�(  "System.Windows.Controls.DatePicker  -   D  Name$D ChartDtp��$	��100��E   SelectedDateFormat$E Short=�$��25 5 0 0q�$��Center=�$
��Left=�$@ Chọn thời gian�� ( $MaterialDesignFloatingHintDatePicker#��[ F   SelectedDateF �� *SelectedDate+$ PropertyChanged=�G   BlackoutDatesG /  )System.Windows.Controls.CalendarDateRange  H   Start$H 1/1/0001��
I   End$I 1/1/1800��� $��3��.+��� $	��100��$��Right=�$��
125 10 0 0q�
��� � ����� *RefreshCommand+.��]� .+�  $' TableRefresh=��� $��10(�$��
Làm mới��$��center=�	  $��3��$��5q�$��Stretch=�.���� $��Disabled=�.��&   System.Windows.Controls.DataGrid  J   CanUserAddRowsJ .  K   AutoGenerateColumnsK .  L   HeadersVisibility$	L All=���. $
��Auto=�$
��Auto=����� *InventoryList+M �� Mode$M TwoWay=�N   ColumnsN 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumnO   Width5  /System.Windows.Controls.DataGridLengthConverter$O 60 P   
IsReadOnlyP . Q   Header$	Q STT�� ) %MaterialDesignDataGridTextColumnStyle1  +System.Windows.Controls.DataGridBoundColumnR   ElementStyle#R [  0 ,MaterialDesignDataGridTextColumnEditingStyleS   EditingElementStyle#S [ T   BindingT �� *STT+  $	O 130 P . $Q Tên sản phẩm��#R [ #S [ T �� *Object.DisplayName+4  .System.Windows.Controls.DataGridTemplateColumn  Q �� $��Ảnh sản phẩm��U   CellTemplateU �� .R��� V ��Name$V Avatar��$��0 0 0 0q�$��Center=�$��30��$��30������ # �� *Object.Image+  $	O 120 P . $Q Lượng nhập��#R [ #S [ T �� *
CountInput+  $	O 150 P . $Q Tiền nhập��#R [ #S [ T �� *
MoneyInput+$- 
0,0,0 VNĐ��  $	O 140 P . $Q Lượng bán��#R [ #S [ T �� *CountOutput+  $	O 150 P . $Q Tiền bán��#R [ #S [ T �� *MoneyOutput+$- 
0,0,0 VNĐ��  $	O 140 P . $Q Lượng tồn��#R [ #S [ T �� *CountInventory+  $	O 100 P . $Q Tiền lãi��#R [ #S [ T �� *	MoneyEarn+$- 
0,0,0 VNĐ��