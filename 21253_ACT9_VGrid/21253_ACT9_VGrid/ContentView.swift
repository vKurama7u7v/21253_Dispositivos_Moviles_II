//
//  ContentView.swift
//  21253_ACT9_VGrid
//
//  Created by Aurelio Marín Bautista on 23/10/23.
//

import SwiftUI

struct ContentView: View {
    
    // Students Data
    let studentsViewModel = StudentModelView().dummyData()
    
    // URL Image
    let icon = "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png"

    // GridLayout
    let columns = [
        GridItem(.flexible(minimum: 300))
    ]
    
    var body: some View {
        VStack {
            // SearchView
            
            // List of Students
            ScrollView(){
                GeometryReader() { geometry in
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(studentsViewModel) { student in
                            CardView(
                                icon: icon,
                                id_iest: student.id_iest,
                                full_name: student.full_name,
                                email: student.email,
                                career: student.career
                            )
                        }
                    }
                }
            }
            
        }.padding(.horizontal, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
