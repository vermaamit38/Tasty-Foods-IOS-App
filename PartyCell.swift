//
//  PartyCell.swift
//  Tasty Foods
//
//  Created by amitverma on 23/02/17.
//  Copyright © 2017 Amit Verma. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

       
    
    @IBOutlet weak var VideoTitle: UILabel!
    @IBOutlet weak var VideoImagePreview: UIImageView!
    
    
    func updateUI(partyRock:PartyRock)
    {
        VideoTitle.text=partyRock.videoTitle
        let url=URL(string: partyRock.imageURL)!
        DispatchQueue.global().async
            {
            
            do{
                let data=try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.VideoImagePreview.image=UIImage(data: data)
                    
                }
            }
            catch {
                //handle the error
            }
        }
    }

}
