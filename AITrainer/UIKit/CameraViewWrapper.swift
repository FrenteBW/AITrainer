//
//  CameraViewWrapper.swift
//  AITrainer
//
//  Created by 안병욱의 mac on 2022/10/26.
//

import Foundation
import SwiftUI
import AVFoundation
import Vision
import UIKit

struct CameraViewWrapper: UIViewControllerRepresentable {
    var poseEstimator: PoseEstimator
    func makeUIViewController(context: Context) -> some UIViewController {
        let cvc = CameraViewController()
        cvc.delegate = poseEstimator
        return cvc
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
