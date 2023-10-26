//
//  DoctorOfficeApp.swift
//  DoctorOffice
//
//  Created by Alireza Karimi on 2023-09-22.
//

import SwiftUI

@main
struct SupportDifferentScreensSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ResponsiveView {properties in
              DoctorOffice_1(layoutProperties: properties)
            }
            .navigationViewStyle(.stack)
        }
    }
}
