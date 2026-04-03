//
//  QuizQuestions.swift
//  T
//
//  Created by Cameron Slaughter on 12/15/25.
//

import Foundation

struct QuizQuestions: Codable {
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
                    question: "What is your age group?",
                    answers: ["18-24","25-34","35-44","45-54","55-64","65+"],
                    correctAnswer: ["18-24","25-34","35-44","45-54","55-64","65+"]
                    ),
                QuizQuestions(
                    question: "How do you identify racially or ethnically?",
                    answers: ["Black or African American","Hispanic or Latino","White or Caucasian","Asian or Pacific Islander","Native American or Alsaskan Native","Middle Eastern or North African","Multiracial or Mixed","Prefer not to say","Other"],
                    correctAnswer: ["Black or African American","Hispanic or Latino","White or Caucasian","Asian or Pacific Islander","Native American or Alsaskan Native","Middle Eastern or North African","Multiracial or Mixed","Prefer not to say","Other"]
                ),
                QuizQuestions(
                    question: "What is your current employment status?",
                    answers: ["full-time entrepreneur","self-employed","employed full-time while running a side business","employed part time while running a business","Unemployed and focused on launching my business","retired and exploring entrepreneurship"],
                    correctAnswer: ["full-time entrepreneur","self-employed","employed full-time while running a side business","employed part time while running a business","Unemployed and focused on launching my business","retired and exploring entrepreneurship"]
                ),
                QuizQuestions(
                    question: "What county do you currently live in?",
                    answers: ["Wayne County, MI","Macomb County, MI","Oakland County, MI","Washtenaw County, MI"],
                    correctAnswer: ["Wayne County, MI","Macomb County, MI","Oakland County, MI","Washtenaw County, MI"]
                ),
                QuizQuestions(
                    question: "What is your highest level of education completed?",
                    answers: ["High school diploma or GED","Some college(no degree","Associate degree","Bachelor's degree","Master's degree or highter","Trade or vocational certification", "prefer not to say"],
                    correctAnswer: ["High school diploma or GED","Some college(no degree","Associate degree","Bachelor's degree","Master's degree or highter","Trade or vocational certification", "prefer not to say"]
                ),
                QuizQuestions(
                    question: "What city and state is your business located in or operating from?",
                    answers: ["Wayne County, MI","Macomb County, MI","Oakland County, MI","Washtenaw County,MI","Another Michigan County","Outside of Michigan"],
                    correctAnswer: ["Wayne County, MI","Macomb County, MI","Oakland County, MI","Washtenaw County,MI","Another Michigan County","Outside of Michigan"]
                ),
                QuizQuestions(
                    question: "How is your business currently structured?",
                    answers: ["Sole proprietorship","LLC","S-Corporation","C-Corporation","Partnership","Nonprofit Organization","My business is not yet formally registered"],
                    correctAnswer: ["Sole proprietorship","LLC","S-Corporation","C-Corporation","Partnership","Nonprofit Organization","My business is not yet formally registered"]
                ),
                QuizQuestions(
                    question: "What industry does your business operate in?",
                    answers: ["Retail or e-commerce","Food, beverage, Restaurant", "Health, wellness, or beauty","Construction, trades, or real estate", "Professional Services","Creative arts","Technology or digital services","Transportation"],
                    correctAnswer: ["Retail or e-commerce","Food, beverage, Restaurant", "Health, wellness, or beauty","Construction, trades, or real estate", "Professional Services","Creative arts","Technology or digital services","Transportation"]
                ),
                QuizQuestions(
                    question: "How long has your business been in operation?",
                    answers: ["Not yet launched","Less than 1yr", "1-2 years","3-5 years","More than 5yrs"],
                    correctAnswer: ["Not yet launched","Less than 1yr", "1-2 years","3-5 years","More than 5yrs"]
                ),
                QuizQuestions(
                    question: "What is your current annual gross business revenue?",
                    answers: ["$0","$1-24,999", "$25,000-49,999","$50,000-99,999","$100,000-249,999","$250,000-499,99","$500,000+"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                ),
                QuizQuestions(
                    question: "How many employees or contractors does your business currently have?",
                    answers: ["Just me","1-2(including me)", "3-5","6-10","11-25" ,"More than 25"],
                    correctAnswer: ["Just me","1-2(including me)", "3-5","6-10","11-25" ,"More than 25"]
                ),
                QuizQuestions(
                    question: "Do you have an Employer Identification Number(EIN) for your business?",
                    answers: ["Yes","No","I don't know what a EIN is"],
                    correctAnswer: ["Yes","No","I don't know what a EIN is"]
                ),
                QuizQuestions(
                    question: "Do you currently have a dedicated business bank account separate from your personal account?",
                    answers: ["Yes","No","I'am not sure if i need a separate account"],
                    correctAnswer: ["Yes","No","I'am not sure if i need a separate account"]
                ),
                QuizQuestions(
                    question: "Have you ever applied for business financing of any kind?",
                    answers: ["Yes(approved)","Yes(denied)","Yes(did not complete application)","No","I didn't know i could apply"],
                    correctAnswer: ["Yes(approved)","Yes(denied)","Yes(did not complete application)","No","I didn't know i could apply"]
                ),
                QuizQuestions(
                    question: "How would you rate your current knowledge of business credit going into this program?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                ),
                
            ]
        case "ECB Mid" :
            return [
                QuizQuestions(
                    question: "Overall, how satisfied are you with the program content and delivery so far?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                    ),
                QuizQuestions(
                    question: "How would you rate the quality and expertise of the instructors and guest speakers?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                ),
                QuizQuestions(
                    question: "Which session or topic has been the most valuable to you so far?",
                    answers: ["How to structure your business for funding success","Key differences between banks, fintechs, and CDFIs", "Step-by-step loan and credit card application breakdown","Top reasons business credit applications are denied","Documents needed to apply and how to prepare them", "Introducation to no-doc loan options"],
                    correctAnswer: ["How to structure your business for funding success","Key differences between banks, fintechs, and CDFIs", "Step-by-step loan and credit card application breakdown","Top reasons business credit applications are denied","Documents needed to apply and how to prepare them", "Introducation to no-doc loan options"]
                ),
                QuizQuestions(
                    question: "Are the weekly Q&A sessions giving you enough opportunity to get your questions answered?",
                    answers: ["Yes","Mostly", "No", "I have not participated in Q&A sessions yet"],
                    correctAnswer: ["Yes","Mostly", "No", "I have not participated in Q&A sessions yet"]
                ),
                QuizQuestions(
                    question: "How useful have the templates, checklists and documentation guides been so far?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                ),
                QuizQuestions(
                    question: "How well does the hybrid format work for your schedule and learning style?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                ),
                QuizQuestions(
                    question: "Which topic do you feel needs more time or deeper explanation in teh remaining sessions?",
                    answers: ["Business credit scoring and how it works","Specific lender requirements and eligibility criteria","How to read and improve your business financials", "No-doc and alternative financing options","How to use business credit as a wealth-building strategy","Everything has been covered"],
                    correctAnswer: ["Business credit scoring and how it works","Specific lender requirements and eligibility criteria","How to read and improve your business financials", "No-doc and alternative financing options","How to use business credit as a wealth-building strategy","Everything has been covered"]
                ),
                QuizQuestions(
                    question: "Have you taken any action steps toward building or improving your business credit since the program began?",
                    answers: ["Yes","No","I am unsure what steps to take"],
                    correctAnswer: ["Yes","No","I am unsure what steps to take"]
                ),
                QuizQuestions(
                    question: "How would you rate the peer community and networking opportunities within the cohort?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                ),
                QuizQuestions(
                    question: "HOw confident do you feel right now about your ability to apply for business credit after completing the program?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                ),
                QuizQuestions(
                    question: "What best describes how you feel about the pace of the programs so far?",
                    answers: ["just right","too fast","Slow","inconsistent"],
                    correctAnswer: ["just right","too fast","Slow","inconsistent"]
                ),
                QuizQuestions(
                    question: "Which remaining program topic are you most looking forward to?",
                    answers: ["Building business credit","Live applications","Industry specific credit","Selecting the right credit products","All of the above"],
                    correctAnswer: ["Building business credit","Live applications","Industry specific credit","Selecting the right credit products","All of the above"]
                ),
               
            ]
        case "ECB Final" :
            return [
                QuizQuestions(
                    question: "Overall, how would you rate your experience in the entrepreneur credit blueprint?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                    ),
                QuizQuestions(
                    question: "How much did your knowledge of business credit improve as a result of this program?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                    ),
                QuizQuestions(
                    question: "Which program component delivered the most value for you?",
                    answers: ["Expert led workshops","Business credit roadmap","Application walkthroughs for lenders","Financial templates and documentation checklist","Peer community and networking","Local funding resource guide","Guidance on selecting the right credit products"],
                    correctAnswer: ["Expert led workshops","Business credit roadmap","Application walkthroughs for lenders","Financial templates and documentation checklist","Peer community and networking","Local funding resource guide","Guidance on selecting the right credit products"]
                    ),
                QuizQuestions(
                    question: "How prepared do you feel to strucutre your business for funding success after completing this program?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                    ),
                QuizQuestions(
                    question: "Have you taken any concrete steps toward applying for business credit or financing since staring the program?",
                    answers: ["Yes","No"],
                    correctAnswer: ["Yes","No"]
                    ),
                QuizQuestions(
                    question: "How effective were the application walkthroughs and real lender examples in building your confidence?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                    ),
                QuizQuestions(
                    question: "Do you feel more confident approaching banks, fintechs, or CDFIs for financing after this program?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                    ),
                QuizQuestions(
                    question: "Was the 4-week duration of the program appropriate for the volume and depth of content covered?",
                    answers: ["Yes","Too short","Too long","Undecided"],
                    correctAnswer: ["Yes","Too short","Too long","Undecided"]
                    ),
                QuizQuestions(
                    question: "How well did the hybrid format meet your needs over the full program?",
                    answers: ["1","2","3","4","5"],
                    correctAnswer: ["1","2","3","4","5"]
                    ),
                QuizQuestions(
                    question: "Would you be interested in an advanced or follow-up program to continue building on what your learned?",
                    answers: ["Yes","Maybe", "No"],
                    correctAnswer: ["Yes", "Maybe", "No"]
                    ),
                QuizQuestions(
                    question: "How would you describe the return on your time investment in this program",
                    answers: ["Excellent","Good", "Fair","Poor"],
                    correctAnswer: ["Excellent","Good", "Fair","Poor"]
                    ),
                QuizQuestions(
                    question: "Are you confident separating business and personal finances?",
                    answers: ["Yes","Kind of", "No"],
                    correctAnswer: ["Yes", "Kind of", "No"]
                    ),
                QuizQuestions(
                    question: "What is the most imporatnt improvment you would recommend for future cohorts?",
                    answers: ["More Hands on","More in depth coverage of financing","More networking and collaboration time","More one-on-one feedback","Longer program","Better access to post program resources and support"],
                    correctAnswer: ["Red", "Blue", "Green", "Black"]
                    ),
                QuizQuestions(
                    question: "Would you reccommend this program to other entrepreneurs?",
                    answers: ["Yes","Maybe","No"],
                    correctAnswer: ["Yes","Maybe","No"]
                    ),
            ]
        case "Credit Compass Intro" :
            return [
                QuizQuestions(
                            question: "What is your age group?",
                            answers: ["18–24", "25–34", "35–44", "45–54", "55–64", "65 or older", "Prefer not to say"],
                            correctAnswer: ["18–24", "25–34", "35–44", "45–54", "55–64", "65 or older", "Prefer not to say"]
                        ),
                        QuizQuestions(
                            question: "How do you identify racially or ethnically?",
                            answers: ["Black or African American", "Hispanic or Latino/a/x", "White or Caucasian", "Asian or Pacific Islander", "Native American or Alaska Native", "Middle Eastern or North African", "Multiracial or Mixed", "Prefer not to say", "Other"],
                            correctAnswer: ["Black or African American", "Hispanic or Latino/a/x", "White or Caucasian", "Asian or Pacific Islander", "Native American or Alaska Native", "Middle Eastern or North African", "Multiracial or Mixed", "Prefer not to say", "Other"],
                        ),
                        QuizQuestions(
                            question: "What is your current employment status?",
                            answers: ["Employed full-time", "Employed part-time", "Self-employed or freelancer", "Full-time entrepreneur / business owner", "Unemployed and actively job seeking", "Student", "Retired"],
                            correctAnswer: ["Employed full-time", "Employed part-time", "Self-employed or freelancer", "Full-time entrepreneur / business owner", "Unemployed and actively job seeking", "Student", "Retired"]
                        ),
                        QuizQuestions(
                            question: "What county do you currently live in?",
                            answers: ["Wayne County, MI", "Macomb County, MI", "Oakland County, MI", "Washtenaw County, MI", "Another Michigan county", "Outside of Michigan"],
                            correctAnswer: ["Wayne County, MI", "Macomb County, MI", "Oakland County, MI", "Washtenaw County, MI", "Another Michigan county", "Outside of Michigan"]
                        ),
                        QuizQuestions(
                            question: "What is your highest level of education completed?",
                            answers: ["High school diploma or GED", "Some college (no degree)", "Associate degree", "Bachelor's degree", "Master's degree or higher", "Trade or vocational certification", "Prefer not to say"],
                            correctAnswer: ["High school diploma or GED", "Some college (no degree)", "Associate degree", "Bachelor's degree", "Master's degree or higher", "Trade or vocational certification", "Prefer not to say"]
                        ),
                        QuizQuestions(
                            question: "What is your approximate annual household income?",
                            answers: ["Under $15,000", "$15,000 – $29,999", "$30,000 – $49,999", "$50,000 – $74,999", "$75,000 – $99,999", "$100,000 or more", "Prefer not to say"],
                            correctAnswer: ["Under $15,000", "$15,000 – $29,999", "$30,000 – $49,999", "$50,000 – $74,999", "$75,000 – $99,999", "$100,000 or more", "Prefer not to say"]
                        ),
                        QuizQuestions(
                            question: "Have you ever pulled or reviewed your personal credit report?",
                            answers: ["Yes, within the last 6 months", "Yes, within the last 1–2 years", "Yes, but it has been more than 2 years ago", "No, I have never reviewed my credit report", "I did not know I could access my credit report for free"],
                            correctAnswer: ["Yes, within the last 6 months", "Yes, within the last 1–2 years", "Yes, but it has been more than 2 years ago", "No, I have never reviewed my credit report", "I did not know I could access my credit report for free"]
                        ),
                        QuizQuestions(
                            question: "Do you know your current personal credit score?",
                            answers: ["Yes, and it is above 700", "Yes, and it is between 600–699", "Yes, and it is below 600", "I have seen it before but do not know the current number", "No, I do not know my credit score", "I have no credit history / no score"],
                            correctAnswer: ["Yes, and it is above 700", "Yes, and it is between 600–699", "Yes, and it is below 600", "I have seen it before but do not know the current number", "No, I do not know my credit score", "I have no credit history / no score"]
                        ),
                        QuizQuestions(
                            question: "Which of the following credit challenges apply to your current situation?",
                            answers: ["Late or missed payments on my credit report", "High credit card balances or utilization", "Collections or charge-offs on my report", "Errors or inaccurate information on my credit report", "Limited credit history (thin file)", "Identity theft or fraud on my account", "I have no credit accounts at all", "None — my credit is in good standing"],
                            correctAnswer: ["Late or missed payments on my credit report", "High credit card balances or utilization", "Collections or charge-offs on my report", "Errors or inaccurate information on my credit report", "Limited credit history (thin file)", "Identity theft or fraud on my account", "I have no credit accounts at all", "None — my credit is in good standing"]
                        ),
                        QuizQuestions(
                            question: "Have you ever disputed inaccurate or outdated information on your credit report?",
                            answers: ["Yes, and it was resolved in my favor", "Yes, but the dispute was not resolved", "No, but I know I have errors on my report", "No, I have never disputed anything", "I did not know I had the right to dispute information"],
                            correctAnswer: ["Yes, and it was resolved in my favor", "Yes, but the dispute was not resolved", "No, but I know I have errors on my report", "No, I have never disputed anything", "I did not know I had the right to dispute information"]
                        ),
                        QuizQuestions(
                            question: "How familiar are you with the difference between FICO and VantageScore credit scoring systems?",
                            answers: ["Very familiar — I understand how both work", "Somewhat familiar — I have heard of them but do not fully understand", "I have heard the terms but do not know the difference", "I am not familiar with either"],
                            correctAnswer: ["Very familiar — I understand how both work", "Somewhat familiar — I have heard of them but do not fully understand", "I have heard the terms but do not know the difference", "I am not familiar with either"]
                        ),
                        QuizQuestions(
                            question: "What is your primary goal for joining Credit Compass?",
                            answers: ["Understand how credit scores are calculated and improve mine", "Learn how to read and interpret my credit report", "Dispute errors or remove negative items from my report", "Build credit from scratch or recover from a low score", "Protect myself from fraud and identity theft", "Understand settlements, charge-offs, and collections", "Prepare my credit to qualify for a major purchase (home, car, business)"],
                            correctAnswer: ["Understand how credit scores are calculated and improve mine", "Learn how to read and interpret my credit report", "Dispute errors or remove negative items from my report", "Build credit from scratch or recover from a low score", "Protect myself from fraud and identity theft", "Understand settlements, charge-offs, and collections", "Prepare my credit to qualify for a major purchase (home, car, business)"]
                        ),
                        QuizQuestions(
                            question: "How confident are you right now in your ability to manage and improve your personal credit?",
                            answers: ["1 — Not confident at all", "2", "3 — Somewhat confident", "4", "5 — Very confident"],
                            correctAnswer: ["1 — Not confident at all", "2", "3 — Somewhat confident", "4", "5 — Very confident"]
                        ),
                        QuizQuestions(
                            question: "How would you rate your overall knowledge of personal credit going into this program?",
                            answers: ["1 — No knowledge at all", "2", "3 — Basic awareness", "4", "5 — Very knowledgeable"],
                            correctAnswer: ["1 — No knowledge at all", "2", "3 — Basic awareness", "4", "5 — Very knowledgeable"]
                        ),
                        QuizQuestions(
                            question: "How did you hear about Credit Compass?",
                            answers: ["Social media", "Referral from a friend, family member, or colleague", "Community organization or nonprofit", "Email or newsletter", "Event, workshop, or speaking engagement", "Financial institution or lender", "Other"],
                            correctAnswer: ["Social media", "Referral from a friend, family member, or colleague", "Community organization or nonprofit", "Email or newsletter", "Event, workshop, or speaking engagement", "Financial institution or lender", "Other"]
                        ),
                    ]
        case "Credit Compass Mid" :
            return [
                        QuizQuestions(
                            question: "Overall, how satisfied are you with the program content and delivery so far?",
                            answers: ["1 — Very dissatisfied", "2", "3 — Neutral", "4", "5 — Very satisfied"],
                            correctAnswer: ["1 — Very dissatisfied", "2", "3 — Neutral", "4", "5 — Very satisfied"]
                        ),
                        QuizQuestions(
                            question: "How would you rate the quality and expertise of the instructors and guest speakers?",
                            answers: ["1 — Poor", "2", "3 — Average", "4", "5 — Excellent"],
                            correctAnswer: ["1 — Poor", "2", "3 — Average", "4", "5 — Excellent"]
                        ),
                        QuizQuestions(
                            question: "Which topic covered so far has been the most valuable to you?",
                            answers: ["The fundamentals of personal credit", "How to read and understand credit reports", "Dispute letter creation and the dispute process", "Credit-building account recommendations", "Settlements, charge-offs, and dealing with collections", "FICO vs. VantageScore — how scores are calculated", "All topics have been equally valuable"],
                            correctAnswer: ["The fundamentals of personal credit", "How to read and understand credit reports", "Dispute letter creation and the dispute process", "Credit-building account recommendations", "Settlements, charge-offs, and dealing with collections", "FICO vs. VantageScore — how scores are calculated", "All topics have been equally valuable"]
                        ),
                        QuizQuestions(
                            question: "How useful have the program materials, templates, and resources been so far?",
                            answers: ["1 — Not useful at all", "2", "3 — Neutral", "4", "5 — Extremely useful"],
                            correctAnswer: ["1 — Not useful at all", "2", "3 — Neutral", "4", "5 — Extremely useful"]
                        ),
                        QuizQuestions(
                            question: "Are the Q&A sessions giving you enough opportunity to get your questions answered?",
                            answers: ["Yes, my questions are being fully addressed", "Mostly yes, but I still have some unanswered questions", "Not quite — the sessions feel rushed or too brief", "No, I have not been able to get my questions answered", "I have not participated in a Q&A session yet"],
                            correctAnswer: ["Yes, my questions are being fully addressed", "Mostly yes, but I still have some unanswered questions", "Not quite — the sessions feel rushed or too brief", "No, I have not been able to get my questions answered", "I have not participated in a Q&A session yet"]
                        ),
                        QuizQuestions(
                            question: "How well does the hybrid format (in-person + virtual) work for your schedule and learning style?",
                            answers: ["1 — Does not work well", "2", "3 — Neutral", "4", "5 — Works very well"],
                            correctAnswer: ["1 — Does not work well", "2", "3 — Neutral", "4", "5 — Works very well"]
                        ),
                        QuizQuestions(
                            question: "What best describes how you feel about the pace of the program so far?",
                            answers: ["The pace is just right", "The pace is too fast — I need more time with each topic", "The pace is too slow — I want to cover more material", "It varies — some sessions feel fast, some feel slow"],
                            correctAnswer: ["The pace is just right", "The pace is too fast — I need more time with each topic", "The pace is too slow — I want to cover more material", "It varies — some sessions feel fast, some feel slow"]
                        ),
                        QuizQuestions(
                            question: "Have you taken any action steps to address your credit situation since the program began?",
                            answers: ["Yes, I have already taken multiple steps", "Yes, I have taken at least one step", "Not yet, but I have a clear plan to do so soon", "Not yet — I am still learning and gathering information", "I am unsure what steps to take next"],
                            correctAnswer: ["Yes, I have already taken multiple steps", "Yes, I have taken at least one step", "Not yet, but I have a clear plan to do so soon", "Not yet — I am still learning and gathering information", "I am unsure what steps to take next"]
                        ),
                        QuizQuestions(
                            question: "How has your confidence in understanding your credit report changed since starting the program?",
                            answers: ["Much more confident than before", "Somewhat more confident than before", "About the same as before", "I am still confused but working through it", "I feel more overwhelmed than when I started"],
                            correctAnswer: ["Much more confident than before", "Somewhat more confident than before", "About the same as before", "I am still confused but working through it", "I feel more overwhelmed than when I started"]
                        ),
                        QuizQuestions(
                            question: "How would you rate the peer community and support within the cohort?",
                            answers: ["1 — Not helpful", "2", "3 — Neutral", "4", "5 — Extremely helpful"],
                            correctAnswer: ["1 — Not helpful", "2", "3 — Neutral", "4", "5 — Extremely helpful"]
                        ),
                        QuizQuestions(
                            question: "Which topic from the remaining curriculum are you most looking forward to?",
                            answers: ["Fraud prevention and identity protection strategies", "Navigating the credit bureaus and knowing your rights", "Advanced credit-building strategies", "Credit scoring deep dive — maximizing your score", "All remaining topics equally"],
                            correctAnswer: ["Fraud prevention and identity protection strategies", "Navigating the credit bureaus and knowing your rights", "Advanced credit-building strategies", "Credit scoring deep dive — maximizing your score", "All remaining topics equally"]
                        ),
                        QuizQuestions(
                            question: "Which area do you feel still needs more time or deeper explanation in the remaining sessions?",
                            answers: ["How to write and submit an effective dispute letter", "How to handle collections, charge-offs, and settlements", "How to build credit with limited or no credit history", "How to protect myself from fraud and identity theft", "How credit bureaus work and what my rights are", "The program has covered everything well so far"],
                            correctAnswer: ["How to write and submit an effective dispute letter", "How to handle collections, charge-offs, and settlements", "How to build credit with limited or no credit history", "How to protect myself from fraud and identity theft", "How credit bureaus work and what my rights are", "The program has covered everything well so far"]
                        )
                    ]
        case "Credit Compass Final" :
            return [
                QuizQuestions(
                            question: "Overall, how would you rate your experience in Credit Compass?",
                            answers: ["1 — Very poor", "2", "3 — Neutral", "4", "5 — Excellent"],
                            correctAnswer: ["1 — Very poor", "2", "3 — Neutral", "4", "5 — Excellent"]
                        ),
                        QuizQuestions(
                            question: "How much did your knowledge of personal credit improve as a result of this program?",
                            answers: ["1 — No improvement", "2", "3 — Some improvement", "4", "5 — Significant improvement"],
                            correctAnswer: ["1 — No improvement", "2", "3 — Some improvement", "4", "5 — Significant improvement"]
                        ),
                        QuizQuestions(
                            question: "Which program component delivered the most value for you?",
                            answers: ["Understanding how to read my credit report", "Dispute letter creation and the dispute process", "Credit-building account recommendations", "Settlements, charge-offs, and collections guidance", "FICO vs. VantageScore deep dive", "Fraud prevention and identity protection", "Navigating the credit bureaus and knowing my rights", "Peer community and group support"],
                            correctAnswer: ["Understanding how to read my credit report", "Dispute letter creation and the dispute process", "Credit-building account recommendations", "Settlements, charge-offs, and collections guidance", "FICO vs. VantageScore deep dive", "Fraud prevention and identity protection", "Navigating the credit bureaus and knowing my rights", "Peer community and group support"]
                        ),
                        QuizQuestions(
                            question: "How would you rate the overall quality and expertise of the instructors throughout the program?",
                            answers: ["1 — Poor", "2", "3 — Average", "4", "5 — Excellent"],
                            correctAnswer: ["1 — Poor", "2", "3 — Average", "4", "5 — Excellent"]
                        ),
                        QuizQuestions(
                            question: "Was the 8-week duration of the program appropriate for the volume and depth of content covered?",
                            answers: ["Yes, the length was just right", "The program felt too short — I wanted more time", "The program felt too long — it could be condensed", "I am unsure"],
                            correctAnswer: ["Yes, the length was just right", "The program felt too short — I wanted more time", "The program felt too long — it could be condensed", "I am unsure"]
                        ),
                        QuizQuestions(
                            question: "How well did the hybrid (in-person + virtual) format meet your needs over the full program?",
                            answers: ["1 — Did not meet my needs", "2", "3 — Neutral", "4", "5 — Fully met my needs"],
                            correctAnswer: ["1 — Did not meet my needs", "2", "3 — Neutral", "4", "5 — Fully met my needs"]
                        ),
                        QuizQuestions(
                            question: "How confident do you feel now in your ability to read and understand your personal credit report?",
                            answers: ["1 — Not confident at all", "2", "3 — Somewhat confident", "4", "5 — Very confident"],
                            correctAnswer: ["1 — Not confident at all", "2", "3 — Somewhat confident", "4", "5 — Very confident"]
                        ),
                        QuizQuestions(
                            question: "How confident do you feel now in your ability to dispute inaccurate or outdated information on your credit report?",
                            answers: ["1 — Not confident at all", "2", "3 — Somewhat confident", "4", "5 — Very confident"],
                            correctAnswer: ["1 — Not confident at all", "2", "3 — Somewhat confident", "4", "5 — Very confident"]
                        ),
                        QuizQuestions(
                            question: "Have you taken any concrete credit improvement steps since starting or completing the program?",
                            answers: ["Yes — I have already submitted a dispute letter", "Yes — I have opened a credit-building account", "Yes — I have contacted a collections agency or creditor", "Yes — I have taken multiple steps across different areas", "Not yet, but I have a clear action plan", "Not yet — I need more time before I feel ready"],
                            correctAnswer: ["Yes — I have already submitted a dispute letter", "Yes — I have opened a credit-building account", "Yes — I have contacted a collections agency or creditor", "Yes — I have taken multiple steps across different areas", "Not yet, but I have a clear action plan", "Not yet — I need more time before I feel ready"]
                        ),
                        QuizQuestions(
                            question: "How much has your confidence in protecting yourself from fraud and identity theft improved?",
                            answers: ["1 — No improvement", "2", "3 — Some improvement", "4", "5 — Significantly improved"],
                            correctAnswer: ["1 — No improvement", "2", "3 — Some improvement", "4", "5 — Significantly improved"]
                        ),
                        QuizQuestions(
                            question: "How prepared do you feel to navigate the credit bureaus and advocate for your consumer rights?",
                            answers: ["1 — Not prepared", "2", "3 — Somewhat prepared", "4", "5 — Fully prepared"],
                            correctAnswer: ["1 — No improvement", "2", "3 — Some improvement", "4", "5 — Significantly improved"]
                        ),
                        QuizQuestions(
                            question: "How would you describe the return on your time investment in this program?",
                            answers: ["Excellent — far exceeded my expectations", "Good — mostly met my expectations", "Fair — met some but not all of my expectations", "Poor — did not meet my expectations"],
                            correctAnswer: ["Excellent — far exceeded my expectations", "Good — mostly met my expectations", "Fair — met some but not all of my expectations", "Poor — did not meet my expectations"]
                        ),
                        QuizQuestions(
                            question: "What is the most important improvement you would recommend for future cohorts?",
                            answers: ["More hands-on dispute letter practice and walkthroughs", "More in-depth coverage of collections and charge-off strategies", "More personalized credit coaching or one-on-one support", "More resources on credit-building tools and products", "More networking and peer collaboration opportunities", "Better post-program support and follow-up resources", "A longer program with more sessions"],
                            correctAnswer: ["More hands-on dispute letter practice and walkthroughs", "More in-depth coverage of collections and charge-off strategies", "More personalized credit coaching or one-on-one support", "More resources on credit-building tools and products", "More networking and peer collaboration opportunities", "Better post-program support and follow-up resources", "A longer program with more sessions"]
                        ),
                        QuizQuestions(
                            question: "Would you be interested in an advanced follow-up program to continue building on what you learned?",
                            answers: ["Yes, definitely", "Yes, if it covers specific advanced topics", "Maybe — I would need more information first", "No, the current program covered enough for my needs"],
                            correctAnswer: ["Yes, definitely", "Yes, if it covers specific advanced topics", "Maybe — I would need more information first", "No, the current program covered enough for my needs"]
                        ),
                        QuizQuestions(
                            question: "Would you recommend Credit Compass to a friend, family member, or colleague?",
                            answers: ["Definitely yes", "Probably yes", "Not sure", "Probably not", "Definitely not"],
                            correctAnswer: ["Definitely yes", "Probably yes", "Not sure", "Probably not", "Definitely not"]
                        )
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
