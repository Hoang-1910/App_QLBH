   M S B A M L   `   `   `  ���� ?  ;QLBH, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:QLBHQLBH  5clr-namespace:QLBH.UserControlQQLBH.UserControlQ      QLBH.LoginWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  localclr-namespace:QLBH  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  (ucclr-namespace:QLBH.UserControlQ  -   $��loginWindow��   MaterialDesignBody#���   $��Regular"�$��13(�&   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�   TextRenderingMode$
 Auto=�  MaterialDesignPaper#���    MaterialDesignFont#���    LoginVM � DataContext# [  � 
ResizeMode$ NoResize=� � WindowStyle$
 None=� � WindowStartupLocation$ CenterScreen=� � Title$ Đăng nhập��$	��300��$	��400��.���  � 	Resources ��%     � RowDefinitions �� $
��auto ��� .+�� $��0��.+�$   QLBH.UserControlQ.ControlBarUC  
	 � Tag	 �� *Title+
 �� ElementName$
 loginWindow��#  MaterialDesignThemes.Wpf.Card  $��1��$	��300��$	��150��$��Center=�$��Center=�$��33,35,31.6,35.4q�.���   �� 
TargetType �� Property �� Value��%4   '�       �� " �.���  � ��$ 	15 0 15 0q� �� �� �� .+�� $��0��.+�]� .+�'  !MaterialDesignThemes.Wpf.PackIcon  ���	#FFAEEA00   Kind$
 User=�$��0 0 5 0q�$��30��$��30��$��Bottom=��� $��Right=�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên đăng nhập��   
Foreground
 � � �.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 � � � % !MaterialDesignFloatingHintTextBox#��[ $��Center=����� *
UserName+� $��1��.+�]� .+�  ���	#FFAEEA00$	 Key=�$��0 0 5 0q�$��30��$��30��$��Bottom=�� $��0q�$��Right=�.+�G� -    G�Name$ FloatingPasswordBox�� K� ZIndex$ 1��$ Mật khẩu��
 � � �
 � � � ) %MaterialDesignFloatingHintPasswordBox#��[ .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ PasswordChanged��.	  (System.Windows.Interactivity.TriggerBase 	  Actions. 6
  0System.Windows.Interactivity.InvokeCommandAction
   
  Command �� *PasswordChangedCommand+ 
  CommandParameter �� $
 FloatingPasswordBox���� -    ��Name$ ShowPasswordTextBox��$��0q�$��0q�$y�Hidden=�$ Mật khẩu��
 � � �
 � � �$��Bottom=�#��[ $ -1������ *
PassWord+ �� UpdateSourceTrigger$ PropertyChanged=�.��� -    �Name$ SHPasswordButton��$��20��$��20��$��Bottom=�$��Right=�$��0q�.+��� -    ��Name$ ShowPasswordButton��$��Bottom=�$��Right=�$��0q�$��20��$��20������ *ShowPasswordCommand+��Z� ��Z� ��`�   MultiBindingConverter `� 	Converter# [ .1��� $
 FloatingPasswordBox���� $
 ShowPasswordTextBox���� $
 SHPasswordButton��.��  $��Center=�$ EyeOff=�$��Center=����� *
EyeColor+$ PropertyChanged=��� -   $ HiddenPasswordButton��$y�Hidden=�$��Bottom=�$��Right=�$��0q�$��20��$��20������ *HiddenPasswordCommand+��Z� ��Z� ��`� # [ .1��� $
 FloatingPasswordBox���� $
 ShowPasswordTextBox���� $
 SHPasswordButton��.��  $��Center=�$	 Eye=�$��Center=����� *
EyeColor+$ PropertyChanged=�� $��2��$��0 2 0 5q� � ColumnDefinitions �� �� .+�� $��0��.+��� $��0q� �� 	IsDefault .  $  MaterialDesignRaisedAccentButton#��[ $	��100��
����  �
�������  � ToolTip$5  /Resource name: MaterialDesignRaisedAccentButton��$��Đăng nhập������ *LoginWindowCommand+���� $
 loginWindow��� $��1��.+��� 
�������#��[ $	��100��
��� � �$5  /Resource name: MaterialDesignRaisedAccentButton��$��Thoát������ *CloseWindowCommand+���� $
 loginWindow��