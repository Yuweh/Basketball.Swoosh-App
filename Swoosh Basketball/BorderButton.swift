//
//  BorderButton.swift
//  Swoosh Basketball
//
//  Created by Francis Jemuel Bergonia on 26/08/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

    
    
}
