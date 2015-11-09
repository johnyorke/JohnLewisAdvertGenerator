//
//  ViewController.swift
//  John Lewis Advert Generator
//
//  Created by John Yorke on 08/11/2015.
//  Copyright © 2015 John Yorke. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var newIdeaButton: UIButton!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    let leadCharDescriptiveWords = ["stinky","nervous","timid","overexcited","confused","sexy","smug"]
    
    let leadCharacters = ["moon","beefeater bear","cow","lawnmower","jock strap","rubber duck"]
    
    let verbs = ["travels","walks","skips","slides","belly flops"]
    
    let adverbs = ["excitedly","nervously","gingerly","cautiously","slowly"]
    
    let settings = ["accross the galaxy","through a snow drift in the Lake District","through a damp farmers market in Stevenage","just down the road"]
    
    let gifts = ["2nd hand iPod Touch","pretty decent beard grooming kit","crappy £50 drone","pack of Minstrels"]
    
    let recipientDescriptiveWords = ["ungrateful","cartoon","overweight","very attractive"]
    
    let recipients = ["toad","fisherman","billy goat","out-of-work actor"]
    
    let songs = ["Dead or Alive's You Spin Me Round","Spice Girl's Mama","the theme song to The Vicar of Dibley","Billie Piper's Because We Want To"]
    
    let singers = ["the chap that left One Direction","Sam Smith","Chris Martin","Leona Lewis"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func randomStringFromArray(array : [String]) -> String {
        let count = array.count
        let index = random() % count
        return array[index]
    }
    
    func newIdea() -> String {
        let firstDesWord = randomStringFromArray(leadCharDescriptiveWords)
        let character = randomStringFromArray(leadCharacters)
        let verb = randomStringFromArray(verbs)
        let adverb = randomStringFromArray(adverbs)
        let setting = randomStringFromArray(settings)
        let gift = randomStringFromArray(gifts)
        let recipientDesWord = randomStringFromArray(recipientDescriptiveWords)
        let recipient = randomStringFromArray(recipients)
        let song = randomStringFromArray(songs)
        let singer = randomStringFromArray(singers)
        
        return "A \(firstDesWord) \(character) \(verb) \(adverb) \(setting) to deliver a \(gift) to a \(recipientDesWord) \(recipient) to the sound of broken-down version of \(song) being sung by \(singer)."
    }
    
    @IBAction func newIdeaButtonTouchUpInside(sender: AnyObject) {
        mainLabel.text = newIdea()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

