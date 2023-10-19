//
//  GridExample.swift
//  GridStudy
//
//  Created by Migge on 19/10/23.
//

import SwiftUI

struct GridExample: View {
    
    let friendsList: [String] = ["Lucas, o homizão","Matheus","Fraviana","Daniboy","Bia","Marília","Berg","Anna","Bolsoni","Bruno","Piku","Agnes","Lílian","Zé","Fifizaum", "Melina", "Naná"]
    
    let colors: [Color] = [.red, .yellow, .blue, .green, .cyan, .pink, .orange]
    
    let columnLayout: [GridItem] = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(0...friendsList.count-1, id: \.self) {index in
                        ZStack {
                            Circle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(colors[index % colors.count])
//                                .cornerRadius(10)
                            
                            VStack (spacing: 10){
                                Image(systemName: "person.crop.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                Text("\(friendsList[index])")
                                    .foregroundColor(.white)
                                    .font(.system(size: 25, weight:.medium, design:.rounded))
                            }
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Friend's list")
        }
    }
}

struct GridExample_Previews: PreviewProvider {
    static var previews: some View {
        GridExample()
    }
}
