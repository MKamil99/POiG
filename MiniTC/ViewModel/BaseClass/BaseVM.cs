﻿using System.ComponentModel;

namespace MiniTC.ViewModel
{
    public class BaseVM : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        protected void onPropertyChanged(params string[] namesOfProperties) //zmiana właściwości
        {
            if (PropertyChanged != null)
            {
                foreach (var prop in namesOfProperties)
                { 
                    PropertyChanged(this, new PropertyChangedEventArgs(prop)); 
                }
            }
        }
    }
}