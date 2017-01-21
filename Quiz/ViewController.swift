//
//  ViewController.swift
//  Quiz
//
//  Created by Matthew Olker on 1/18/17.
//  Source: molker/csc2310/Quiz/Quiz
//  Copyright © 2017 Matthew Olker. All rights reserved.
//
//  Creates a quiz with 3 questions and 3 answers
//  and uses 2 buttons to show the questions and
//  answers

import UIKit

class ViewController: UIViewController {
    //The labels used to show the questions
    //and answers
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    //array of questions
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    //array of answers
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    //index of which question it's on
    var currentQuestionIndex: Int = 0
    
    //function the "Show Next Question" button uses
    //It makes sure if it is on the last question that 
    //it loops back to the first one again
    //Also when the question changes it puts the answer
    //label back to the ???
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
    
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    //function the "Show Answer" button uses
    //It makes sure the label shows the correct answer
    //for the corresponding question being shown
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    //overrides(customizes) the swift implementation of
    //viewDidLoad so when the program loads, the question
    //label shows a question instead of ???
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

}

