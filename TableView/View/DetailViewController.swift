//
//  DetailViewController.swift
//  TableView
//
//  Created by Jasmine Sung on 25/2/2024.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    
    var song: Song!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showDetails()
    }
    
    func showDetails() {
        titleLabel.text = "Title: " + song.title
        artistLabel.text = "Artist: " + song.artist
        yearLabel.text = "Year: " + song.year
        descriptionLabel.text = "Description: " + song.description
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
