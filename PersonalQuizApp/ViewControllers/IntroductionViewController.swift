//
//  ViewController.swift
//  PersonalQuizApp
//
//  Created by MacBook on 15.03.2022.
//

import UIKit

class IntroductionViewController: UIViewController {
    //MARK: Private Properties
    private let questions = Question.getQuestions()
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: IBActions
    @IBAction func unwind(for segue: UIStoryboardSegue) {}
}

