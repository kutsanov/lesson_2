//
//  ViewController.swift
//  lesson_2
//
//  Created by Vova Kutsanov on 29.02.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet weak var windowColor: UIView!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setWindowBg()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        initCtrl()

    }
    
    private func initCtrl() {
        
        // Устанавливаем градиент
        let view = UIView(frame: CGRect(x: 0, y: 0, width: mainView.frame.width, height: mainView.frame.height))
        let gradient = CAGradientLayer()
        
        let colorBgTop = #colorLiteral(red: 0.3367069662, green: 0.3678298891, blue: 0.7136109471, alpha: 1).cgColor
        let colorBgFooter = #colorLiteral(red: 0.3469910324, green: 0.1566875577, blue: 0.321700722, alpha: 1).cgColor

        gradient.frame = view.bounds
        gradient.colors = [colorBgTop, colorBgFooter]
        
        mainView.layer.insertSublayer(gradient, at: 0)
        
        //Настрииваем красивость окна для цветов
        windowColor.layer.cornerRadius = 30
        windowColor.layer.shadowColor = UIColor.black.cgColor
        windowColor.layer.shadowOpacity = 0.5
        windowColor.layer.shadowOffset = CGSize(width: 5, height: 5)
        windowColor.layer.shadowRadius = 10
        
        
        
        
    }
    
    private func setWindowBg() {
        windowColor.backgroundColor = UIColor(
            red: CGFloat(sliderRed.value) / 255,
            green: CGFloat(sliderGreen.value) / 255,
            blue: CGFloat(sliderBlue.value) / 255,
            alpha: CGFloat(1.0)
        )
        
        // Устанавливаем значения меток в соответствии с сллайдером
        labelRed.text = String(Int(sliderRed.value))
        labelGreen.text = String(Int(sliderGreen.value))
        labelBlue.text = String(Int(sliderBlue.value))
    }


    @IBAction func sliderRedAction() {
        setWindowBg()
    }
    
    @IBAction func sliderGreenAction() {
        setWindowBg()
    }
    
    @IBAction func sliderBlueAction() {
        setWindowBg()
    }
    
    
    
}

