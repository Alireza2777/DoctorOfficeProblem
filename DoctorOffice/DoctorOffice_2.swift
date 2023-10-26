//
//  DoctorOffice_2.swift
//  DoctorOffice
//
//  Created by Alireza Karimi on 2023-10-16.
//

import SwiftUI

struct DoctorOffice_2: View {
    var body: some View {
    NavigationStack{
          ZStack{
            Color(.white)
              .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            HStack{
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 430, height: 104)
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
                .position(x:200, y: -10)
              Text("Doctor Office")
                .font(.system(size: 25)
                  .weight(.bold))
                .foregroundColor(.white)
                .position(x:-120, y: 0)
                .padding()
            }
            
            VStack{
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 158, height: 48)
                .background(.white)
                .cornerRadius(32)
                .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 2)
                .position(x:195 , y:100)
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 85, height: 48)
                .background(Color(red: 0.79, green: 0.11, blue: 0.19))
                .cornerRadius(32)
                .position(x:145 , y:-295)
                .padding()
            }
            VStack{
              Text("Doctor")
                .font(.system(size: 15).weight(.bold))
                .foregroundColor(.white)
                .position(x:160, y: 88)
                .padding(.top)
              Text("Patient")
                .font(.system(size: 15).weight(.bold))
                .foregroundColor(.gray)
                .position(x:240, y: -300)
                .padding(.top)
            }
            
            Button() {
              print("Buttom")
            }label: {
                Image("botom cyrcle")
                  .frame(width: 71, height: 71)
                  .shadow(color: .black.opacity(0.05), radius: 2, x: 0, y: -4)
                  .position(x: 300 , y: 580)
                  .padding()
                  
              }
            
            HStack {
              Image("Subtract")
                .position(x: 180 , y: 730)
                .padding()
            }
              Button() {
                print("Home")
              }label: {
                HStack{
                  Image("teenyicons_home-solid")
                    .frame(width: 40, height: 40)
                    .position(x: 35 , y: 720)
                    .padding()
                }
              }
            Button() {
              print("DoctorOffice")
            }label: {
              HStack{
                Image("Group 99")
                  .frame(width: 40, height: 40)
                  .position(x: 135 , y: 670)
                  .padding()
              }
            }
            
            Button() {
              print("Profile")
            }label: {
              HStack{
                Image("fluent_person-48-filled")
                .frame(width: 56, height: 56)
                  .position(x: 230 , y: 720)
                  .padding()
                  
              }
            }
            
              Button() {
                print("Setting")
              }label: {
                HStack{
                  Image("mdi_cog")
                    .frame(width: 56, height: 56)
                    .position(x: 325 , y: 720)
                    .padding()
                }
              }
           
            
              
            
            
            
          }
          
          
          
          .padding()
        }
    }
}

#Preview {
    DoctorOffice_2()
}
