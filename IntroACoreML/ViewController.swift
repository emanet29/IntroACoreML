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
    
    @IBOutlet weak var rotationBouton: UIButton!
    
    @IBOutlet weak var librairieBouton: UIButton!
    var captureSession: AVCaptureSession?
    var capturePhotoOutput: AVCapturePhotoOutput?
    var captureVideoPreviewLayer: AVCaptureVideoPreviewLayer?
    var position = AVCaptureDevice.Position.back
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        miseEnPlaceCamera()
        rotationBouton.layer.cornerRadius = 5
        librairieBouton.layer.cornerRadius = 5
        
    }

    @IBAction func librairieAction(_ sender: Any) {
    }
    
    @IBAction func rptationAction(_ sender: Any) {
        switch position {
        case .front:
            position = .back
        case .back:
            position = .front
        case .unspecified:
            position = .back
        }
        miseEnPlaceCamera()
        
    }
}

