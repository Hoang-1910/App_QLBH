   M S B A M L   `   `   `  ���� ?  ;QLBH, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:QLBH.UserControlQQLBH.UserControlQ  $    QLBH.UserControlQ.ControlBarUC   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     1localclr-namespace:QLBH.UserControlQ     c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  -   $��ucControlBar��   ControlBarVM  � DataContext#  [  .  (System.Windows.Interactivity.Interaction   Triggers /  )System.Windows.Interactivity.EventTrigger     	EventName$ MouseLeftButtonDown��.  (System.Windows.Interactivity.TriggerBase   Actions. 6  0System.Windows.Interactivity.InvokeCommandAction     Command �� *MouseMoveWindowCommand+   CommandParameter ��  �� ElementName$ ucControlBar��.��� .+�(  "MaterialDesignThemes.Wpf.ColorZone     Mode$ Accent=�.��]� .+��� $��/Images/iphone-64.ico��$��20 0 0 0q�$��20���� $��Right=�
������  �� Orientation$ 
Horizontal=�	 � 	Resources	 
 �� 
TargetType �� Property �� Value��%H   '��       �� "
 ��.���  � ��$ 1 1 1 1q���  � ��$ 50��.+��� -    ��Name$ MinimizeButton�� � ToolTip$ Minimize��
��� � �
��� � ���0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ WindowMinimize=����� *MinimizeWindowCommand+���� $ ucControlBar���� -   $ 
SizeButton��
��� � �
��� � ����� *
KindIcon+ �� UpdateSourceTrigger$ PropertyChanged=����� *MaximizeWindowCommand+���� $ ucControlBar���� -   $ CloseButton��$ Close��
��� E��
��� E����  $ WindowClose=����� *CloseWindowCommand+���� $ ucControlBar���� $
��Left=�$��35��$ 
Horizontal=�.+��� $��Center=�$��16 0 0 0q�$��Center=����� *Tag+$ ucControlBar��