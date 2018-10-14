//
//  CheckItem.swift
//  TyperMemo
//
//  Created by tskim on 2018. 9. 15..
//

import Foundation
import RealmSwift
import IGListKit

class CheckItem: Object {
  // swiftlint:disable:next identifier_name
  @objc dynamic var name: String = ""
  @objc dynamic var done: Bool = false
  
  convenience init(name: String, done: Bool = false) {
    self.init()
    self.name = name
    self.done = done
  }
}

extension CheckItem: ListDiffable {
  func diffIdentifier() -> NSObjectProtocol {
    return self as NSObjectProtocol
  }
  func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
    guard self !== object else { return true }
    guard let object = object as? CheckItem else { return false }
    return self == object
  }
}
