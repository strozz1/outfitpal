//
//  ContentView.swift
//  Outfit pal
//
//  Created by Oscar Gonzalez Strozzi on 12/8/22.
//

import SwiftUI

struct ContentView: View {
    var heart = Image(systemName: "heart")
    @State var color = Color.primary
 
    
    var body: some View {
            VStack{
                HStack(alignment:.bottom, spacing: 10){
                    Spacer()
                    Button("Edit"){
                    }
                        .buttonStyle(.bordered)
                        .tint(.gray)
                        .font(.system(size: 20))
                        .buttonBorderShape(.roundedRectangle(radius: 10))
                        .foregroundColor(.primary)
                }
                Image("hat")
                    .resizable()
                    .frame(width: 135, height: 135)
                    .border(Color.black)
                Image("tshirt")
                    .resizable()
                    .frame(width: 135, height: 135)
                    .border(Color.black)
                Image("pants")
                    .resizable()
                    .frame(width: 135, height: 135)
                    .border(Color.black)
                Image("shoes")
                    .resizable()
                    .frame(width: 135, height: 135)
                    .border(Color.black)
                Spacer()
                Button(action: {
                    self.color = color == Color.red ? Color.primary : Color.red
                }){
                    heart
                        .resizable()
                        .frame(width: 40, height: 33, alignment: .center)
                        .foregroundColor(color)
                        
                }
            }
            .padding()
            
        
        
            .background(Color("defaultColor"))
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
            
            
    }
}
