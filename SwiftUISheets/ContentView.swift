//
//  ContentView.swift
//  SwiftUISheets
//
//  Created by Fatih Gümüş on 10.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State var sheets : Bool = false
    var body: some View {
        
        ZStack{
            Color.red
                .ignoresSafeArea(.all)
            
            VStack{
                Button(action: {
                    sheets.toggle()//tıklandığında değer false dan true ya dönecek.
                }, label: {
                   Text("Tıkla")
                        .foregroundStyle(Color.white)
                        .frame(width: 100,height: 50)
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                })
//                .sheet(isPresented: $sheets, content: {
//                    Text("Merhaba Dünya!")
//                })
//                .fullScreenCover(isPresented: $sheets, content: {
//                    ZStack {
//                        Color.blue
//                            .ignoresSafeArea(.all)
//                        Text("Merhaba Dünya!")
//                            .foregroundStyle(Color.white)
//                    }
//                })
                .fullScreenCover(isPresented: $sheets, content: {
                    secondScreen()
                })
            }
        }
    }
}

struct secondScreen: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack(alignment: .topLeading) {
            
            Color.blue
                .ignoresSafeArea(.all)
                       
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .padding(20)
            })

      
        }
        
    }
}

#Preview {
    ContentView()
}
