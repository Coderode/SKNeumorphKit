//
//  ViewController.swift
//  NMKit
//
//  Created by coderode on 07/29/2021.
//  Copyright (c) 2021 coderode. All rights reserved.
//

import UIKit
import SKNeumorphKit
class ViewController: UIViewController {
    @IBOutlet weak var nmSearchBar: NMSearchBar!
    @IBOutlet weak var nmActivityIndicator: NMActivityIndicator!
    @IBOutlet weak var nmPageControl: NMPageControl!
    @IBOutlet weak var nmStepper: NMStepper!
    @IBOutlet weak var nmProgressView: NMProgressView!
    @IBOutlet weak var nmSlider: NMSlider!
    @IBOutlet weak var nmSwitch: NMSwitch!
    @IBOutlet weak var nmLabel: NMLabel!
    @IBOutlet weak var nmTextField: NMTextField!
    @IBOutlet weak var nmView: NMView!
    @IBOutlet weak var neuButton: NMButtonView!
    @IBOutlet weak var buttonExmple: NMButtonView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = buttonExmple.themeColor
    }
    override func viewDidAppear(_ animated: Bool) {
        setupButtons()
        setupView()
        setupTextField()
        setupSwitch()
        setupUI()
    }
    func setupButtons(){
        self.buttonExmple.makeNeuromorphic(superView: self.view)
        self.neuButton.makeNeuromorphic(superView: self.view)
        neuButton.shadowType = .inner
        neuButton.bevel = 3
        buttonExmple.bevel = 3
        buttonExmple.cornerRadius = self.buttonExmple.bounds.height / 2
        buttonExmple.themeColor = .lightGray
        buttonExmple.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        buttonExmple.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)

        neuButton.cornerRadius = 20
        neuButton.themeColor = .lightGray
        neuButton.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        neuButton.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)
    }
    func setupView(){
        nmView.makeNeuromorphic(superView: self.view)
        nmView.shadowType = .inner
        nmView.bevel = 3
        nmView.themeColor = .lightGray
        nmView.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmView.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)
    }
    func setupTextField(){
        nmLabel.makeNeuromorphic(superView: self.view)
        nmLabel.shadowType = .outer
        nmLabel.bevel = 3
        nmLabel.themeColor = .lightGray
        nmLabel.text = "Sandeep"
        nmLabel.textColor = .black
        nmLabel.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmLabel.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)

        nmTextField.makeNeuromorphic(superView: self.view)
        nmTextField.shadowType = .inner
        nmTextField.bevel = 3
        nmTextField.backgroundColor = .lightGray
        nmTextField.themeColor = .lightGray
        nmTextField.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmTextField.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)
    }
    func setupSwitch(){
        nmSwitch.makeNeuromorphic(superView: self.view)
        nmSwitch.shadowType = .inner
        nmSwitch.bevel = 2
        nmSwitch.onTintColor = UIColor.black.withAlphaComponent(0.6)
        nmSwitch.backgroundColor = .lightGray
        nmSwitch.themeColor = .lightGray
        nmSwitch.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmSwitch.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)
    }
    func setupUI(){
        nmActivityIndicator.makeNeuromorphic(superView: self.view)
        nmActivityIndicator.shadowType = .inner
        nmActivityIndicator.bevel = 2
        nmActivityIndicator.backgroundColor = .lightGray
        nmActivityIndicator.themeColor = .lightGray
        nmActivityIndicator.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmActivityIndicator.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)

        nmPageControl.makeNeuromorphic(superView: self.view)
        nmPageControl.shadowType = .inner
        nmPageControl.bevel = 2
        nmPageControl.backgroundColor = .lightGray
        nmPageControl.themeColor = .lightGray
        nmPageControl.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmPageControl.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)


        nmStepper.makeNeuromorphic(superView: self.view)
        nmStepper.shadowType = .inner
        nmStepper.bevel = 2
        nmStepper.backgroundColor = .lightGray
        nmStepper.themeColor = .lightGray
        nmStepper.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmStepper.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)

        nmProgressView.makeNeuromorphic(superView: self.view)
        nmProgressView.shadowType = .inner
        nmProgressView.bevel = 2
        nmProgressView.backgroundColor = .lightGray
        nmProgressView.themeColor = .lightGray
        nmProgressView.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmProgressView.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)

        nmSlider.makeNeuromorphic(superView: self.view)
        nmSlider.shadowType = .inner
        nmSlider.bevel = 2
        nmSlider.backgroundColor = .lightGray
        nmSlider.themeColor = .lightGray
        nmSlider.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmSlider.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)

        nmSearchBar.makeNeuromorphic(superView: self.view)
        nmSearchBar.shadowType = .outer
        nmSearchBar.cornerRadius = 5
        nmSearchBar.bevel = 3
        nmSearchBar.searchTextField.placeholder = "Search"
        nmSearchBar.backgroundColor = .lightGray
        nmSearchBar.themeColor = .lightGray
        nmSearchBar.upperShadowColor = UIColor.white.withAlphaComponent(0.5)
        nmSearchBar.lowerShadowColor = UIColor.black.withAlphaComponent(0.5)
        nmSearchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: "Search", attributes: [NSAttributedStringKey.foregroundColor: UIColor.black])
    }
}

