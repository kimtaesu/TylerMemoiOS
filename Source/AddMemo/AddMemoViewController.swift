//
//  AddMemoViewController.swift
//  TyperMemo
//
//  Created by tskim on 2018. 9. 29..
//  Copyright © 2018년 tskim. All rights reserved.
//

import RxCocoa
import RxSwift
import UIKit

class AddMemoViewController: UIViewController, StoryboardInitializable {

  @IBOutlet weak private var button: UIButton!
  @objc func buttonClick() {
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
  }
}
extension AddMemoViewController {
  static func makeAddMemoViewController() -> AddMemoViewController {
    return AddMemoViewController.initFromStoryboard(name: "AddMemo")
  }
}