//
//  XButton.swift
//  ContactKit-UI
//
//  Created by yu chen on 2022/1/19.
//

import UIKit

public class ExpandButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    public override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        var bounds = self.bounds
        // 若原热区小于44*44， 则放大热区，否则保持不变
        let widthDelta = max(44.0 - bounds.size.width, 0)
        let heightDelta = max(44.0 - bounds.size.height, 0)
        
        bounds = bounds.insetBy(dx: -0.5 * widthDelta, dy: -0.5 * heightDelta)
        
        // 如果返回新的bounds里，就返回YES
        return bounds.contains(point)
    }

}
