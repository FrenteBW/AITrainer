//
//  CameraView.swift
//  AITrainer
//
//  Created by 안병욱의 mac on 2022/10/26.
//

import AVFoundation
import UIKit

final class CameraView: UIView {
    
    override class var layerClass: AnyClass {
        AVCaptureVideoPreviewLayer.self
    }
    var previewLayer: AVCaptureVideoPreviewLayer {
        layer as! AVCaptureVideoPreviewLayer
      }
}
