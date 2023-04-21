//
//  ContentView.swift
//  FirstProject
//
//  Created by Hamzah Azam on 21/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var emailID:String = ""
    @State var password:String = ""
    @State var path = [Root]()
    let loginViewModel = LoginViewModel()
    var body: some View {
        NavigationStack(path: $path){
            VStack {
                TextField("EmailID", text:$emailID).textFieldStyle(.roundedBorder).padding()
                
                SecureField("Password", text: $password).textFieldStyle(.roundedBorder).padding()
                
                Group{
                    
                    
                    Button("Sign In"){
                        if loginViewModel.doValidLogin(emailID: emailID, passwordID: password){
                            print(emailID)
                            print(password)
                            
                            path.append(.details)
                        }else{
                            print("Invalid login")
                        }
                    }
                    
                    Button("List Screen"){
                        path.append(.list)
                    }
                    Button("Grid Screen"){
                        path.append(.grid)
                    }
                    
                }.frame(width:150).buttonStyle(.borderedProminent).padding()
                
                
            }
            .padding()
            .navigationDestination(for: Root.self){ navigate in
                switch navigate{
                case .details:
                    DetailsScreen(email: emailID, password: password)
                case .list:
                    ListScreen()
                case .grid:
                    GridScreen()
                default:
                    EmptyView()
                }
            }.navigationTitle(Text("Sign In"))
        }
    }
    enum Root{
        case list
        case details
        case grid
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
