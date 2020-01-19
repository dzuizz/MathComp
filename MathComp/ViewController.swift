//
//  ViewController.swift
//  MathComp
//
//  Created by Ahmad Dzuizz Annajib on 5/1/20.
//  Copyright © 2020 Dzuizzapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var QuestionCollectionView: UICollectionView!
    var questionContainer: QuestionContainer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let layout = QuestionCollectionView.collectionViewLayout as? UICollectionViewFlowLayout{
//            layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
//        }
        // Do any additional setup after loading the view.
        
        //read frm file to data
        let bundle = Bundle.main
        if let url = bundle.url(forResource: "listOfQuestion", withExtension: "json"){
            
            
            do {
                var data = try? Data(contentsOf: url)
                questionContainer = try JSONDecoder().decode(QuestionContainer.self, from: data!)
                 print(questionContainer)
                
                QuestionCollectionView.delegate = self
                QuestionCollectionView.dataSource = self

            } catch {
                print(error)
                // print error here.
            }
        }

    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        super.didRotate(from: fromInterfaceOrientation)
        QuestionCollectionView.reloadData()
    }
}

extension ViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questionContainer?.questions.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuestionCollectionViewCell", for: indexPath) as! QuestionCollectionViewCell
        let question = questionContainer?.questions[indexPath.row]
 
        cell.QILabel.text = question?.question
        cell.Q1A1Btn.setTitle(question?.availableAnswer[0], for: .normal)
        cell.Q1A2Btn.setTitle(question?.availableAnswer[1], for: .normal)
        cell.Q1A3Btn.setTitle(question?.availableAnswer[2], for: .normal)
        cell.Q1A4Btn.setTitle(question?.availableAnswer[3], for: .normal)
        
        let screenWidth = UIScreen.main.bounds.size.width
        cell.ViewCellWidth.constant = screenWidth - (20 * 2)
        return cell
    }
    
    
}
extension ViewController:UICollectionViewDelegate {
    
}
