//
//  ViewController.swift
//  LessonTwelveUITExtField
//
//  Created by Steven Kirke on 13.03.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    // Initialisation you`r class
    let customElements                 = CustomElements()
    var cardImages                     = BlockImageCard()
    // Initialisationvariable
    var cardPlayerOne                  = UIImageView()
    var cardPlayerTwo                  = UIImageView()
    var cardCPUOne                     = UIImageView()
    var cardCPUTwo                     = UIImageView()
    var buttonStart                    = UIButton()
    let arreyParamCard                 = [144, 200]
    override func viewDidLoad() {
        super.viewDidLoad()
        let arreyPosiion = [
            self.view.center.x,
            self.view.center.y,
            self.view.bounds.maxY,
            self.view.bounds.minY
        ]

        
        // Create background
        let backgroundImage = customElements.createImage(positionX: arreyPosiion[0], positionY: arreyPosiion[1], paramWidth: arreyPosiion[2], paramHeight: view.bounds.maxY * 2, nameImage: "ClothForCard.png", tags: 1)
        view.addSubview(backgroundImage)
        
        // Create StackView for Lavel score indicator Player
        let scoreStackPlayer = customElements.createStack(positionX: arreyPosiion[0], positionY: arreyPosiion[1] + 100, paramWidth: 100, paramHeight: 80)
        view.addSubview(scoreStackPlayer)
        
        // Create you`r block score
        let scoreNumberPlayer = customElements.createLabel(positionX: 0, positionY: 0, paramHeight: 120, textField: "0", fontSize: 30, paramBorder: 0)
        let scoreTextPlayer = customElements.createLabel(positionX: 0, positionY: 0, paramHeight: 30, textField: "You`r points", fontSize: 16, paramBorder: 0)
        [scoreNumberPlayer, scoreTextPlayer].forEach {
            scoreStackPlayer.addArrangedSubview($0)
        }
        
        // Create StackView for Lavel score indicator CPU
        let scoreStackCPU = customElements.createStack(positionX: arreyPosiion[0], positionY: arreyPosiion[1] - 100, paramWidth: 100, paramHeight: 80)
        view.addSubview(scoreStackCPU)
        
        // Create CPU block score
        let scoreNumberCPU = customElements.createLabel(positionX: 0, positionY: 0, paramHeight: 120, textField: "0", fontSize: 30, paramBorder: 0)
        let scoreTextCPU = customElements.createLabel(positionX: 0, positionY: 0, paramHeight: 30, textField: "CPU points", fontSize: 16, paramBorder: 0)
        [scoreTextCPU, scoreNumberCPU].forEach {
            scoreStackCPU.addArrangedSubview($0)
        }
        
        // Create botton start game
        buttonStart = customElements.createButton(positionX: arreyPosiion[0], positionY: arreyPosiion[2] - 70, widthParam: 140, heightParam: 31, textTittle: "Раздать карты")
        view.addSubview(buttonStart)
        buttonStart.addTarget(self, action: #selector(ShowCardPlayer), for: .touchDown)
        
        
        // Create player cards
        cardPlayerOne = customElements.createImage(positionX: arreyPosiion[0], positionY: arreyPosiion[3] - CGFloat(arreyParamCard[0]), paramWidth: CGFloat(arreyParamCard[0]), paramHeight: CGFloat(arreyParamCard[1]), nameImage: "back.png", tags: 1)
        cardPlayerTwo = customElements.createImage(positionX: arreyPosiion[0], positionY: arreyPosiion[3] - CGFloat(arreyParamCard[0]), paramWidth: CGFloat(arreyParamCard[0]), paramHeight: CGFloat(arreyParamCard[1]), nameImage: "back.png", tags: 2)
        
        // Create CPU cards
        cardCPUOne = customElements.createImage(positionX: arreyPosiion[0], positionY: arreyPosiion[3] - CGFloat(arreyParamCard[0]), paramWidth: CGFloat(arreyParamCard[0]), paramHeight: CGFloat(arreyParamCard[1]), nameImage: "back.png", tags: 3)
        cardCPUTwo = customElements.createImage(positionX: arreyPosiion[0], positionY: arreyPosiion[3] - CGFloat(arreyParamCard[0]), paramWidth: CGFloat(arreyParamCard[0]), paramHeight: CGFloat(arreyParamCard[1]), nameImage: "back.png", tags: 4)
        
        [cardPlayerOne, cardPlayerTwo, cardCPUOne, cardCPUTwo].forEach {
            view.addSubview($0)
        }
    }
    
    @objc func ShowCardPlayer() {
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.cardPlayerOne.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 400)
        }, completion: nil)
        print(self.view.center.x)
        let ss = self.buttonStart.center.x
        print("card = \(ss)")
    }
}
