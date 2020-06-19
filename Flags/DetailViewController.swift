//
//  DetailViewController.swift
//  Flags
//
//  Created by Helder on 19/06/20.
//  Copyright © 2020 Helder de Melo Sérvio Filho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    var name: String!
    var imageName: String!
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        title = name
        navigationItem.largeTitleDisplayMode = .never
        if let imageToLoad = imageName{
            image.layer.borderWidth = 1
            image.layer.borderColor = UIColor.lightGray.cgColor
            image.image = UIImage(named: imageToLoad)
        }
    }
    
    @objc func shareTapped(){
        guard let imageToBeShared = image.image?.jpegData(compressionQuality: 0.8)else{
            return
        }
        let ac = UIActivityViewController(activityItems: [name, imageToBeShared], applicationActivities: [])
        present(ac, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
