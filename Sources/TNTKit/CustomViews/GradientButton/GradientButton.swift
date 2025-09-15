//
//  GradientButton.swift
//  VCameraToolbox
//
//  Created by ThịnhNT on 6/11/24.
//

import UIKit
import _TNTKit

@IBDesignable
public class GradientButton: UIButton {

    private var gradientLayer: CAGradientLayer!
    
    @IBInspectable public var startColor: UIColor = .red {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable public var endColor: UIColor = .yellow {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var startPointX: CGFloat = 0.5 {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var startPointY: CGFloat = 0.5 {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var endPointX: CGFloat = 0.5 {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var endPointY: CGFloat = 0.5 {
        didSet { setNeedsLayout() }
    }
    
    public override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        self.gradientLayer = self.layer as? CAGradientLayer
        self.gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        self.gradientLayer.startPoint = CGPoint(x: startPointX, y: startPointY)
        self.gradientLayer.endPoint = CGPoint(x: endPointX, y: endPointY)
    }
    
    func animate(duration: TimeInterval, newTopColor: UIColor, newBottomColor: UIColor) {
        let fromColors = self.gradientLayer?.colors
        let toColors: [AnyObject] = [ newTopColor.cgColor, newBottomColor.cgColor]
        self.gradientLayer?.colors = toColors
        let animation : CABasicAnimation = CABasicAnimation(keyPath: "colors")
        animation.fromValue = fromColors
        animation.toValue = toColors
        animation.duration = duration
        animation.isRemovedOnCompletion = true
        animation.fillMode = .forwards
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        self.gradientLayer?.add(animation, forKey:"animateGradient")
    }
}
