//
//  ContentView.swift
//  DesitionMaker
//
//  Created by NICOLAS  TAUTIVA on 11/03/22.
//

import SwiftUI

struct MainView: View {
    
    let logic = Logic()
    


    @State var showPopup = false
    @State var result = false
    
    var body: some View {
        //
        
        
            
        ZStack {
            
            VStack (spacing: 30){
                    
                    VStack {
                        Text("Desition Maker")
                            .bold()
                            .font(.largeTitle)
                        Image(systemName: "person.crop.circle.badge.questionmark")
                            .font(.largeTitle)
                    }
                    
          
                    GroupBox {
                        
                        HStack {
                            //MARK: button 1
                            Button {
                                
                                showPopup = true
                                
                            } label: {
                                VStack{
                                    Text("Proceed to holding?")
                                    Image(systemName: "arrow.triangle.capsulepath")
                                        .font(.largeTitle)
                                }
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20)
                                            .fill(.blue))
                            
                            
                            //MARK: button 2
                            Button {
                                //
                            } label: {
                                VStack{
                                    Text("Make Missed Approach?")
                                    Image(systemName: "airplane.departure")
                                        .font(.largeTitle)
                                }
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20)
                                            .fill(.blue))
                            
                            
                        } //End of HStack1
          
                    
                        HStack {
                            //MARK: button 3
                            Button {
                                //
                            } label: {
                                VStack{
                                    Text("Proceed to alternate?")
                                    Image(systemName: "airplane.arrival")
                                        .font(.largeTitle)
                                }
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20)
                                            .fill(.blue))
            
                            //MARK: button 4
                            Button {
                                //
                            } label: {
                                VStack{
                                    Text("Yes or no?")
                                    HStack {
                                        Image(systemName: "hand.thumbsup")
                                        Image(systemName: "hand.thumbsdown")
                                    }
                                    .font(.largeTitle)
                                    
                                }
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 20)
                                            .fill(.blue))
                            
                            
                        } //End of HStack2
          
                    
                    
                }
            }
            
            
            
            //When binding is true, popup will appear
            if $showPopup.wrappedValue {
                
                ZStack{
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                    
                    //This VStack is the popup!
                    VStack(spacing: 20){
                        Text("Desition made!")
                            .bold()
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.orange)
                            .foregroundColor(.white)
                        Spacer()
                        
                        let result = logic.MakeDesition()
                        //print(result)
                        Text("Result is")
                        
                        
                        Button {
                            showPopup = false
                        } label: {
                            Divider()
                            Text("Close")
                        }
                        .padding()

                    }
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                }
                
            }
            
        }
        
        
        
        
        
        
       
        
        
        //
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
