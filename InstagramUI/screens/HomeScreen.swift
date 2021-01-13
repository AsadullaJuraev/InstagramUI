//
//  HomeScreen.swift
//  InstagramUI
//
//  Created by Asadulla Juraev on 13.01.2021.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    UserDefaults.standard.set(false, forKey: "status")
                    NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
                }, label: {
                    Text("Logout")
                }).foregroundColor(.red).font(.system(size:20))
            }
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location")).foregroundColor(.red)
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
