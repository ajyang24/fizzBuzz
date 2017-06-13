//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Andrew Yang on 6/7/17.
//  Copyright © 2017 Andrew Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myNumberLabel: UILabel!
    
    var number = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myNumberLabel.text = "\(number)"
        
        
    }
   
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer)
    {
    number += 1
    print("Screen has been tapped.")
        
    if number % 15 == 0
    {
        print("Fizz Buzz")
        view.backgroundColor = UIColor.cyan
        myNumberLabel.text = "Fizz Buzz"
        myNumberLabel.font = myNumberLabel.font.withSize(83)
    }
    else if number % 3 == 0
    {
        print("Fizz")
        view.backgroundColor = UIColor.green
        myNumberLabel.text = "Fizz"
        myNumberLabel.font = myNumberLabel.font.withSize(142)

    }
    else if number % 5 == 0
    {
        print("Buzz")
        view.backgroundColor = UIColor.red
        myNumberLabel.text = "Buzz"
        myNumberLabel.font = myNumberLabel.font.withSize(142)

    }
    else
    {
        view.backgroundColor = UIColor.black
        myNumberLabel.text = "\(number)"
        myNumberLabel.font = myNumberLabel.font.withSize(142)
    }
        
   
        
    
    }
    @IBAction func longPressAction(_ sender: UILongPressGestureRecognizer)
    {
    number = 0
    view.backgroundColor = UIColor.black
    myNumberLabel.text = "\(number)"
    myNumberLabel.font = myNumberLabel.font.withSize(142)
    }
}

