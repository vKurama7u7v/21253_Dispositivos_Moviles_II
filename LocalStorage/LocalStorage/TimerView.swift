//
//  TimerView.swift
//  LocalStorage
//
//  Created by Aurelio Marín Bautista on 06/11/23.
//

import SwiftUI

struct TimerView: View {
    
    @ObservedObject var timer = MyTimer()
    
    var body: some View {
        VStack(){
            Text("\(timer.num)")
                .font(.title)
                .bold()
            
            HStack(){
                Button(action: {
                    timer.start()
                }){
                    Image(systemName: "play.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.green)
                    
                }
                
                Button(action: {
                    timer.stop()
                }){
                    Image(systemName: "pause.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.red)
                    
                }
                
                
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
