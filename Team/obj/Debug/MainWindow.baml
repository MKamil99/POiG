   M S B A M L   `   `   `  ����C  ?TeamMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:TeamMVVM.ViewModelTeamMVVM.ViewModel  5   	   #clr-namespace:TeamMVVMTeamMVVM  5   	       TeamMVVM.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   )vm clr-namespace:TeamMVVM.ViewModel  5   	   "localclr-namespace:TeamMVVM  5   	     � Title$
  Team��5
   	   $	��450��6   $	��800��6#    � 
ResizeMode$ NoResize=�6/    � 	Resources 5         TeamMVVM.ViewModel.Playing   playing��%   &	          5   
   6   5      .��5      � -   5         �Name$ GridRoot��5       � DataContext# [  6    � RowDefinitions 5   
   �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $
��2.5* �6   �� 5      $��5* �6   .+�5   
   �� .+�5      �� $��Imię:��6   $��15q�6%   �� 5      $��	Nazwisko:��6   $��15q�6)   �� 5      $��Wiek:��6   $��15q�6%   �� 5      $��Waga:��6   $��15q�6%   5      �� 5   
   $��1��6   .+�5          TeamMVVM.TextBoxForName  -   5          Name$ textBoxFirstName��5    #   $��Center=�6=   $
��Left=�6X   $	��150��6s   $��12(�5!   #   $��15q�61      Text 6=   �� 	 �� Path$	 CurrentFirstName�
 �� Mode$
 TwoWay=�  5"      -   5        $ textBoxLastName��5"   #   $��Center=�6<   $
��Left=�6W   $	��150��6r   $��12(�5#   #   $��15q�61    6=   �� $	 CurrentLastName�$
 TwoWay=��� 5$      -   5         ��Name$ comboBoxAge��5$      $��50��6,   $��15,15q�67   $
��Left=�6F   $��Center=�6a   ��6|   �� *Ages+ �� SelectedValue 6�   �� $	 
CurrentAge�$
 TwoWay=��� 5%       �� Orientation$ 
Horizontal=�6   $��Center=�62   .+�5&      �� -   5         ��Name$ sliderWeight��5&      $��15q�6/   $	��150��6;    � Minimum$ 55Q�5'   I    � Maximum$	 100Q�6V    �� TickFrequency$	 0.5Q�5(       �� IsSnapToTickEnabled .  � Value 5'      �� $	 CurrentWeight�$
 TwoWay=�5(   )   �� 5)      $��Center=�6   ��5*      �� $	 Value� �� ElementName$ sliderWeight���� 5+      $��Center=�6   $��kg��63   5,      5-      � 5.   
   $��1��6   $��2��6    5/      �� 50      $��1* �6#   �� 51      $��1* �6#   �� 52      $��1* �6#   .+�54      �� -   5         ��Name$ 	buttonAdd��54      $��30��6(   $��75��64   $	��Top=�6?   $��0��6W   $��Dodaj��6g   $��10q�6w   ��6�   �� *	AddPlayer+�� 55      -   5        $ buttonModify��55      $��30��6+   $��75��67   $	��Top=�6B   $��1��6Z   $��	Modyfikuj��6j   $��10q�6~   ��6�   �� *ModifyPlayer+�� 56      -   5        $ buttonRemove��56      $��30��6+   $��75��67   $	��Top=�6B   $��2��6Z   $��Usuń��6j   $��10q�6y   ��6�   �� *RemovePlayer+57      �� 58   
   -	   5         ��Name$ listBoxPlayers��58      $��2��6*   $��2��6;   ��6K   �� *	Players+ �� SelectedIndex 6k   �� *CurrentIndex+.  (System.Windows.Interactivity.Interaction   Triggers 59      /  )System.Windows.Interactivity.EventTrigger  5:         	EventName$ SelectionChanged��6!   .  (System.Windows.Interactivity.TriggerBase   Actions. 5;      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6,   �� *
CopyPlayer+5<      5>      5?       5@        5A   
   $ Closing��6   . 5B         6$   �� $ GridRoot��$	 DataContext.SaveTeam�5C      5E      