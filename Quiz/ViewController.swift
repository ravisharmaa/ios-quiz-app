//
//  ViewController.swift
//  Quiz
//
//  Created by Ravi Bastola on 12/5/17.
//  Copyright © 2017 Ravi Bastola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String]  =  [
        "what is 7+7",
        "what is the capital of Nepal?",
        "what is your age?"
    ]
    
    let answers: [String] = [
        "14",
        "Kathmandu",
        "26"
    ]
    
    var currentQuestionIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    
    @IBAction func showNextQuestion(_ sender: UIButton){
        
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text  =   question
        answerLabel.text    =   "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String  = answers[currentQuestionIndex]
        answerLabel.text    = answer
    }
    
    
    
    

}

