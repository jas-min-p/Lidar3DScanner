//
//  ModelViewerViewController.swift
//  Lidar3DScanner
//
//  Created by Jasmin Patel on 28/07/23.
//

import Foundation
import UIKit
import SceneKit
import SceneKit.ModelIO

class ModelViewerViewController: UIViewController {
    
    @IBOutlet var viewer: UIView!
    
    var filePath: String?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewer.Insert3D(filePath: filePath ?? "")
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func shareButtonPressed(_ sender: UIButton) {
        let activityController = UIActivityViewController(activityItems: [URL(string: filePath!)!], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sender
        self.present(activityController, animated: true, completion: nil)
    }
    
}

extension UIView {
    
    public func Insert3D(filePath: String) {
        guard let url = URL(string: filePath) else {
            fatalError("Failed to find model file.")
        }
        let asset = MDLAsset(url:url)
        guard let object = asset.object(at: 0) as? MDLMesh else {
            fatalError("Failed to get mesh from asset.")
        }
        print("Model Loaded!")
        let scene = SCNScene()

        let modelNode = SCNNode(mdlObject: object)
        
        scene.rootNode.addChildNode(modelNode)
        
        let scnView = SCNView(frame: CGRect(x: 0, y: 0, width: bounds.size.width, height: bounds.size.height))
        self.addSubview(scnView)
        scnView.scene = scene
        
        //set up scene
        scnView.autoenablesDefaultLighting = true
        scnView.allowsCameraControl = true
        scnView.scene = scene
        
    }
}
