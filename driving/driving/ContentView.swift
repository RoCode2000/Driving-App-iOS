import SwiftUI

// Object Structure
struct Question: Identifiable {
    let id = UUID()
    let text: String
    let options: [String]
    let correctAnswerIndex: Int
    let image: String?

}

struct ContentView: View {
    // Variable is connected to all the other object question
    let allBasicTheoryQuestions: [Question] = [
        btt1, btt2, btt3, btt4, btt5, btt6, btt7, btt8, btt9, btt10,
        btt11, btt12, btt13, btt14, btt15, btt16, btt17, btt18, btt19, btt20,
        btt21, btt22, btt23, btt24, btt25, btt26, btt27, btt28, btt29, btt30,
        btt31, btt32, btt33, btt34, btt35, btt36, btt37, btt38, btt39, btt40,
        btt41, btt42, btt43, btt44, btt45, btt46, btt47, btt48, btt49, btt50,
        btt51, btt52, btt53, btt54, btt55, btt56, btt57, btt58, btt59, btt60,
        btt61, btt62, btt63, btt64, btt65, btt66, btt67, btt68, btt69, btt70,
        btt71, btt72, btt73, btt74, btt75, btt76, btt77, btt78, btt79, btt80,
        btt81, btt82, btt83, btt84, btt85, btt86, btt87, btt88, btt89, btt90,
        btt91, btt92, btt93, btt94, btt95, btt96, btt97, btt98, btt99, btt100,
        btt101, btt102, btt103, btt104, btt105, btt106, btt107, btt108, btt109, btt110,
        btt111, btt112, btt113, btt114, btt115, btt116, btt117, btt118, btt119, btt120,
        btt121, btt122, btt123, btt124, btt125, btt126, btt127, btt128, btt129, btt130,
        btt131, btt132, btt133, btt134, btt135, btt136, btt137, btt138, btt139, btt140,
        btt141, btt142, btt143, btt144, btt145, btt146, btt147, btt148, btt149, btt150,
        btt151, btt152, btt153, btt154, btt155, btt156, btt157, btt158, btt159, btt160,
        btt161, btt162, btt163, btt164, btt165, btt166, btt167, btt168, btt169, btt170,
        btt171, btt172, btt173, btt174, btt175, btt176, btt177, btt178, btt179, btt180,
        btt181, btt182, btt183, btt184, btt185, btt186, btt187, btt188, btt189, btt190,
        btt191, btt192, btt193, btt194, btt195, btt196, btt197, btt198, btt199, btt200,
        btt201, btt202, btt203, btt204, btt205, btt206, btt207, btt208, btt209, btt210,
        btt211, btt212, btt213, btt214, btt215, btt216, btt217, btt218, btt219, btt220,
        btt221, btt222, btt223, btt224, btt225, btt226, btt227, btt228, btt229, btt230,
        btt231, btt232, btt233, btt234, btt235, btt236, btt237, btt238, btt239, btt240,
        btt241, btt242, btt243, btt244, btt245, btt246, btt247, btt248, btt249, btt250,
        btt251, btt252, btt253, btt254, btt255, btt256, btt257, btt258, btt259, btt260,
        btt261, btt262, btt263, btt264, btt265, btt266, btt267, btt268, btt269, btt270,
        btt271, btt272, btt273, btt274, btt275, btt276, btt277, btt278, btt279, btt280,
        btt281, btt282, btt283, btt284, btt285, btt286, btt287, btt288, btt289, btt290,
        btt291, btt292, btt293, btt294, btt295, btt296, btt297, btt298, btt299, btt300,
        btt301, btt302, btt303, btt304, btt305, btt306, btt307, btt308, btt309, btt310,
        btt311, btt312, btt313, btt314, btt315, btt316, btt317, btt318, btt319, btt320,
        btt321, btt322, btt323, btt324, btt325, btt326, btt327, btt328
    ]
    let allFinalTheoryQuestions: [Question] = [
        ftt1, ftt2, ftt3, ftt4, ftt5, ftt6, ftt7, ftt8, ftt9, ftt10,
        ftt11, ftt12, ftt13, ftt14, ftt15, ftt16, ftt17, ftt18, ftt19, ftt20,
        ftt21, ftt22, ftt23, ftt24, ftt25, ftt26, ftt27, ftt28, ftt29, ftt30,
        ftt31, ftt32, ftt33, ftt34, ftt35, ftt36, ftt37, ftt38, ftt39, ftt40,
        ftt41, ftt42, ftt43, ftt44, ftt45, ftt46, ftt47, ftt48, ftt49, ftt50,
        ftt51, ftt52, ftt53, ftt54, ftt55, ftt56, ftt57, ftt58, ftt59, ftt60,
        ftt61, ftt62, ftt63, ftt64, ftt65, ftt66, ftt67, ftt68, ftt69, ftt70,
        ftt71, ftt72, ftt73, ftt74, ftt75, ftt76, ftt77, ftt78, ftt79, ftt80,
        ftt81, ftt82, ftt83, ftt84, ftt85, ftt86, ftt87, ftt88, ftt89, ftt90,
        ftt91, ftt92, ftt93, ftt94, ftt95, ftt96, ftt97, ftt98, ftt99, ftt100,
        ftt101, ftt102, ftt103, ftt104, ftt105, ftt106, ftt107, ftt108, ftt109, ftt110,
        ftt111, ftt112, ftt113, ftt114, ftt115, ftt116, ftt117, ftt118, ftt119, ftt120,
        ftt121, ftt122, ftt123, ftt124, ftt125, ftt126, ftt127, ftt128, ftt129, ftt130,
        ftt131, ftt132, ftt133, ftt134, ftt135, ftt136, ftt137, ftt138, ftt139, ftt140,
        ftt141, ftt142, ftt143, ftt144, ftt145, ftt146, ftt147, ftt148, ftt149, ftt150,
        ftt151, ftt152, ftt153, ftt154, ftt155, ftt156, ftt157, ftt158, ftt159, ftt160,
        ftt161, ftt162, ftt163, ftt164, ftt165, ftt166, ftt167, ftt168, ftt169, ftt170,
        ftt171, ftt172, ftt173, ftt174, ftt175, ftt176, ftt177, ftt178, ftt179, ftt180,
        ftt181, ftt182, ftt183, ftt184, ftt185, ftt186, ftt187, ftt188, ftt189, ftt190,
        ftt191, ftt192, ftt193, ftt194, ftt195, ftt196, ftt197, ftt198, ftt199, ftt200,
        ftt201, ftt202, ftt203, ftt204, ftt205, ftt206, ftt207, ftt208, ftt209, ftt210,
        ftt211, ftt212, ftt213, ftt214, ftt215, ftt216, ftt217, ftt218, ftt219, ftt220,
        ftt221, ftt222, ftt223, ftt224, ftt225, ftt226, ftt227, ftt228, ftt229, ftt230,
        ftt231, ftt232, ftt233, ftt234, ftt235, ftt236, ftt237, ftt238, ftt239, ftt240,
        ftt241, ftt242, ftt243, ftt244, ftt245, ftt246, ftt247, ftt248, ftt249, ftt250,
        ftt251, ftt252, ftt253, ftt254, ftt255, ftt256, ftt257, ftt258, ftt259, ftt260,
        ftt261, ftt262, ftt263, ftt264, ftt265, ftt266, ftt267, ftt268, ftt269, ftt270,
        ftt271, ftt272, ftt273, ftt274, ftt275, ftt276, ftt277, ftt278, ftt279, ftt280,
        ftt281, ftt282, ftt283, ftt284, ftt285, ftt286, ftt287, ftt288, ftt289, ftt290,
        ftt291, ftt292, ftt293, ftt294, ftt295, ftt296, ftt297, ftt298, ftt299, ftt300,
        ftt301, ftt302, ftt303, ftt304, ftt305, ftt306, ftt307, ftt308, ftt309, ftt310,
        ftt311, ftt312, ftt313, ftt314, ftt315, ftt316, ftt317, ftt318, ftt319, ftt320,
        ftt321, ftt322, ftt323, ftt324, ftt325, ftt326, ftt327, ftt328, ftt329, ftt330,
        ftt331, ftt332, ftt333, ftt334, ftt335, ftt336, ftt337, ftt338, ftt339, ftt340,
        ftt341, ftt342, ftt343, ftt344, ftt345, ftt346, ftt347, ftt348, ftt349, ftt350,
        ftt351, ftt352, ftt353, ftt354, ftt355, ftt356, ftt357, ftt358, ftt359, ftt360,
        ftt361, ftt362, ftt363, ftt364, ftt365, ftt366, ftt367, ftt368, ftt369, ftt370,
        ftt371, ftt372, ftt373, ftt374, ftt375, ftt376, ftt377, ftt378, ftt379, ftt380,
        ftt381, ftt382, ftt383, ftt384, ftt385, ftt386, ftt387, ftt388, ftt389, ftt390,
        ftt391, ftt392, ftt393, ftt394, ftt395, ftt396, ftt397, ftt398, ftt399, ftt400,
        ftt401, ftt402, ftt403, ftt404, ftt405, ftt406, ftt407, ftt408, ftt409, ftt410,
        ftt411, ftt412, ftt413, ftt414, ftt415, ftt416, ftt417, ftt418, ftt419, ftt420,
        ftt421, ftt422, ftt423, ftt424, ftt425, ftt426, ftt427, ftt428, ftt429, ftt430,
        ftt431, ftt432, ftt433, ftt434, ftt435, ftt436, ftt437, ftt438, ftt439, ftt440,
        ftt441, ftt442, ftt443, ftt444, ftt445, ftt446, ftt447, ftt448, ftt449, ftt450,
        ftt451, ftt452, ftt453, ftt454, ftt455, ftt456, ftt457, ftt458, ftt459, ftt460,
        ftt461, ftt462, ftt463, ftt464, ftt465, ftt466, ftt467, ftt468, ftt469, ftt470,
        ftt471, ftt472, ftt473, ftt474, ftt475, ftt476, ftt477, ftt478, ftt479, ftt480,
        ftt481, ftt482, ftt483, ftt484, ftt485, ftt486, ftt487, ftt488, ftt489, ftt490,
        ftt491, ftt492, ftt493, ftt494, ftt495, ftt496, ftt497, ftt498, ftt499, ftt500

    ]
    let allRidingTheoryQuestions: [Question] = [rtt1, rtt2, rtt3, rtt4, rtt5, rtt6, rtt7, rtt8, rtt9, rtt10,
                                                rtt11, rtt12, rtt13, rtt14, rtt15, rtt16, rtt17, rtt18, rtt19, rtt20,
                                                rtt21, rtt22, rtt23, rtt24, rtt25, rtt26, rtt27, rtt28, rtt29, rtt30,
                                                rtt31, rtt32, rtt33, rtt34, rtt35, rtt36, rtt37, rtt38, rtt39, rtt40,
                                                rtt41, rtt42, rtt43, rtt44, rtt45, rtt46, rtt47, rtt48, rtt49, rtt50,
                                                rtt51, rtt52, rtt53, rtt54, rtt55, rtt56, rtt57, rtt58, rtt59, rtt60,
                                                rtt61, rtt62, rtt63, rtt64, rtt65, rtt66, rtt67, rtt68, rtt69, rtt70,
                                                rtt71, rtt72, rtt73, rtt74, rtt75, rtt76, rtt77, rtt78, rtt79, rtt80,
                                                rtt81, rtt82, rtt83, rtt84, rtt85, rtt86, rtt87, rtt88, rtt89, rtt90,
                                                rtt91, rtt92, rtt93, rtt94, rtt95, rtt96, rtt97, rtt98, rtt99, rtt100,
                                                rtt101, rtt102, rtt103, rtt104, rtt105, rtt106, rtt107, rtt108, rtt109, rtt110,
                                                rtt111, rtt112, rtt113, rtt114, rtt115, rtt116, rtt117, rtt118, rtt119, rtt120,
                                                rtt121, rtt122, rtt123, rtt124, rtt125, rtt126, rtt127, rtt128, rtt129, rtt130,
                                                rtt131, rtt132, rtt133, rtt134, rtt135, rtt136, rtt137, rtt138, rtt139, rtt140,
                                                rtt141, rtt142, rtt143, rtt144, rtt145, rtt146, rtt147, rtt148, rtt149, rtt150,
                                                rtt151, rtt152, rtt153, rtt154, rtt155, rtt156, rtt157
    ]

    // State of the two views.
    // If true, it will be activated on app start-up
    @State private var showBasicTheoryTest = false
    @State private var showFinalTheoryTest = false
    @State private var showRidingTheoryTest = false

    // Set amount of question user will do.
    // Default is 50 as all test is in the format of 50
    var randomBasicTheoryQuestions: [Question] {
        allBasicTheoryQuestions.shuffled().prefix(50).map { $0 }
    }
    var randomFinalTheoryQuestions: [Question] {
        allFinalTheoryQuestions.shuffled().prefix(50).map { $0 }`    }
    var randomRidingTheoryQuestions: [Question] {
        allRidingTheoryQuestions.shuffled().prefix(50).map { $0 }
    }
    
    // Default App Start-up View
    var body: some View {
            // NavigationView is used as we will be using buttons
            
                // VStack to arrange item in vertical
                VStack(spacing: 20) {
                    // Title for purpose of App
                    Text("Driving Theory Test")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .minimumScaleFactor(0.3)
                    // First Button
                    Button(action: {
                        // Turn test on
                        showBasicTheoryTest = true
                    }) {
                        // Button Image and Text
                        Text("Basic Theory Test \n \(Image(systemName: "car.2"))")
                            .font(.title)
                            .padding()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
                            .minimumScaleFactor(0.3)
                    }
                    .padding(.horizontal)
                    // Pull out sheet for test
                    .sheet(isPresented: $showBasicTheoryTest) {
                        BasicTheoryTestView(showTest: $showBasicTheoryTest, questions: randomBasicTheoryQuestions)
                    }
                    // Second Button
                    Button(action: {
                        // Turn test on
                        showFinalTheoryTest = true
                    }) {
                        // Button Image and Text
                        Text("Final Theory Test \n \(Image(systemName: "car.top.lane.dashed.badge.steeringwheel"))")
                            .font(.title)
                            .padding()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
                            .minimumScaleFactor(0.3)
                    }
                    .padding(.horizontal)
                    // Pull out sheet for test
                    .sheet(isPresented: $showFinalTheoryTest) {
                        FinalTheoryTestView(showTest: $showFinalTheoryTest, questions: randomFinalTheoryQuestions)
                }
                    // Thid Button
                    Button(action: {
                        // Turn test on
                        showRidingTheoryTest = true
                    }) {
                        // Button Image and Text
                        Text("Riding Theory Test \n \(Image(systemName: "figure.outdoor.cycle"))")
                            .font(.title)
                            .padding()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
                            .minimumScaleFactor(0.3)
                    }
                    .padding(.horizontal)
                    // Pull out sheet for test
                    .sheet(isPresented: $showRidingTheoryTest) {
                        RidingTheoryTestView(showTest: $showRidingTheoryTest, questions: randomRidingTheoryQuestions)
                }
            }
        
    }
}

struct BasicTheoryTestView: View {
    // To show selected test
    @Binding var showTest: Bool
    // Have the object structure of question
    let questions: [Question]
    // Store current user selection
    @State private var userSelections: [Int?] = []
    // Store number of question answered starting from 0
    @State private var currentQuestionIndex = 0
    // Store score of user/test-taker
    @State private var userScore = 0
    // Check if user answered correctly
    @State private var answeredCorrectly = false
    
    var body: some View {
        // VStack is used to arrange all question vertically
        VStack {
            // Check current question to total question required which is usually 50
            if currentQuestionIndex < questions.count {
                // Count current question
                // Add 1 as the count starts from 0. So first question is question 1, not question 0
                Text("Question \(currentQuestionIndex + 1)")
                // Generate image if image is present
                if let imageName = questions[currentQuestionIndex].image {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .border(Color.black, width: 15)
                        .cornerRadius(15)
                        .minimumScaleFactor(0.3)
                }
                // Generate question
                Text(questions[currentQuestionIndex].text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Loop through options and generate them
                ForEach(questions[currentQuestionIndex].options.indices, id: \.self) { index in
                    // Make each option a button
                    Button(action: {
                        // Append userSelections variable
                        userSelections.append(index)
                        // Once appended, checkAnswer() is run to check if answer is correct
                        checkAnswer()
                    }) {
                        // Generate Text of options
                        Text(questions[currentQuestionIndex].options[index])
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(answerButtonBackground(index: index))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .minimumScaleFactor(0.3)
                    }
                    // Once answered, buttons will be disabled
                    .disabled(userSelections.last != nil)
                }
                
                // Generate a button to move to next question
                Button(action: {
                    // On clicked, nextQuestion() will run, generating next question
                    nextQuestion()
                }) {
                    // Text to fill button
                    Text("Next")
                        .font(.body)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                        .minimumScaleFactor(0.3)
                }
                // Button will not be selected until other button is clicked
                .disabled(userSelections.last == nil)
            } else {
                // If current question is equal to total question required which is usually 50
                // Show a generic text
                Text("Test Complete!")
                    .font(.title)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Show total score
                Text("Your Score: \(userScore)/\(questions.count)")
                    .font(.headline)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Have a Button to redirect to main menu
                Button(action: {
                    showTest = false
                }) {
                    Text("Home")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .minimumScaleFactor(0.3)
                }
            }
        }
    }
    
    
    func checkAnswer() {
        if let userAnswer = userSelections.last,
           userAnswer == questions[currentQuestionIndex].correctAnswerIndex,
           !answeredCorrectly {
            userScore += 1
            answeredCorrectly = true
        }
    }
    
    func nextQuestion() {
        if userSelections.indices.contains(currentQuestionIndex) {
            userSelections[currentQuestionIndex] = nil
        }
        currentQuestionIndex += 1
        answeredCorrectly = false
        userSelections = []
    }

    func answerButtonBackground(index: Int) -> Color {
        if let userAnswer = userSelections.last {
            if index == userAnswer {
                if userAnswer == questions[currentQuestionIndex].correctAnswerIndex {
                    return .green
                } else {
                    return .red
                }
            } else if index == questions[currentQuestionIndex].correctAnswerIndex {
                return .green
            }
        }
        return .blue
    }




}

struct FinalTheoryTestView: View {
    // To show selected test
    @Binding var showTest: Bool
    // Have the object structure of question
    let questions: [Question]
    // Store current user selection
    @State private var userSelections: [Int?] = []
    // Store number of question answered starting from 0
    @State private var currentQuestionIndex = 0
    // Store score of user/test-taker
    @State private var userScore = 0
    // Check if user answered correctly
    @State private var answeredCorrectly = false
    
    var body: some View {
        // VStack is used to arrange all question vertically
        VStack {
            // Check current question to total question required which is usually 50
            if currentQuestionIndex < questions.count {
                // Count current question
                // Add 1 as the count starts from 0. So first question is question 1, not question 0
                Text("Question \(currentQuestionIndex + 1)")
                // Generate image if image is present
                if let imageName = questions[currentQuestionIndex].image {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .border(Color.black, width: 15)
                        .cornerRadius(15)
                        .minimumScaleFactor(0.3)
                }
                // Generate question
                Text(questions[currentQuestionIndex].text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Loop through options and generate them
                ForEach(questions[currentQuestionIndex].options.indices, id: \.self) { index in
                    // Make each option a button
                    Button(action: {
                        // Append userSelections variable
                        userSelections.append(index)
                        // Once appended, checkAnswer() is run to check if answer is correct
                        checkAnswer()
                    }) {
                        // Generate Text of options
                        Text(questions[currentQuestionIndex].options[index])
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(answerButtonBackground(index: index))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .minimumScaleFactor(0.3)
                    }
                    // Once answered, buttons will be disabled
                    .disabled(userSelections.last != nil)
                }
                
                // Generate a button to move to next question
                Button(action: {
                    // On clicked, nextQuestion() will run, generating next question
                    nextQuestion()
                }) {
                    // Text to fill button
                    Text("Next")
                        .font(.body)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                        .minimumScaleFactor(0.3)
                }
                // Button will not be selected until other button is clicked
                .disabled(userSelections.last == nil)
            } else {
                // If current question is equal to total question required which is usually 50
                // Show a generic text
                Text("Test Complete!")
                    .font(.title)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Show total score
                Text("Your Score: \(userScore)/\(questions.count)")
                    .font(.headline)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Have a Button to redirect to main menu
                Button(action: {
                    showTest = false
                }) {
                    Text("Home")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .minimumScaleFactor(0.3)
                }
            }
        }
    }
    
    
    func checkAnswer() {
        if let userAnswer = userSelections.last,
           userAnswer == questions[currentQuestionIndex].correctAnswerIndex,
           !answeredCorrectly {
            userScore += 1
            answeredCorrectly = true
        }
    }
    
    func nextQuestion() {
        if userSelections.indices.contains(currentQuestionIndex) {
            userSelections[currentQuestionIndex] = nil
        }
        currentQuestionIndex += 1
        answeredCorrectly = false
        userSelections = []
    }

    func answerButtonBackground(index: Int) -> Color {
        if let userAnswer = userSelections.last {
            if index == userAnswer {
                if userAnswer == questions[currentQuestionIndex].correctAnswerIndex {
                    return .green
                } else {
                    return .red
                }
            } else if index == questions[currentQuestionIndex].correctAnswerIndex {
                return .green
            }
        }
        return .blue
    }




}

struct RidingTheoryTestView: View {
    // To show selected test
    @Binding var showTest: Bool
    // Have the object structure of question
    let questions: [Question]
    // Store current user selection
    @State private var userSelections: [Int?] = []
    // Store number of question answered starting from 0
    @State private var currentQuestionIndex = 0
    // Store score of user/test-taker
    @State private var userScore = 0
    // Check if user answered correctly
    @State private var answeredCorrectly = false
    
    var body: some View {
        // VStack is used to arrange all question vertically
        VStack {
            // Check current question to total question required which is usually 50
            if currentQuestionIndex < questions.count {
                // Count current question
                // Add 1 as the count starts from 0. So first question is question 1, not question 0
                Text("Question \(currentQuestionIndex + 1)")
                // Generate image if image is present
                if let imageName = questions[currentQuestionIndex].image {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .border(Color.black, width: 15)
                        .cornerRadius(15)
                        .minimumScaleFactor(0.3)
                }
                // Generate question
                Text(questions[currentQuestionIndex].text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Loop through options and generate them
                ForEach(questions[currentQuestionIndex].options.indices, id: \.self) { index in
                    // Make each option a button
                    Button(action: {
                        // Append userSelections variable
                        userSelections.append(index)
                        // Once appended, checkAnswer() is run to check if answer is correct
                        checkAnswer()
                    }) {
                        // Generate Text of options
                        Text(questions[currentQuestionIndex].options[index])
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(answerButtonBackground(index: index))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .minimumScaleFactor(0.3)
                    }
                    // Once answered, buttons will be disabled
                    .disabled(userSelections.last != nil)
                }
                
                // Generate a button to move to next question
                Button(action: {
                    // On clicked, nextQuestion() will run, generating next question
                    nextQuestion()
                }) {
                    // Text to fill button
                    Text("Next")
                        .font(.body)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                        .minimumScaleFactor(0.3)
                }
                // Button will not be selected until other button is clicked
                .disabled(userSelections.last == nil)
            } else {
                // If current question is equal to total question required which is usually 50
                // Show a generic text
                Text("Test Complete!")
                    .font(.title)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Show total score
                Text("Your Score: \(userScore)/\(questions.count)")
                    .font(.headline)
                    .padding()
                    .minimumScaleFactor(0.3)
                // Have a Button to redirect to main menu
                Button(action: {
                    showTest = false
                }) {
                    Text("Home")
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .minimumScaleFactor(0.3)
                }
            }
        }
    }
    
    
    func checkAnswer() {
        if let userAnswer = userSelections.last,
           userAnswer == questions[currentQuestionIndex].correctAnswerIndex,
           !answeredCorrectly {
            userScore += 1
            answeredCorrectly = true
        }
    }
    
    func nextQuestion() {
        if userSelections.indices.contains(currentQuestionIndex) {
            userSelections[currentQuestionIndex] = nil
        }
        currentQuestionIndex += 1
        answeredCorrectly = false
        userSelections = []
    }

    func answerButtonBackground(index: Int) -> Color {
        if let userAnswer = userSelections.last {
            if index == userAnswer {
                if userAnswer == questions[currentQuestionIndex].correctAnswerIndex {
                    return .green
                } else {
                    return .red
                }
            } else if index == questions[currentQuestionIndex].correctAnswerIndex {
                return .green
            }
        }
        return .blue
    }




}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
