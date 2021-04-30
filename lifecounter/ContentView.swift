//
//  ContentView.swift
//  lifecounter
//
//  Created by Vishank Rughwani on 4/21/21.
//

import SwiftUI


struct ContentView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    
    @State private var players: Int = 4
    @State private var P1: Int = 20
    @State private var P2: Int = 20
    @State private var P3: Int = 20
    @State private var P4: Int = 20
    @State private var P5: Int = 20
    @State private var P6: Int = 20
    @State private var P7: Int = 20
    @State private var P8: Int = 20
    @State private var P1input: String = ""
    @State private var P2input: String = ""
    @State private var P3input: String = ""
    @State private var P4input: String = ""
    @State private var P5input: String = ""
    @State private var P6input: String = ""
    @State private var P7input: String = ""
    @State private var P8input: String = ""
    @State private var activePlayers: [String] = ["Player 1", "Player 2", "Player 3", "Player 4"]
    @State private var showButton: Bool = true
    @State var changes: [String] = []
    @State private var buttonText: String = "Add Player"

    var body: some View {
        NavigationView {
            GeometryReader { metrics in
            ScrollView{
                    VStack(spacing: 10){
                        if(showButton){
                            Button(action: {
                                players+=1
                                if(players <= 8){
                                    activePlayers.append("Player " + String(players))
                                } else{
                                    buttonText = "8 Players Max!"
                                }
                            }){
                                Text(buttonText)
                            }
                        }
                        ForEach(activePlayers, id: \.self) {player in
                            if player == "Player 1"{
                                VStack{
                                    HStack(spacing: 10) {
                                        Text("Player 1:").font(.headline).bold().italic()
                                        Text(String(P1)).font(.headline).bold().italic()
                                    }
                                    HStack{
                                        Button(action: {
                                            P1input = ""
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Clear").foregroundColor(Color.white)
                                            }
                                        }
                                        TextField("Input", text: $P1input)
                                            .keyboardType(.decimalPad)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .multilineTextAlignment(.center)
                                        Button(action: {
                                            self.P1 += Int(P1input)!
                                            changes.append(P1input + " for Player 1")
                                            showButton = false
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Enter").foregroundColor(Color.white)
                                            }
                                        }
                                    }
                                }
                                HStack() {
                                    Button(action: {
                                        self.P1 -= 1
                                        changes.append("-1 for Player 1")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width: 50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("-").foregroundColor(Color.white)
                                        }                    }
                                    Button(action: {
                                        self.P1 += 1
                                        changes.append("+1 for Player 1")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("+").foregroundColor(Color.white)
                                        }
                                    }
                                }
                            }
                            if player == "Player 2"{
                                VStack{
                                    HStack(spacing: 10) {
                                        Text("Player 2:").font(.headline).bold().italic()
                                        Text(String(P2)).font(.headline).bold().italic()
                                    }
                                    HStack{
                                        Button(action: {
                                            P2input = ""
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Clear").foregroundColor(Color.white)
                                            }
                                        }
                                        TextField("Input", text: $P2input)
                                            .keyboardType(.decimalPad)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .multilineTextAlignment(.center)
                                        Button(action: {
                                            self.P2 += Int(P2input)!
                                            changes.append(P2input + " for Player 2")
                                            showButton = false
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Enter").foregroundColor(Color.white)
                                            }
                                        }
                                    }
                                }
                                HStack {
                                    Button(action: {
                                        self.P2 -= 1
                                        changes.append("-1 for Player 2")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("-").foregroundColor(Color.white)
                                        }                    }
                                    Button(action: {
                                        self.P2 += 1
                                        changes.append("+1 for Player 2")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("+").foregroundColor(Color.white)
                                        }                    }
                                }
                            }
                            if player == "Player 3"{
                                VStack{
                                    HStack(spacing: 10) {
                                        Text("Player 3:").font(.headline).bold().italic()
                                        Text(String(P3)).font(.headline).bold().italic()
                                    }
                                    HStack{
                                        Button(action: {
                                            P3input = ""
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Clear").foregroundColor(Color.white)
                                            }
                                        }
                                        TextField("Input", text: $P3input)
                                            .keyboardType(.decimalPad)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .multilineTextAlignment(.center)
                                        Button(action: {
                                            self.P3 += Int(P3input)!
                                            changes.append(P3input + " for Player 3")
                                            showButton = false
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Enter").foregroundColor(Color.white)
                                            }
                                        }
                                    }
                                }
                                HStack {
                                    Button(action: {
                                        self.P3 -= 1
                                        changes.append("-1 for Player 3")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("-").foregroundColor(Color.white)
                                        }                    }
                                    Button(action: {
                                        self.P3 += 1
                                        changes.append("+1 for Player 3")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("+").foregroundColor(Color.white)
                                        }                    }
                                }
                            }
                            if player == "Player 4"{
                                VStack{
                                    HStack(spacing: 10) {
                                        Text("Player 4:").font(.headline).bold().italic()
                                        Text(String(P4)).font(.headline).bold().italic()
                                    }
                                    HStack{
                                        Button(action: {
                                            P4input = ""
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Clear").foregroundColor(Color.white)
                                            }
                                        }
                                        TextField("Input", text: $P4input)
                                            .keyboardType(.decimalPad)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .multilineTextAlignment(.center)
                                        Button(action: {
                                            self.P4 += Int(P4input)!
                                            changes.append(P4input + " for Player 4")
                                            showButton = false
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Enter").foregroundColor(Color.white)
                                            }
                                        }
                                    }
                                }
                                HStack {
                                    Button(action: {
                                        self.P4 -= 1
                                        changes.append("-1 for Player 4")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("-").foregroundColor(Color.white)
                                        }                    }
                                    Button(action: {
                                        self.P4 += 1
                                        changes.append("+1 for Player 4")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("+").foregroundColor(Color.white)
                                        }                    }
                                }
                            }
                            if player == "Player 5"{
                                VStack{
                                    HStack(spacing: 10) {
                                        Text("Player 5:").font(.headline).bold().italic()
                                        Text(String(P5)).font(.headline).bold().italic()
                                    }
                                    HStack{
                                        Button(action: {
                                            P5input = ""
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Clear").foregroundColor(Color.white)
                                            }
                                        }
                                        TextField("Input", text: $P5input)
                                            .keyboardType(.decimalPad)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .multilineTextAlignment(.center)
                                        Button(action: {
                                            self.P5 += Int(P5input)!
                                            changes.append(P5input + " for Player 5")
                                            showButton = false
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Enter").foregroundColor(Color.white)
                                            }
                                        }
                                    }
                                }
                                HStack {
                                    Button(action: {
                                        self.P5 -= 1
                                        changes.append("-1 for Player 5")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("-").foregroundColor(Color.white)
                                        }                    }
                                    Button(action: {
                                        self.P5 += 1
                                        changes.append("+1 for Player 5")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("+").foregroundColor(Color.white)
                                        }                    }
                                }
                            }
                            if player == "Player 6"{
                                VStack{
                                    HStack(spacing: 10) {
                                        Text("Player 6:").font(.headline).bold().italic()
                                        Text(String(P6)).font(.headline).bold().italic()
                                    }
                                    HStack{
                                        Button(action: {
                                            P6input = ""
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Clear").foregroundColor(Color.white)
                                            }
                                        }
                                        TextField("Input", text: $P6input)
                                            .keyboardType(.decimalPad)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .multilineTextAlignment(.center)
                                        Button(action: {
                                            self.P6 += Int(P6input)!
                                            changes.append(P6input + " for Player 6")
                                            showButton = false
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Enter").foregroundColor(Color.white)
                                            }
                                        }
                                    }
                                }
                                HStack {
                                    Button(action: {
                                        self.P6 -= 1
                                        changes.append("-1 for Player 6")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("-").foregroundColor(Color.white)
                                        }                    }
                                    Button(action: {
                                        self.P6 += 1
                                        changes.append("+1 for Player 6")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("+").foregroundColor(Color.white)
                                        }                    }
                                }
                            }
                            if player == "Player 7"{
                                VStack{
                                    HStack(spacing: 10) {
                                        Text("Player 7:").font(.headline).bold().italic()
                                        Text(String(P7)).font(.headline).bold().italic()
                                    }
                                    HStack{
                                        Button(action: {
                                            P7input = ""
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Clear").foregroundColor(Color.white)
                                            }
                                        }
                                        TextField("Input", text: $P7input)
                                            .keyboardType(.decimalPad)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .multilineTextAlignment(.center)
                                        Button(action: {
                                            self.P7 += Int(P7input)!
                                            changes.append(P7input + " for Player 7")
                                            showButton = false
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Enter").foregroundColor(Color.white)
                                            }
                                        }
                                    }
                                }
                                HStack {
                                    Button(action: {
                                        self.P7 -= 1
                                        changes.append("-1 for Player 7")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("-").foregroundColor(Color.white)
                                        }                    }
                                    Button(action: {
                                        self.P7 += 1
                                        changes.append("+1 for Player 7")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("+").foregroundColor(Color.white)
                                        }                    }
                                }
                            }
                            if player == "Player 8"{
                                VStack{
                                    HStack(spacing: 10) {
                                        Text("Player 8:").font(.headline).bold().italic()
                                        Text(String(P8)).font(.headline).bold().italic()
                                    }
                                    HStack{
                                        Button(action: {
                                            P8input = ""
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Clear").foregroundColor(Color.white)
                                            }
                                        }
                                        TextField("Input", text: $P8input)
                                            .keyboardType(.decimalPad)
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .multilineTextAlignment(.center)
                                        Button(action: {
                                            self.P8 += Int(P8input)!
                                            changes.append(P8input + " for Player 8")
                                            showButton = false
                                        }) {
                                            ZStack {
                                                RoundedRectangle(cornerRadius:0).frame(
                                                    width: 50,
                                                    height: 30,
                                                    alignment: .center
                                                    )
                                                Text("Enter").foregroundColor(Color.white)
                                            }
                                        }
                                    }
                                }
                                HStack {
                                    
                                    Button(action: {
                                        self.P8 -= 1
                                        changes.append("-1 for Player 8")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("-").foregroundColor(Color.white)
                                        }                    }
                                    Button(action: {
                                        self.P8 += 1
                                        changes.append("+1 for Player 8")
                                        showButton = false
                                    }) {
                                        ZStack {
                                            RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                                width:50,
                                                height: 50,
                                                alignment: .center
                                                )
                                            Text("+").foregroundColor(Color.white)
                                        }                    }
                                }
                            }
                            
                        }
                        NavigationLink(destination: HistoryView(list: changes)){
                            Text("History")
                        }
                        Button(action: {
                            players = 4
                            activePlayers = ["Player 1", "Player 2", "Player 3", "Player 4"]
                            P1 = 20
                            P2 = 20
                            P3 = 20
                            P4 = 20
                            P5 = 20
                            P6 = 20
                            P7 = 20
                            P8 = 20
                            showButton = true
                            changes.append("Reset!")
                            P1input = ""
                            P2input = ""
                            P3input = ""
                            P4input = ""
                            P5input = ""
                            P6input = ""
                            P7input = ""
                            P8input = ""
                        }){
                            Text("Reset")
                        }
                    }
                }
            }
        }
    } //nav view
}



struct HistoryView: View{
    var list: [String]
    var body: some View {
        ScrollView{
            ForEach(list, id: \.self){
                item in Text(item).padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
