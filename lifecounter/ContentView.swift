//
//  ContentView.swift
//  lifecounter
//
//  Created by Vishank Rughwani on 4/21/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.verticalSizeClass) var sizeClass
    @State var count1: Int = 20
    @State var count2: Int = 20
    @State var count3: Int = 20
    @State var count4: Int = 20
    
    var body: some View {
        if sizeClass == .compact {
            VStack {
                HStack{
                    VStack{
                        VStack{
                            HStack(spacing: 10) {
                                Text("Player 1:").font(.headline).bold().italic()
                                Text(String(count1)).font(.headline).bold().italic()
                            }
                            HStack {
                                Button(action: {
                                    self.count1 -= 5
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width: 60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("-5").foregroundColor(Color.white)
                                    }
                                }
                                Button(action: {
                                    self.count1 -= 1
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("-").foregroundColor(Color.white)
                                    }                    }
                                Button(action: {
                                    self.count1 += 1
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("+").foregroundColor(Color.white)
                                    }                    }
                                Button(action: {
                                    self.count1 += 5
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("+5").foregroundColor(Color.white)
                                    }
                                }
                            }
                        }
                        VStack{
                            HStack(spacing: 10) {
                                Text("Player 2:").font(.headline).bold().italic()
                                Text(String(count2)).font(.headline).bold().italic()
                            }
                            HStack {
                                Button(action: {
                                    self.count2 -= 5
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("-5").foregroundColor(Color.white)
                                    }
                                }
                                Button(action: {
                                    self.count2 -= 1
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("-").foregroundColor(Color.white)
                                    }                    }
                                Button(action: {
                                    self.count2 += 1
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("+").foregroundColor(Color.white)
                                    }                    }
                                Button(action: {
                                    self.count2 += 5
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("+5").foregroundColor(Color.white)
                                    }
                                }
                            }
                        }
                    }
                    VStack{
                        VStack{
                            HStack(spacing: 10) {
                                Text("Player 3:").font(.headline).bold().italic()
                                Text(String(count3)).font(.headline).bold().italic()
                            }
                            HStack {
                                Button(action: {
                                    self.count3 -= 5
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("-5").foregroundColor(Color.white)
                                    }
                                }
                                Button(action: {
                                    self.count3 -= 1
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("-").foregroundColor(Color.white)
                                    }                    }
                                Button(action: {
                                    self.count3 += 1
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("+").foregroundColor(Color.white)
                                    }                    }
                                Button(action: {
                                    self.count3 += 5
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("+5").foregroundColor(Color.white)
                                    }
                                }
                            }

                        }
                        VStack{
                            HStack(spacing: 10) {
                                Text("Player 4:").font(.headline).bold().italic()
                                Text(String(count4)).font(.headline).bold().italic()
                            }
                            HStack {
                                Button(action: {
                                    self.count4 -= 5
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("-5").foregroundColor(Color.white)
                                    }
                                }
                                Button(action: {
                                    self.count4 -= 1
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("-").foregroundColor(Color.white)
                                    }                    }
                                Button(action: {
                                    self.count4 += 1
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("+").foregroundColor(Color.white)
                                    }                    }
                                Button(action: {
                                    self.count4 += 5
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                            width:60,
                                            height: 60,
                                            alignment: .center
                                            )
                                        Text("+5").foregroundColor(Color.white)
                                    }
                                }
                            }
                        }
                    }
                }
                if(self.count1 <= 0){
                    Text("Player 1 LOSES").font(.title).bold()
                } else if(self.count2 <= 0){
                    Text("Player 2 LOSES").font(.title).bold()
                } else if(self.count3 <= 0){
                    Text("Player 3 LOSES").font(.title).bold()
                } else if(self.count4 <= 0){
                    Text("Player 4 LOSES").font(.title).bold()
                }
            }
        }else{
            VStack(spacing: 15) {
                VStack{
                    HStack(spacing: 10) {
                        Text("Player 1:").font(.headline).bold().italic()
                        Text(String(count1)).font(.headline).bold().italic()
                    }
                    HStack {
                        Button(action: {
                            self.count1 -= 5
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width: 60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("-5").foregroundColor(Color.white)
                            }
                        }
                        Button(action: {
                            self.count1 -= 1
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("-").foregroundColor(Color.white)
                            }                    }
                        Button(action: {
                            self.count1 += 1
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("+").foregroundColor(Color.white)
                            }                    }
                        Button(action: {
                            self.count1 += 5
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("+5").foregroundColor(Color.white)
                            }
                        }
                    }
                }
                VStack{
                    HStack(spacing: 10) {
                        Text("Player 2:").font(.headline).bold().italic()
                        Text(String(count2)).font(.headline).bold().italic()
                    }
                    HStack {
                        Button(action: {
                            self.count2 -= 5
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("-5").foregroundColor(Color.white)
                            }
                        }
                        Button(action: {
                            self.count2 -= 1
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("-").foregroundColor(Color.white)
                            }                    }
                        Button(action: {
                            self.count2 += 1
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("+").foregroundColor(Color.white)
                            }                    }
                        Button(action: {
                            self.count2 += 5
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("+5").foregroundColor(Color.white)
                            }
                        }
                    }
                }
                VStack{
                    HStack(spacing: 10) {
                        Text("Player 3:").font(.headline).bold().italic()
                        Text(String(count3)).font(.headline).bold().italic()
                    }
                    HStack {
                        Button(action: {
                            self.count3 -= 5
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("-5").foregroundColor(Color.white)
                            }
                        }
                        Button(action: {
                            self.count3 -= 1
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("-").foregroundColor(Color.white)
                            }                    }
                        Button(action: {
                            self.count3 += 1
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("+").foregroundColor(Color.white)
                            }                    }
                        Button(action: {
                            self.count3 += 5
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("+5").foregroundColor(Color.white)
                            }
                        }
                    }

                }
                VStack{
                    HStack(spacing: 10) {
                        Text("Player 4:").font(.headline).bold().italic()
                        Text(String(count4)).font(.headline).bold().italic()
                    }
                    HStack {
                        Button(action: {
                            self.count4 -= 5
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("-5").foregroundColor(Color.white)
                            }
                        }
                        Button(action: {
                            self.count4 -= 1
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("-").foregroundColor(Color.white)
                            }                    }
                        Button(action: {
                            self.count4 += 1
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("+").foregroundColor(Color.white)
                            }                    }
                        Button(action: {
                            self.count4 += 5
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius:30).fill(Color.red).frame(
                                    width:60,
                                    height: 60,
                                    alignment: .center
                                    )
                                Text("+5").foregroundColor(Color.white)
                            }
                        }
                    }
                }
                if(self.count1 <= 0){
                    Text("Player 1 LOSES").font(.title).bold()
                } else if(self.count2 <= 0){
                    Text("Player 2 LOSES").font(.title).bold()
                } else if(self.count3 <= 0){
                    Text("Player 3 LOSES").font(.title).bold()
                } else if(self.count4 <= 0){
                    Text("Player 4 LOSES").font(.title).bold()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
