//
//  DetailViewController.swift
//  WhiteSoxMasterDetail
//
//  Created by Kamal Dandamudi on 10/23/15.
//  Copyright (c) 2015 Kamal Dandamudi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var namePositionLabel: UILabel!
    @IBOutlet weak var btValuesLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var placeHolderImage: UIImageView!
    @IBOutlet weak var btTitle: UILabel!
    @IBOutlet weak var heightTitle: UILabel!
    @IBOutlet weak var weightTitle: UILabel!
    @IBOutlet weak var dobTitle: UILabel!
    var detailItem: Player? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Player = self.detailItem{
            if let label = self.fullNameLabel {
                label.text = detail.lastName + ", " + detail.firstName
                let imagename = "playerimages/" + detail.lastName + detail.firstName + ".jpg"
                //println(imagename)
                if let image = UIImage(named: imagename){
                    placeHolderImage.image = image
                }
                else
                {
                    placeHolderImage.image = UIImage(named:"playerimages/placeholder.jpg")
                }
            }
            if let label = self.namePositionLabel {
                label.text = detail.number + " | " + detail.position
            }
            if let label = self.btValuesLabel {
                self.btTitle.hidden = false
                label.text = detail.bats + " / " + detail.throws
            }
            if let label = self.dobLabel {
                self.dobTitle.hidden = false
                label.text = detail.DOB
            }
            if let label = self.heightValueLabel {
                self.heightTitle.hidden = false
                label.text = detail.height
            }
            if let label = self.weightValueLabel {
                self.weightTitle.hidden = false
                label.text = detail.weight + " lbs."
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.fullNameLabel.text = ""
        self.namePositionLabel.text = ""
        self.btValuesLabel.text = ""
        self.weightValueLabel.text = ""
        self.heightValueLabel.text = ""
        self.dobLabel.text = ""
        self.weightTitle.hidden = true
        self.heightTitle.hidden = true
        self.dobTitle.hidden = true
        self.btTitle.hidden = true
        
        self.configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

