   M S B A M L   `   `   `  ���� @  <Lucky, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:LuckyLucky      Lucky.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     %localclr-namespace:Lucky       � WindowState$  	Maximized=� � WindowStyle$
 None=� � Title$ 
MainWindow��   Image.default#��[  $
��1920��$
��1080�� � 	Resources  	 Opend	 W� To g� Duration �� 
TargetName �� TargetProperty	 t� To 	 Close  Turn	 g� 	BeginTime
 O� Value g� FillBehavior��%�  &	       &	 �    &	 8    �� .��W� $	 -18X�$ 0:0:1D�$ trans1��$ Angle�t� $ 500 235 0 0X�$ 0:0:1D�$
 car1��$ Margin�W� $	 -11X�$ 0:0:1D�$ trans2��$ Angle�t� $ 550 230 0 0X�$ 0:0:1D�$
 car2��$ Margin�W� $ -5X�$ 0:0:1D�$ trans3��$ Angle�t� $ 600 225 0 0X�$ 0:0:1D�$
 car3��$ Margin�W� $ 5X�$ 0:0:1D�$ trans5��$ Angle�t� $ 0 225 600 0X�$ 0:0:1D�$
 car5��$ Margin�W� $ 11X�$ 0:0:1D�$ trans6��$ Angle�t� $ 0 230 550 0X�$ 0:0:1D�$
 car6��$ Margin�W� $ 18X�$ 0:0:1D�$ trans7��$ Angle�t� $ 0 235 500 0X�$ 0:0:1D�$
 car7��$ Margin��� -   .��W� $ 0X�$ 0:0:1D�$ trans1��$ Angle�t� $ 668 227 0 0X�$ 0:0:1D�$
 car1��$ Margin�W� $ 0X�$ 0:0:1D�$ trans2��$ Angle�t� $ 668 227 0 0X�$ 0:0:1D�$
 car2��$ Margin�W� $ 0X�$ 0:0:1D�$ trans3��$ Angle�t� $ 668 227 0 0X�$ 0:0:1D�$
 car3��$ Margin�W� $ 0X�$ 0:0:1D�$ trans5��$ Angle�t� $ 0 227 668 0X�$ 0:0:1D�$
 car5��$ Margin�W� $ 0X�$ 0:0:1D�$ trans6��$ Angle�t� $ 0 227 668 0X�$ 0:0:1D�$
 car6��$ Margin�W� $ 0X�$ 0:0:1D�$ trans7��$ Angle�t� $ 0 227 668 0X�$ 0:0:1D�$
 car7��$ Margin��� .��U� -   $	 0:0:0X�$ 0:0:3D�$
 car4��$V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�.\��� $
 1Q��� $
 -1Q��� $
 1Q��� $
 -1Q��� $
 1Q��� $
 -1Q��� $
 1Q��� $
 -1Q�W� $	 300X�$ 0:0:3D�$
 Stop=�$
 car4��$ Width�W� $	 500X�$ 0:0:3D�$
 Stop=�$
 car4��$ Height�.��� -    �Name$
 Root��.+��� -   $��50��$��50��  Style.EndButton#��[ $��Right=�$	��Top=��� -    ��Name$
 car1��$	��200��$	��400��  	Image.car#��[ $��668 227 0 0q�$
��Left=�$	��Top=�z�V� .~��� -   
trans1�� �� Angle$ 0Q� �� CenterX$	 200Q� �� CenterY$	 400Q��� -   $
 car2��$	��200��$	��400��#��[ $��668 227 0 0q�$
��Left=�$	��Top=�z�V� .~��� -   
trans2��$ 0Q�$	 200Q�$	 400Q��� -	   $
 car3��$	��200��$	��400��#��[ $��668 227 0 0q�$
��Left=�$	��Top=�z�V� .~��� -
   
trans3��$ 0Q�$	 200Q�$	 400Q��� -   $
 car4��$	��200��$	��400��#��[ $��	0 227 0 0q�$��Center=�$	��Top=� J� RenderTransformOrigin$ 0.5,0.5&�z�V� .~���  �� ScaleX$ 1Q� �� ScaleY$ 1Q��� -   $
 car5��$	��200��$	��400��#��[ $��0 227 668 0q�$��Right=�$	��Top=�z�V� .~��� -   
trans5��$ 0Q�$ 0Q�$	 400Q��� -   $
 car6��$	��200��$	��400��#��[ $��0 227 668 0q�$��Right=�$	��Top=�z�V� .~��� -   
trans6��$ 0Q�$ 0Q�$	 400Q��� -   $
 car7��$	��200��$	��400��#��[ $��0 227 668 0q�$��Right=�$	��Top=�z�V� .~��� -   
trans7��$ 0Q�$ 0Q�$	 400Q��� -    ��Name$ StartBtn��  Style.RoutineButton#��[ $	��200��$��50��$��Bottom=�$��	0 0 0 100q�$��开始翻牌���� -   $ LuckyCar��$	��300��$	��500��$��Center=�$��	0 235 0 0q�$	��Top=�$y�	Collapsed=��� -   $ EndBtn��#��[ $	��200��$��60��$��Bottom=�$��0 0 0 40q�$y�	Collapsed=�