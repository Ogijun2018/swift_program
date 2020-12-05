//
//  UIImageExtensions.swift
//  CameraApp
//
//  Created by 荻野隼 on 2020/12/06.
//

import UIKit

extension UIImage{
    func redraw() -> UIImage{
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image {
                context in
                draw(in: CGRect(origin: .zero, size: size))
            }
    }
}
