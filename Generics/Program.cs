﻿using System;
using System.Collections.Generic;

namespace Generics
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<string> sehirler = new List<string>();
            sehirler.Add("İstanbul"); 
            sehirler.Add("İstanbul");
            sehirler.Add("İstanbul");
            sehirler.Add("İstanbul");
            sehirler.Add("İstanbul");

            Console.WriteLine(sehirler.Count);
            MyList<string> sehirler2 = new MyList<string>();
            sehirler2.Add("İstanbul"); 
            sehirler2.Add("İstanbul");
            sehirler2.Add("İstanbul");
            sehirler2.Add("İstanbul");
            sehirler2.Add("İstanbul");
            sehirler2.Add("İstanbul");

            Console.WriteLine(sehirler2.Count);
            
        }
    }
    class MyList<T>   //Generic class
    {
        T[] _array;
        T[] _temparray;

        public MyList()
        {
            _array = new T[0];
        }
        public void Add(T item)
        {
            _temparray = _array; 
            _array = new T[_array.Length+1];
            for (int i = 0; i < _temparray.Length; i++)
            {
                _array[i] = _temparray[i];
            }
            _array[_array.Length - 1] = item;

        }

      

        public int Count
        {
            get { return _array.Length; }
           
        }

    }
}
