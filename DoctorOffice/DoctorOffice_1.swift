//
//  DoctorOffice_1.swift
//  DoctorOffice
//
//  Created by Alireza Karimi on 2023-10-26.
//

import SwiftUI

struct DoctorOffice_1: View {
  let layoutProperties:LayoutProperties
  var gridItems:[GridItem]{
          if(layoutProperties.width > 700 || layoutProperties.landscape){
              return [
                  GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())
              ]
          }else{
              return [
                  GridItem(.flexible()), GridItem(.flexible())
              ]
          }
      }
  var body: some View {
    ViewThatFits{
      ZStack{
        Color(.white)
          .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        Rectangle()
          .foregroundColor(.clear)
          .frame(maxWidth: 430, maxHeight: 104)
          .background(
            LinearGradient(
              stops: [
                Gradient.Stop(color: .black.opacity(0.2), location: 0.25),
                Gradient.Stop(color: .black.opacity(0), location: 1.00),
              ],
              startPoint: UnitPoint(x: 1, y: 0.5),
              endPoint: UnitPoint(x: 0, y: 0.5)
            )
          )
          .background(Color(red: 0.93, green: 0.13, blue: 0.22))
          .cornerRadius(30)
          .offset(x: 0, y: -400)
        
        Text("Doctor Office")
          .font(.system(size: 25)
            .weight(.bold))
          .foregroundColor(.white)
          .offset(x: -95, y: -380)
        Image("Group 101")
          .frame(maxWidth: 160, maxHeight: 160)
          .offset(x: -4, y: -16)
        Rectangle()
          .foregroundColor(.clear)
          .frame(maxWidth: 158, maxHeight: 48)
          .background(.white)
          .cornerRadius(32)
          .offset(x: 0, y: -310)
          .shadow(
            color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 4, y: 2
          )
        Rectangle()
          .foregroundColor(.clear)
          .frame(maxWidth: 85, maxHeight: 48)
          .background(Color(red: 0.79, green: 0.11, blue: 0.19))
          .cornerRadius(32)
          .offset(x: -36.50, y: -310)
        Text("Doctor")
          .font(.system(size: 16).weight(.bold))
          .foregroundColor(.white)
          .offset(x: -39, y: -309.50)
        Button("Patient"){
          print("Patient")
        }
        .font(.system(size: 16).weight(.bold))
        .foregroundColor(Color(red: 0.50, green: 0.50, blue: 0.50))
        .offset(x: 38, y: -309.50)
        //      Ellipse()
        //        .foregroundColor(.clear)
        //        .frame(width: 71, height: 71)
        //        .background(Color(red: 0.93, green: 0.13, blue: 0.22))
        //        .offset(x: 140.50, y: 274.50)
        Button() {
          print("Buttom")
        }label: {
          Image("botom cyrcle")
            .frame(maxWidth: 71, maxHeight: 71)
            .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: -4)
            .offset(x: 140.50, y: 240.50)
        }
        
        Image("Subtract")
          .frame(maxWidth: 430, maxHeight: 136)
          .offset(x: 0 , y: 370)
        
        
        Button() {
          print("Home")
        }label: {
          
          Image("teenyicons_home-solid")
            .frame(maxWidth: 40, maxHeight: 40)
            .offset(x: -150 , y: 370)
        }
        Button() {
          print("DoctorOffice")
        }label: {
          
          Image("Group 99")
            .frame(maxWidth: 40, maxHeight: 40)
            .offset(x: -45 , y: 320)
          
        }
        Button() {
          print("Profile")
        }label: {
          
          Image("fluent_person-48-filled")
            .frame(maxWidth: 56, maxHeight: 56)
            .offset(x: 45 , y: 370)
        }
        
        Button() {
          print("Setting")
        }label: {
          
          Image("mdi_cog")
            .frame(maxWidth: 56, maxHeight: 56)
            .offset(x: 150 , y: 370)
          
        }
        .padding()
        
        
      }
    }
  }
}
struct WelcomeRootView<Content:View>:View{
    let isLandscape:Bool
    @ViewBuilder var content:()->Content
    var body: some View{
        
        if(isLandscape){
            HStack{
                content()
            }
        }else{
            VStack{
                content()
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
          DoctorOffice_1(
                layoutProperties: getPreviewLayoutProperties(landscape: false, height: 844, width: 390)
            )
            .previewDevice("iPhone")
            
          DoctorOffice_1(
                layoutProperties: getPreviewLayoutProperties(landscape: false, height: 1194, width: 834)
            )
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
          DoctorOffice_1(
                layoutProperties: getPreviewLayoutProperties(landscape: true, height: 844, width: 390)
            )
            .previewDevice("iPhone")
            
          DoctorOffice_1(
                layoutProperties: getPreviewLayoutProperties(landscape: true, height: 1194, width: 834)
            )
            .previewDevice("iPad Pro (11-inch) (3rd generation)")
        }
        
    }
}
  
//  struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//      DoctorOffice_1()
//    }
//  }

