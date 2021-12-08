//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Matthew on 10/8/21.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", bunny = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with you friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on our own terms."
        case .bunny:
            return "You love anything that's soft. You are healthy and full of energy"
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}

var questions: [Question] = [
  Question(
    text: "Which food do you like the most?",
    type: .single,
    answers: [
      Answer(text: "Steak", type: .dog),
      Answer(text: "Fish", type: .cat),
      Answer(text: "Carrots", type: .bunny),
      Answer(text: "Corn", type: .turtle)
    ]
  ),
    
  Question(
    text: "Which activities do you enjoy?",
    type: .multiple,
    answers: [
      Answer(text: "Swimming", type: .turtle),
      Answer(text: "Sleeping", type: .cat),
      Answer(text: "Cuddling", type: .bunny),
      Answer(text: "Eating", type: .dog)
    ]
  ),

  Question(
    text: "How much do you enjoy car rides?",
    type: .ranged,
    answers: [
      Answer(text: "I dislike them", type: .cat),
      Answer(text: "I get a little nervous", type: .bunny),
      Answer(text: "I barely notice them", type: .turtle),
      Answer(text: "I love them", type: .dog)
    ]
  )
]

var questionIndex = 0

