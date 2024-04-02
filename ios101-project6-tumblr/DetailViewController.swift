//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Adrian Hernandez on 3/30/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    var post: Post!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        textView.text = post.caption.trimHTMLTags()
            
        if let imageURLString = post.photos.first?.originalSize.url.absoluteString{
            Nuke.loadImage(with: URL(string: imageURLString)!, into: imageView)
            } else {
                print("Invalid image URL")
            }
                
            
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
