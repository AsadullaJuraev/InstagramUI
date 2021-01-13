//
//  Status.swift
//  InstagramUI
//
//  Created by Asadulla Juraev on 13.01.2021.
//

import Foundation
import Combine

class Status2: ObservableObject {
    var didChange = PassthroughSubject<Status2, Never>()
    @Published var userid: String? {didSet {self.didChange.send(self)}}
    
    func listen(){
        if let userid = UserDefaults.standard.string(forKey: "userid") {
            self.userid = userid
        }else{
            self.userid = nil
        }
    }
}
