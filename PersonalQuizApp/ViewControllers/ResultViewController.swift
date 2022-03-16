//
//  ResultViewController.swift
//  PersonalQuizApp
//
//  Created by MacBook on 15.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    //MARK: IBOutlets
    @IBOutlet var choosenAnimalLabel: UILabel!
    @IBOutlet var choosenAnimalDescriptionLabel: UILabel!
    var answer: [Answer]!
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        choosenAnimalLabel.text = "Вы - \(getChoosenAnimal(from: answer).rawValue)!"
        choosenAnimalDescriptionLabel.text = getChoosenAnimal(from: answer).definition
    }

    //MARK: Private methods
    private func getChoosenAnimal(from answer: [Answer]) -> Animal {
        var animal: [Animal: Int] = [:]
        var choosenAnimal: Animal?
        
        answer.forEach({ animal[$0.animal] = (animal[$0.animal] ?? 1 ) + 1 })
        choosenAnimal = animal.sorted(by: { $0.value > $1.value }).first?.key
        
        return choosenAnimal ?? .dog
    }
    
}
