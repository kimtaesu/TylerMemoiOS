//
//  ColoeThemeCollectionCell.swift
//  TyperMemo
//
//  Created by tskim on 2018. 9. 30..
//  Copyright © 2018년 tskim. All rights reserved.
//

import UIKit

class ColorThemeCollectionCell: UICollectionViewCell {
  private var color: UIColor = .clear
  private var borderColor: UIColor = ColorName.colorAccent
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    initView()
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  private func initView() {
    self.backgroundColor = .clear
  }
  override func draw(_ rect: CGRect) {
    if let con = UIGraphicsGetCurrentContext() {
      con.addEllipse(in: rect)
      con.setFillColor(borderColor.cgColor)
      con.fillPath()
      con.addEllipse(in: rect.insetBy(dx: 3, dy: 3))
      con.setFillColor(color.cgColor)
      con.fillPath()
    }
  }
}

extension ColorThemeCollectionCell {
  static var cellIdentifier: String = String(describing: self)

  func configureCell(colorTheme: ColorTheme) {
    color = colorTheme.color.toColor()
  }
}