//
//  ContentView.swift
//  Productive
//
//  Created by Elzine Brummelkamp on 2022/09/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Black").edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Hi, Vian!")
                        .foregroundColor(Color("White"))
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "calendar")
                        .foregroundColor(Color("White"))
                }
                
                Spacer()
                
                VStack(spacing: 15) {
                    HStack {
                        Text("iOS Development 303 Module")
                            .foregroundColor(Color("Red"))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "ellipsis")
                            .foregroundColor(Color("Red"))
                    }
                    
                    Text("Finish Task Three before 29 July 2022")
                        .foregroundColor(Color("White"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack(spacing: 20) {
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Tasks")
                                .foregroundColor(Color("White"))
                            
                            Text("10")
                                .foregroundColor(Color("White"))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Remaining")
                                .foregroundColor(Color("White"))
                            
                            Text("8")
                                .foregroundColor(Color("White"))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                        }
                    }
                    .padding(.top, 20)
                }
                .padding(15)
                .multilineTextAlignment(.leading)
                .background(Color("Gray"))
                .cornerRadius(15)
                
                Spacer()
                
                HStack {
                    Text("Backlogs")
                        .foregroundColor(Color("White"))
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("See All Tasks")
                        .foregroundColor(Color("White"))
                }
                
                Spacer()
                
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        Circle()
                            .foregroundColor(Color("Red"))
                            .frame(width: 50)
                        
                        Text("Library Theme & Concept")
                            .foregroundColor(Color("White"))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("Red"))
                    }
                    
                    HStack(spacing: 20) {
                        Circle()
                            .foregroundColor(Color("Red"))
                            .frame(width: 50)
                        
                        Text("Moodboards")
                            .foregroundColor(Color("White"))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("Red"))
                    }
                    
                    HStack(spacing: 20) {
                        Circle()
                            .foregroundColor(Color("Red"))
                            .frame(width: 50)
                        
                        Text("Colour Palette")
                            .foregroundColor(Color("White"))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("Red"))
                    }
                    
                    HStack(spacing: 20) {
                        Circle()
                            .foregroundColor(Color("Red"))
                            .frame(width: 50)
                        
                        Text("Wireframes")
                            .foregroundColor(Color("White"))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("Red"))
                    }
                    
                    HStack(spacing: 20) {
                        Circle()
                            .foregroundColor(Color("Red"))
                            .frame(width: 50)
                        
                        Text("App Icon Designs")
                            .foregroundColor(Color("White"))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("Red"))
                    }
                    
                    HStack(spacing: 20) {
                        Circle()
                            .foregroundColor(Color("Gray"))
                            .frame(width: 50)
                        
                        Text("Implement SwiftUI")
                            .foregroundColor(Color("White"))
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .foregroundColor(Color("Red"))
                    }
                }
                
                Spacer()
                
                Text("You can do this!")
                    .foregroundColor(Color("White"))
                    .font(.title)
                    .fontWeight(.bold)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
