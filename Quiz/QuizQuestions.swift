//
//  QuizQuestions.swift
//  T
//
//  Created by Cameron Slaughter on 12/15/25.
//

import Foundation

struct QuizQuestions {
    let question: String
    let answers: [String]
    let correctAnswer: [String]
}

struct QuizDatabase {
    static func getQuestions(for topic: Topic) -> [QuizQuestions] {
        switch topic.name{
        case "ECB Intro" :
            return [
                QuizQuestions(
                    question: "Do you currently own or operate a business?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes", "No"]
                    ),
                QuizQuestions(
                    question: "Is you business legally registerd with the State?",
                    answers: ["Yes","No",],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Do you have an EIN?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Do you have a business bank account?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Have you established business credit previously?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Do you know your business credit scores(D&B,Experian,Equifax)?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Do you currently have business tradelines?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Do you understand business strcutre and compliance?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                ),
                QuizQuestions(
                    question: "Do you understand busness credit reptorting agencies?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                ),
                QuizQuestions(
                    question: "Do you understand vender vs revolving accounts?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                ),
                QuizQuestions(
                    question: "Do you understand funding readiness requirements?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                ),
                QuizQuestions(
                    question: "What is your primary goal for joining this program?",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                ),
                QuizQuestions(
                    question: "What type of funding are you hoping to access?",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                ),
                QuizQuestions(
                    question: "What would success look like for you at the end of this program?:",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                ),
                
            ]
        case "ECB Mid" :
            return [
                QuizQuestions(
                    question: "Are you attending sessions consistently?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "Are you completing required setup steps between sessions",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Do you understand business credit systems?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                ),
                QuizQuestions(
                    question: "Do you understand vendor account setup?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                ),
                QuizQuestions(
                    question: "do you understand funding preparation?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                ),
                QuizQuestions(
                    question: "Have you registered or updated your business filings?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Have you opened a business bank account?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Have you applied for vendor tradelines?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "Have you pulled your business credit reports?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                ),
                QuizQuestions(
                    question: "What has been the most helpful so far?",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                ),
                QuizQuestions(
                    question: "What is still confusing or challeging?",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                ),
                QuizQuestions(
                    question: "Do you feel supported by facillitators and resources?",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                ),
               
            ]
        case "ECB Final" :
            return [
                QuizQuestions(
                    question: "Did you complete the Entrepreneure Credit Blueprint program?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "Did you complete all required setup steps?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "Is your business fully compliant?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "Does your business have a open bank account?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "Is your business credit profile established?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "Have you established vendor or revolving tradelines?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "Have you subbmitted funding applications?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "Number of business tradelines established",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                    ),
                QuizQuestions(
                    question: "Funding amount pursued or secured",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                    ),
                QuizQuestions(
                    question: "Are you confident bulding business credit?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                    ),
                QuizQuestions(
                    question: "Are you confident preparing funding applications?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                    ),
                QuizQuestions(
                    question: "Are you confident separating business and personal finances?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                    ),
                QuizQuestions(
                    question: "Overall value of this program",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                    ),
                QuizQuestions(
                    question: "Would you reccommend this program to other entrepreneurs?",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                    ),
                QuizQuestions(
                    question: "What is your next business goal?",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                    ),
                
            ]
        case "1 Year Post" :
            return [
                QuizQuestions(
                    question: "What is your favourite color",
                    answers: ["Red","Blue","Green","Black"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"],
                    )
            ]
        default:
            return []
        }
    }
}

//nani 1
