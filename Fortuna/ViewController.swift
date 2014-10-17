//
//  ViewController.swift
//  Fortuna
//
//  Created by shuson on 17/10/14.
//  Copyright (c) 2014 nevermoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var quotationTextView: UITextView!
    
    @IBAction func rootViewTapped(sender: UITapGestureRecognizer) {
        displayRandomQuote()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        displayRandomQuote()
        //debug()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func debug(){
        println("Loading views in Swift iOS 8")
        println("viewDidLoad quotationTextView: \(quotationTextView)")
    }
    
    override func awakeFromNib() {
        // The super method doesn't do anything, but we call it anyway.
        super.awakeFromNib()
    }
    
    func displayRandomQuote() {
        var delegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        // quotes = radomly choose positiveQuotations or negativeQuotations
        // quote = randomly choose an element from quotes
        var quotes = delegate.positiveQuotes + delegate.negativeQuotes
        var rand = arc4random_uniform(UInt32(quotes.count))
        var quote = quotes[Int(rand)]
        
        quotationTextView.text = quote
        quotationTextView.editable = false
        quotationTextView.selectable = false
    }

}

