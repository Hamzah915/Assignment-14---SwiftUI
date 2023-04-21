//
//  GridScreen.swift
//  FirstProject
//
//  Created by Hamzah Azam on 21/04/2023.
//

import SwiftUI

struct GridScreen: View {
    let users = ["Hamzah", "Glenn", "Mohammed","Norman","Isiah","Taij"]
    let columns = [GridItem(),GridItem()]
    var body: some View {
        VStack{
            LazyVGrid(columns: columns){
                ForEach(users, id: \.self){ user in
                    HStack{
                        Image(systemName: "balloon.fill").frame(maxWidth:20, maxHeight: 20)
                        Text(user)
                        
                    }
                }
            }
            
        }
    }
}
    
struct GridScreen_Previews: PreviewProvider {
    static var previews: some View {
        GridScreen()
    }
}

