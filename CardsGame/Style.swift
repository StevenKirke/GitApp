//
//  Styles.swift
//  LessonTwelveUITExtField
//
//  Created by Steven Kirke on 13.03.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import Foundation
import UIKit

class CustomElements {
    func createButton(positionX: CGFloat, positionY: CGFloat, widthParam: CGFloat, heightParam: CGFloat, textTittle: String) -> UIButton {
        var myBotton = UIButton()
        myBotton = UIButton(frame: CGRect(x: 0, y: 0, width: widthParam, height: heightParam))
        myBotton.setTitle(textTittle, for: .normal)
        myBotton.layer.backgroundColor = UIColor.gray.cgColor
        myBotton.layer.cornerRadius = 7
        myBotton.center.x = positionX
        myBotton.center.y = positionY
        return myBotton
    }
    func createImage(positionX: CGFloat, positionY: CGFloat, paramWidth: CGFloat, paramHeight: CGFloat, nameImage: String, tags: Int) -> UIImageView {
        var card = UIImageView()
        card = UIImageView(frame: CGRect(x: 0, y: 0, width: paramWidth, height: paramHeight))
        card.image = UIImage(named: nameImage)
        card.center.x = positionX
        card.center.y = positionY
        card.tag = tags
        card.layer.shadowRadius = 1
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOffset = CGSize(width: 5, height: 5)
        card.layer.shadowOpacity = 0.4
        return card
    }
    func createStack(positionX: CGFloat, positionY: CGFloat, paramWidth: CGFloat, paramHeight: CGFloat) -> UIStackView {
        //var myStack = UIStackView()
        let myStack = UIStackView(frame: CGRect(x: 0, y: 0, width: paramWidth, height: paramHeight))
        myStack.axis = .vertical
        myStack.distribution = .fillEqually
        myStack.spacing = 0
        myStack.center.x = positionX
        myStack.center.y = positionY
        return myStack
    }
    func createLabel(positionX: CGFloat, positionY: CGFloat, paramHeight: CGFloat, textField: String, fontSize: CGFloat, paramBorder: CGFloat) -> UILabel {
        var myLabel = UILabel()
        myLabel = UILabel(frame: CGRect(x: positionX, y: positionY, width: 150, height: paramHeight))
        myLabel.layer.borderWidth = paramBorder
        myLabel.layer.cornerRadius = 7
        myLabel.text = textField
        myLabel.textAlignment = .center
        myLabel.layer.borderColor = UIColor.red.cgColor
        myLabel.textColor = UIColor.white
        myLabel.font = myLabel.font.withSize(fontSize)
        return myLabel
    }
}

class BlockImageCard {
    var arreyImage = [
        //diamondsCArd
        ["diamondsJack.png","1","diamonds"],
        ["diamondsLady.png","2","diamonds"],
        ["diamondsKing.png","3","diamonds"],
        ["diamondsSix.png","6","diamonds"],
        ["diamondsSeven.png","7","diamonds"],
        ["diamondsEight.png","8","diamonds"],
        ["diamondsNine.png","9","diamonds"],
        ["diamondsTen.png","10","diamonds"],
        ["diamondsAce.png","11","diamonds"],
        //clubsCArd
        ["clubsJack.png","1","diamonds"],
        ["clubsLady.png","2","diamonds"],
        ["clubsKing.png","3","diamonds"],
        ["clubsSix.png","6","diamonds"],
        ["clubsSeven.png","7","diamonds"],
        ["clubsEight.png","8","diamonds"],
        ["clubsNine.png","9","diamonds"],
        ["clubsTen.png","10","diamonds"],
        ["clubsAce.png","11","diamonds"],
        //heardsCArd
        ["heardsJack.png","1","diamonds"],
        ["heardsLady.png","2","diamonds"],
        ["heardsKing.png","3","diamonds"],
        ["heardsSix.png","6","diamonds"],
        ["heardsSeven.png","7","diamonds"],
        ["heardsEight.png","8","diamonds"],
        ["heardsNine.png","9","diamonds"],
        ["heardsTen.png","10","diamonds"],
        ["heardsAce.png","11","diamonds"],
        //spadesCArd
        ["spadesJack.png","1","diamonds"],
        ["spadesLady.png","2","diamonds"],
        ["spadesKing.png","3","diamonds"],
        ["spadesSix.png","6","diamonds"],
        ["spadesSeven.png","7","diamonds"],
        ["spadesEight.png","8","diamonds"],
        ["spadesNine.png","9","diamonds"],
        ["spadesTen.png","10","diamonds"],
        ["spadesAce.png","11","diamonds"]
    ]
}

//addMiddleBorderWithColor(color: buttonBorderColor, width: 3.0)



