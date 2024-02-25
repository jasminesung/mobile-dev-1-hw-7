//
//  ViewController.swift
//  TableView
//
//  Created by Jasmine Sung on 25/2/2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var songs = [
        Song("hunger games credit song", "Olivia Rodrigo", "2023", "Can't Catch Me Now"),
        Song("bonus track on Midnights album", "Taylor Swift", "2022", "Would've Could've Should've"),
        Song("vault track from 1989 Taylor's Version album", "Taylor Swift", "2023", "Is It Over Now?"),
        Song("breakout track for Noah Kahan", "Noah Kahan", "2022", "Stick Season"),
        Song("lead single for GUTS album", "Olivia Rodrigo", "2023", "Vampire"),
        Song("hit song in the 70s", "Carly Simon", "1972", "You're So Vain"),
        Song("comeback song of Twice in 2024", "Twice", "2024", "ONE SPARK"),
        Song("single of Red album", "Taylor Swift", "2012", "I Knew You Were Trouble"),
        Song("song about unrealistic expectations of female beauty", "Olivia Rodrigo", "2023", "pretty isn't pretty"),
        Song("breakout track for Lizzy McAlpine", "Lizzy McAlpine", "2022", "ceilings")
    ]
    
    var currentSong: Song!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = songs[indexPath.row].title
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected" + String(indexPath.row))
        currentSong = songs[indexPath.row]
        self.performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let detailNavigation = segue.destination as! DetailViewController
            detailNavigation.song = currentSong
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

