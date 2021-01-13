//
//  StarterScreen2.swift
//  InstagramUI
//
//  Created by Asadulla Juraev on 13.01.2021.
//

import SwiftUI

struct StarterScreen2: View {
    @EnvironmentObject var status2: Status2
    var body: some View {
        VStack{
            if self.status2.userid != nil{
                HomeScreen2()
            }else{
                SignInUpScreen2()
            }
        }
        .onAppear{
            status2.listen()
        }
    }
}

struct StarterScreen2_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen2()
    }
}
