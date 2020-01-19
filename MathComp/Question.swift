//
//  Question.swift
//  MathComp
//
//  Created by Ahmad Dzuizz Annajib on 5/1/20.
//  Copyright © 2020 Dzuizzapps. All rights reserved.
//

import Foundation

enum QuestionType: String, Decodable {
    case multipleChoice
    case writing
}

class Question: Decodable {
    var question:String = ""
    var availableAnswer: [String] = [""]
    var correctAnswer: String = ""
    var userAnswer: String? = nil
    var type: QuestionType = .multipleChoice
    
}

class QuestionContainer: Decodable {
    var questions: [Question] = [Question]()
}
