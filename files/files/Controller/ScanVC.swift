////
////  ScanVC.swift
////  files
////
////  Created by Esraa Eid on 5/5/20.
////  Copyright © 2020 Esraa Eid. All rights reserved.
////
//
//import UIKit
//import VisionKit
//import Vision
//
//class ScanVC: UIViewController{
//
//    @IBOutlet weak var imageSelected: UIImageView!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//       
//    }
//   
//    @IBAction func ScanBtnClicked(_ sender: Any) {
//        let scannerViewController = VNDocumentCameraViewController()
//        scannerViewController.delegate = self
//        present(scannerViewController, animated: true)
//     
//    }
//    
//    
//}
//
////Scan Delegate
//extension ScanVC: VNDocumentCameraViewControllerDelegate{
//    
//    func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) {
//          controller.dismiss(animated: true)
//           print("Found \(scan.pageCount)")
//           for i in 0 ..< scan.pageCount{
//               
//               let img = scan.imageOfPage(at: i)
//            imageSelected.image = img
//           }
//       }
//    
//    func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
//           controller.dismiss(animated: true)
//       }
//       
//       func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
//           controller.dismiss(animated: true)
//       }
//  
//
//}
//
