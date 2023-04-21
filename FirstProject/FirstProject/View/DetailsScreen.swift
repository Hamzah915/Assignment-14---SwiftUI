//
//  DetailsScreen.swift
//  FirstProject
//
//  Created by Hamzah Azam on 21/04/2023.
//

import SwiftUI

struct DetailsScreen: View {
    let email:String
    let password:String
    var body: some View {
        Text("email - \(email)")
        Text("password - \(password)")

    }
}

struct DetailsScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreen(email: "abc@abc.com", password: "12345678")
    }
}
