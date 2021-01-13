//
//  HomeScreen2.swift
//  InstagramUI
//
//  Created by Asadulla Juraev on 13.01.2021.
//

import SwiftUI

struct HomeScreen2: View {
    @EnvironmentObject var status2: Status2
    var body: some View {
        NavigationView{
            VStack{
                Button(action: {
                    UserDefaults.standard.removeObject(forKey: "userid")
                    status2.listen()
                }, label: {
                    Text("Logout")
                })
            }
            .navigationBarItems(leading: Image(systemName: "camera"), trailing: Image(systemName: "location"))
            .foregroundColor(.red)
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeScreen2_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen2()
    }
}
