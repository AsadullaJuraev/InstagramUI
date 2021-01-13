//
//  StarterScreen.swift
//  InstagramUI
//
//  Created by Asadulla Juraev on 13.01.2021.
//

import SwiftUI

struct StarterScreen: View {
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    var body: some View {
        VStack{
            if self.status {
                HomeScreen()
            }else{
                SignInUpScreen()
            }
        }
        .onAppear{
            let Name = NSNotification.Name("status")
            NotificationCenter.default.addObserver(forName: Name, object: nil, queue: .main) { (_) in
                self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
            }
        }
    }
}

struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
