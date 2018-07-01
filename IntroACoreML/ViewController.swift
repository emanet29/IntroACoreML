//
//  ViewController.swift
//  IntroACoreML
//
//  Created by Snoopy on 01/07/2018.
//  Copyright © 2018 EMANET. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var cameraVue: UIView!
    @IBOutlet weak var photoChoisieImageView: UIImageView!
    @IBOutlet weak var predictionLabel: UILabel!
    
    
    var captureSession: AVCaptureSession?
    var capturePhotoOutput: AVCapturePhotoOutput?
    var captureVideoPreviewLayer: AVCaptureVideoPreviewLayer?
    var position = AVCaptureDevice.Position.back
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miseEnPlaceCamera()
    }


}

