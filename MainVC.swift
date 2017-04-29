//
//  ViewController.swift
//  Tasty Foods
//
//  Created by amitverma on 22/02/17.
//  Copyright © 2017 Amit Verma. All rights reserved.
//

import UIKit

class MainVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var partyRocks=[PartyRock]()
    
    @IBOutlet weak var tableView:UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let p1=PartyRock(imageURL:"http://img.youtube.com/vi/U3h99zyc9Fw/default.jpg",videoURL:"https://www.youtube.com/embed/U3h99zyc9Fw",videoTitle:"Creamy Pasta")
        
         let p2=PartyRock(imageURL:"http://img.youtube.com/vi/EM1ymsnwf_8/default.jpg",
                          videoURL:"https://www.youtube.com/embed/EM1ymsnwf_8",
                          videoTitle:"Chicken corn spaghetti")
        
        let p3=PartyRock(imageURL:"http://img.youtube.com/vi/AL_Bn0nDVGg/default.jpg",
                         videoURL:"https://www.youtube.com/embed/AL_Bn0nDVGg",
                         videoTitle:"Creamy Chicken Pasta")
        
        let p4=PartyRock(imageURL:"http://img.youtube.com/vi/qdZFhPEPZRI/default.jpg",
                         videoURL:"https://www.youtube.com/embed/qdZFhPEPZRI",
                         videoTitle:"Pasta in tomato")
        
        let p5=PartyRock(imageURL:"http://img.youtube.com/vi/825o9ozT4w8/default.jpg",
                         videoURL:"https://www.youtube.com/embed/825o9ozT4w8",
                         videoTitle:"Spaghetti Aglio E Olio")
        
        let p6=PartyRock(imageURL:"http://img.youtube.com/vi/lSDZbyi_iW4/default.jpg",
                         videoURL:"https://www.youtube.com/embed/lSDZbyi_iW4",
                         videoTitle:"Creamy pasta salad")
        
        let p7=PartyRock(imageURL:"http://img.youtube.com/vi/j_BlRQ1v34A/default.jpg",
                         videoURL:"https://www.youtube.com/embed/j_BlRQ1v34A",
                         videoTitle:"Tasty Foods Channel Trailer ")
        
        let p8=PartyRock(imageURL:"http://img.youtube.com/vi/jWdnEiU_Lfw/default.jpg",
                         videoURL:"https://www.youtube.com/embed/jWdnEiU_Lfw",
                         videoTitle:"Yummy Macaroni")
        
        let p9=PartyRock(imageURL:"http://img.youtube.com/vi/rx0YW2QxImY/default.jpg",
                         videoURL:"https://www.youtube.com/embed/rx0YW2QxImY",
                         videoTitle:"Mushroom Spaghetti")

        let p10=PartyRock(imageURL:"http://img.youtube.com/vi/WgFVBsKl4eE/default.jpg",
                         videoURL:"https://www.youtube.com/embed/WgFVBsKl4eE",
                         videoTitle:"Creamy Broccoli Pasta")

        let p11=PartyRock(imageURL:"http://img.youtube.com/vi/qHvCK4m0-Dw/default.jpg",
                         videoURL:"https://www.youtube.com/embed/qHvCK4m0-Dw",
                         videoTitle:"Creamy onion Pasta")

        let p12=PartyRock(imageURL:"http://img.youtube.com/vi/r1YJuosYEfw/default.jpg",
                         videoURL:"https://www.youtube.com/embed/r1YJuosYEfw",
                         videoTitle:"Nutella Pasta")

        let p13=PartyRock(imageURL:"http://img.youtube.com/vi/x_AjrCYp7c8/default.jpg",
                         videoURL:"https://www.youtube.com/embed/x_AjrCYp7c8",
                         videoTitle:"Spaghetti Tomato Spicy")
        
        let p14=PartyRock(imageURL:"http://img.youtube.com/vi/3U9i3CBwYAc/default.jpg",
                          videoURL:"https://www.youtube.com/embed/3U9i3CBwYAc",
                          videoTitle:"Paneer Bhurji ")
        
        let p15=PartyRock(imageURL:"http://img.youtube.com/vi/RwGO8-BIruQ/default.jpg",
                          videoURL:"https://www.youtube.com/embed/RwGO8-BIruQ",
                          videoTitle:"Shrimp Spaghetti")
        

        let p16=PartyRock(imageURL:"http://img.youtube.com/vi/lqbPC8NdPaM/default.jpg",
                          videoURL:"https://www.youtube.com/embed/lqbPC8NdPaM",
                          videoTitle:"Rotini Pasta")
        

        


        partyRocks.append(p16)
        partyRocks.append(p15)
        partyRocks.append(p14)
        partyRocks.append(p13)
        partyRocks.append(p12)
        partyRocks.append(p11)
        partyRocks.append(p10)
        partyRocks.append(p9)
        partyRocks.append(p8)
        partyRocks.append(p7)
        partyRocks.append(p6)
        partyRocks.append(p5)
        partyRocks.append(p4)
        partyRocks.append(p3)
        partyRocks.append(p2)
        partyRocks.append(p1)
        
        
        


        
        tableView.delegate=self
        tableView.dataSource=self
        
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell=tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell
        {
            let partyRock=partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
        }
        else
        {
            return UITableViewCell()
        }
    }
    
    
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock=partyRocks[indexPath.row]
        performSegue(withIdentifier:"VideoVC",sender:partyRock)
        
    }
   
    override func prepare(for segue :UIStoryboardSegue,sender:Any?)
    {
        if let destination=segue.destination as? VideoVC{
            if let party=sender as? PartyRock{
                destination.partyRock=party
            }
        }
    }
    
    
    
    
}

