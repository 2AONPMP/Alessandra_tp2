
//------------------------------------------

import UIKit

//------------------------------------------

class ViewController: UIViewController {
    
    //--------------------------------------
    //Declaration et conexion des cards
    
    
    @IBOutlet weak var back_1: UIView!
    @IBOutlet weak var front_1: UIView!
    @IBOutlet weak var back_2: UIView!
    @IBOutlet weak var front_2: UIView!
    @IBOutlet weak var back_3: UIView!
    @IBOutlet weak var front_3: UIView!
    @IBOutlet weak var back_4: UIView!
    @IBOutlet weak var front_4: UIView!
    @IBOutlet weak var back_5: UIView!
    @IBOutlet weak var front_5: UIView!
    @IBOutlet weak var back_6: UIView!
    @IBOutlet weak var front_6: UIView!
    @IBOutlet weak var back_7: UIView!
    @IBOutlet weak var front_7: UIView!
    @IBOutlet weak var back_8: UIView!
    @IBOutlet weak var front_8: UIView!
    @IBOutlet weak var back_9: UIView!
    @IBOutlet weak var front_9: UIView!
    @IBOutlet weak var back_10: UIView!
    @IBOutlet weak var front_10: UIView!
    @IBOutlet weak var back_11: UIView!
    @IBOutlet weak var front_11: UIView!
    @IBOutlet weak var back_12: UIView!
    @IBOutlet weak var front_12: UIView!
    @IBOutlet weak var back_13: UIView!
    @IBOutlet weak var front_13: UIView!
    @IBOutlet weak var back_14: UIView!
    @IBOutlet weak var front_14: UIView!
    @IBOutlet weak var back_15: UIView!
    @IBOutlet weak var front_15: UIView!
    @IBOutlet weak var back_16: UIView!
    @IBOutlet weak var front_16: UIView!
    @IBOutlet weak var back_17: UIView!
    @IBOutlet weak var front_17: UIView!
    @IBOutlet weak var back_18: UIView!
    @IBOutlet weak var front_18: UIView!
    @IBOutlet weak var back_19: UIView!
    @IBOutlet weak var front_19: UIView!
    @IBOutlet weak var back_20: UIView!
    @IBOutlet weak var front_20: UIView!
    
    
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    @IBOutlet weak var imgView6: UIImageView!
    @IBOutlet weak var imgView7: UIImageView!
    @IBOutlet weak var imgView8: UIImageView!
    @IBOutlet weak var imgView9: UIImageView!
    @IBOutlet weak var imgView10: UIImageView!
    @IBOutlet weak var imgView11: UIImageView!
    @IBOutlet weak var imgView12: UIImageView!
    @IBOutlet weak var imgView13: UIImageView!
    @IBOutlet weak var imgView14: UIImageView!
    @IBOutlet weak var imgView15: UIImageView!
    @IBOutlet weak var imgView16: UIImageView!
    @IBOutlet weak var imgView17: UIImageView!
    @IBOutlet weak var imgView18: UIImageView!
    @IBOutlet weak var imgView19: UIImageView!
    @IBOutlet weak var imgView20: UIImageView!
    
    
    @IBOutlet weak var `super`: UIImageView!
    @IBOutlet weak var Card_1: UIView!
    @IBOutlet weak var Card_2: UIView!
    @IBOutlet weak var Card_3: UIView!
    @IBOutlet weak var Card_4: UIView!
    @IBOutlet weak var Card_5: UIView!
    @IBOutlet weak var Card_6: UIView!
    @IBOutlet weak var Card_7: UIView!
    @IBOutlet weak var Card_8: UIView!
    @IBOutlet weak var Card_9: UIView!
    @IBOutlet weak var Card_10: UIView!
    @IBOutlet weak var Card_11: UIView!
    @IBOutlet weak var Card_12: UIView!
    @IBOutlet weak var Card_13: UIView!
    @IBOutlet weak var Card_14: UIView!
    @IBOutlet weak var Card_15: UIView!
    @IBOutlet weak var Card_16: UIView!
    @IBOutlet weak var Card_17: UIView!
    @IBOutlet weak var Card_18: UIView!
    @IBOutlet weak var Card_19: UIView!
    @IBOutlet weak var Card_20: UIView!
    
    //------------------------------------------
    // Declaration des variables globais
 
    
    var arrayOfImageViews: [UIImageView]!
    var arrayOfAnimalNames = ["1-Oursnoel.png", "1-Oursnoel.png", "2-Escargot.png", "2-Escargot.png", "3-Tortue.png", "3-Tortue.png", "4-Abeille.png", "4-Abeille.png", "5-Homard.png", "5-Homard.png", "6-Cochon.png", "6-Cochon.png", "7-Eagle.png", "7-Eagle.png", "8-Giraffe.png", "8-Giraffe.png", "9-Requin.png", "9-Requin.png", "10-Souris.png", "10-Souris.png"]
    
    var arrayOfRandomAnimalNames = [String]()
    var arrayChosenCards = [String]()
    
    var arrayOfCards = [UIView]()
    
    var arrayOfShowingBacks = [UIView]()
    var arrayOfHidingFronts = [UIView]()
    
    var cards: [UIView]!

    
    
    //------------------------------------------
    //Atribuition initial des cards

    override func viewDidLoad() {
        super.viewDidLoad()
        cards = [Card_1, Card_2, Card_3, Card_4, Card_5, Card_6, Card_7, Card_8, Card_9, Card_10, Card_11, Card_12, Card_13, Card_14, Card_15, Card_16, Card_17, Card_18, Card_19, Card_20]
        arrayOfImageViews = [imgView1, imgView2, imgView3, imgView4, imgView5, imgView6, imgView7, imgView8, imgView9, imgView10, imgView11, imgView12, imgView13, imgView14, imgView15, imgView16, imgView17, imgView18, imgView19, imgView20]
        randomAnimals()
        setImagesToCards()
       
    }
    
    //------------------------------------------
    //Action de button de card en selection

    @IBAction func showCard(_ sender: UIButton) {
        if arrayOfHidingFronts.count == 2 {
            return
        }
        
        switch sender.tag {
        case 0:
            flipCard(from: front_1, to: back_1)
            arrayOfCards.append(Card_1)
            arrayOfShowingBacks.append(back_1)
            arrayOfHidingFronts.append(front_1)
        case 1:
            flipCard(from: front_2, to: back_2)
            arrayOfCards.append(Card_2)
            arrayOfShowingBacks.append(back_2)
            arrayOfHidingFronts.append(front_2)
        case 2:
            flipCard(from: front_3, to: back_3)
            arrayOfCards.append(Card_3)
            arrayOfShowingBacks.append(back_3)
            arrayOfHidingFronts.append(front_3)
        case 3:
            flipCard(from: front_4, to: back_4)
            arrayOfCards.append(Card_4)
            arrayOfShowingBacks.append(back_4)
            arrayOfHidingFronts.append(front_4)
        case 4:
            flipCard(from: front_5, to: back_5)
            arrayOfCards.append(Card_5)
            arrayOfShowingBacks.append(back_5)
            arrayOfHidingFronts.append(front_5)
        case 5:
            flipCard(from: front_6, to: back_6)
            arrayOfCards.append(Card_6)
            arrayOfShowingBacks.append(back_6)
            arrayOfHidingFronts.append(front_6)
        case 6:
            flipCard(from: front_7, to: back_7)
            arrayOfCards.append(Card_7)
            arrayOfShowingBacks.append(back_7)
            arrayOfHidingFronts.append(front_7)
        case 7:
            flipCard(from: front_8, to: back_8)
            arrayOfCards.append(Card_8)
            arrayOfShowingBacks.append(back_8)
            arrayOfHidingFronts.append(front_8)
        case 8:
            flipCard(from: front_9, to: back_9)
            arrayOfCards.append(Card_9)
            arrayOfShowingBacks.append(back_9)
            arrayOfHidingFronts.append(front_9)
        case 9:
            flipCard(from: front_10, to: back_10)
            arrayOfCards.append(Card_10)
            arrayOfShowingBacks.append(back_10)
            arrayOfHidingFronts.append(front_10)
        case 10:
            flipCard(from: front_11, to: back_11)
            arrayOfCards.append(Card_11)
            arrayOfShowingBacks.append(back_11)
            arrayOfHidingFronts.append(front_11)
        case 11:
            flipCard(from: front_12, to: back_12)
            arrayOfCards.append(Card_12)
            arrayOfShowingBacks.append(back_12)
            arrayOfHidingFronts.append(front_12)
        case 12:
            flipCard(from: front_13, to: back_13)
            arrayOfCards.append(Card_13)
            arrayOfShowingBacks.append(back_13)
            arrayOfHidingFronts.append(front_13)
        case 13:
            flipCard(from: front_14, to: back_14)
            arrayOfCards.append(Card_14)
            arrayOfShowingBacks.append(back_14)
            arrayOfHidingFronts.append(front_14)
        case 14:
            flipCard(from: front_15, to: back_15)
            arrayOfCards.append(Card_15)
            arrayOfShowingBacks.append(back_15)
            arrayOfHidingFronts.append(front_15)
        case 15:
            flipCard(from: front_16, to: back_16)
            arrayOfCards.append(Card_16)
            arrayOfShowingBacks.append(back_16)
            arrayOfHidingFronts.append(front_16)
        case 16:
            flipCard(from: front_17, to: back_17)
            arrayOfCards.append(Card_17)
            arrayOfShowingBacks.append(back_17)
            arrayOfHidingFronts.append(front_17)
        case 17:
            flipCard(from: front_18, to: back_18)
            arrayOfCards.append(Card_18)
            arrayOfShowingBacks.append(back_18)
            arrayOfHidingFronts.append(front_18)
        case 18:
            flipCard(from: front_19, to: back_19)
            arrayOfCards.append(Card_19)
            arrayOfShowingBacks.append(back_19)
            arrayOfHidingFronts.append(front_19)
        case 19:
            flipCard(from: front_20, to: back_20)
            arrayOfCards.append(Card_20)
            arrayOfShowingBacks.append(back_20)
            arrayOfHidingFronts.append(front_20)
        default:
        break
        }
        
        arrayChosenCards.append(arrayOfRandomAnimalNames[sender.tag])
        verification()
        
    }
    
    //------------------------------------------
    //Tourne le card
    
    func flipCard(from: UIView, to: UIView) {
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
        
        UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations: {
            from.isHidden = true
        })
        
        UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations: {
            to.isHidden = false
        })
    }

    //------------------------------------------
    //Atribuiton les images des animaux
    
    func setImagesToCards() {
        var number = 0
        for imgView in arrayOfImageViews {
            imgView.image = UIImage(named: arrayOfRandomAnimalNames[number])
            number = number + 1
        }
    }

    //------------------------------------------ 
    //Distribuition aleatory de figures des animaux
    
    func randomAnimals() {
        let numberOfAnimals = arrayOfAnimalNames.count
        for _ in 1...numberOfAnimals {
            let randomNumber = Int(arc4random_uniform(UInt32(arrayOfAnimalNames.count)))
            arrayOfRandomAnimalNames.append(arrayOfAnimalNames[randomNumber])
            arrayOfAnimalNames.remove(at: randomNumber)
        }
    }

   //------------------------------------------
   //Verification si les deux cards sont egals
    
    func verification() {
        if arrayChosenCards.count == 2 {
            if arrayChosenCards[0] == arrayChosenCards[1] {
                Timer.scheduledTimer(timeInterval: 2,
                                     target: self,
                                     selector: (#selector(hideCards)),
                                     userInfo: nil,
                                     repeats: false)
            } else {
                arrayOfCards = []
            }
            arrayChosenCards = []
        }
        resetCards()
    }
 
    //------------------------------------------
    //Masque les cards
    
    func hideCards() {
        arrayOfCards[0].isHidden = true
        arrayOfCards[1].isHidden = true
        arrayOfCards = []
    }
   
    
    //-------------------------------------------
    //Masque les deux cards
   
    func resetCards() {
        if arrayOfShowingBacks.count == 2 {
            Timer.scheduledTimer(timeInterval: 2,
                                 target: self,
                                 selector: (#selector(reFlip)),
                                 userInfo: nil,
                                 repeats: false)
        }
    }
 
    
    //------------------------------------------
    //Tourne les cards
    
    func reFlip() {
        for index in 0..<arrayOfShowingBacks.count {
            flipCard(from: arrayOfShowingBacks[index], to: arrayOfHidingFronts[index])
        }
        arrayOfShowingBacks = []
        arrayOfHidingFronts = []
    }
    
    
    //------------------------------------------
    //Initialization de tous les cards
    
    @IBAction func Reset(_ sender: UIButton) {
        for card in cards {
            card.isHidden =  false
        }

        arrayOfAnimalNames = ["1-Oursnoel.png", "1-Oursnoel.png", "2-Escargot.png", "2-Escargot.png", "3-Tortue.png", "3-Tortue.png", "4-Abeille.png", "4-Abeille.png", "5-Homard.png", "5-Homard.png", "6-Cochon.png", "6-Cochon.png", "7-Eagle.png", "7-Eagle.png", "8-Giraffe.png", "8-Giraffe.png", "9-Requin.png", "9-Requin.png", "10-Souris.png", "10-Souris.png"]
        
        arrayOfRandomAnimalNames = []
        randomAnimals()
        setImagesToCards()
        
    }
    
    
    //------------------------------------------
    }
    

   




