//
//  CheckItem.swift
//  TyperMemo
//
//  Created by tskim on 2018. 9. 15..
//

import Foundation
import RealmSwift

class CheckItem: Object, HasId {
  @objc dynamic var id: String = UUID().uuidString
  @objc dynamic var name: String = ""
  @objc dynamic var done: Bool = false
  convenience init(name: String, done: Bool = false) {
    self.init()
    self.name = name
    self.done = done
  }
}
