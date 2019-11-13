//
//  ViewController.swift
//  EasyFilter
//
//  Created by Apple on 2019/10/20.
//  Copyright © 2019 Nautilus. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var selectImage: UIImage?
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func openAlbum(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        
        present(imagePicker, animated: true, completion: nil)
        print("open album")
    }
    
    @IBAction func openCamera(_ sender: UIButton) {
        //performSegue(withIdentifier: "toCameraSegue", sender: sender)
        //        if UIImagePickerController.isSourceTypeAvailable(.camera) {
        //            let imagePicker = UIImagePickerController()
        //
        //            imagePicker.sourceType = .camera
        //            imagePicker.delegate = self
        //
        //            show(imagePicker, sender: self)
        //        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        selectImage = image.fixOrientation()
        
        dismiss(animated: false, completion: nil)
        
        let nextStoryboard = UIStoryboard(name: "ApplyFilter", bundle: nil)
        if let nextController = nextStoryboard.instantiateViewController(withIdentifier: "ApplyFilterView") as? ApplyFilterViewController {
            nextController.originalImage = selectImage
            // 顯示下一個畫面的兩種方式
            present(nextController, animated: true, completion: nil)
            //navigationController?.pushViewController(nextController, animated: true) 
        }
        //performSegue(withIdentifier: "mainToFilterCollectionPage", sender: self)
        /*let image = info[.originalImage] as! UIImage
         selectImage = image
         UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
         dismiss(animated: true, completion: nil)*/
        
        //if let controller = storyboard?.instantiateViewController(withIdentifier: "PreviewViewController") {
        //    present(controller, animated: true, completion: nil)
        //}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "mainToFilterCollectionPage"{
//            let destination = segue.destination as! FilterCollectionViewController
//            destination.filterImage = selectImage
//            print(destination)
//        }
//        else if segue.identifier == "toCameraSegue"{
//            let destination = segue.destination as! CameraViewController
//            print(destination)
 //       }
    }
    
}
