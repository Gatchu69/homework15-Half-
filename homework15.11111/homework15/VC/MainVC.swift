//
//  ViewController.swift
//  homework15
//
//  Created by Nodiko Gachava on 10.04.24.
//

import UIKit

class MainVC: UIViewController {
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let text1 = UITextField()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        addLabel1()
        addLabel2()
        addLabel3()
        addText1()
        addButton()
        
        
    }
// MARK: Add functions
    func addLabel1(){
        view.addSubview(label1)
        label1.text = "მიშა ცაგარელის ჰაბი"
        label1.textColor = .white
        label1.font = UIFont(name: "Sylfaen", size: 24)
        label1.textAlignment = .left
        
        setConstraintLabel1()
    }
    
    func addLabel2(){
        view.addSubview(label2)
        label2.text = """
მოცემულ აპლიკაციაში შეგიძლიათ გაიგოთ თქვენი ზოდიაქოს ყველაზე გამოკვეთილი უნარები და თვისებები.
"""
        label2.numberOfLines = 3
        label2.textColor = .white
        label2.font = UIFont(name: "Sylfaen", size: 16)
        label2.textAlignment = .left
        
        setConstraintLabel2()
    }
    
    func addLabel3(){
        view.addSubview(label3)
        label3.text = "ზოდიაქოს სახელი"
        label3.textAlignment = .left
        label3.textColor = .white
        label3.font = UIFont(name: "Sylfaen", size: 12)
        
        setConstraintLabel3()
    }
    
    func addText1(){
        view.addSubview(text1)
        text1.placeholder = "მაგ. კურო"
        text1.layer.borderColor = UIColor.white.cgColor
        text1.layer.borderWidth = 1.0
        
        addConstraintText1()
    }
    
    func addButton(){
        view.addSubview(button)
        button.setTitle("შემდეგი", for: .normal)
        button.backgroundColor = .purple
        
        addConstraintToButton()
        addAction()
    }
    
//  MARK: Constraints function
    func addConstraintText1(){
        text1.translatesAutoresizingMaskIntoConstraints = false
        
        text1.topAnchor.constraint(equalTo: view.topAnchor, constant: 305).isActive = true
        text1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        text1.widthAnchor.constraint(equalToConstant: 335).isActive = true
        text1.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    func setConstraintLabel1(){
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        label1.widthAnchor.constraint(equalToConstant: 229).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 34).isActive = true
        label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 71).isActive = true
        label1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 18).isActive = true
    }
    
    func setConstraintLabel2(){
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        label2.widthAnchor.constraint(equalToConstant: 327).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 66).isActive = true
        label2.topAnchor.constraint(equalTo: view.topAnchor, constant: 125).isActive = true
        label2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
    }
    
    func setConstraintLabel3(){
        label3.translatesAutoresizingMaskIntoConstraints = false
        
        label3.widthAnchor.constraint(equalToConstant: 327).isActive = true
        label3.heightAnchor.constraint(equalToConstant: 20).isActive = true
        label3.topAnchor.constraint(equalTo: view.topAnchor, constant: 282).isActive = true
        label3.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 22).isActive = true
    }
    
    func addConstraintToButton(){
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.widthAnchor.constraint(equalToConstant: 335).isActive = true
        button.heightAnchor.constraint(equalToConstant: 46).isActive = true
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 539).isActive = true
        button.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30).isActive = true
    }
    
    // MARK: Action
    func addAction(){
        button.addTarget(self, action: #selector(goToSecondVC), for: .touchUpInside)
    }
    
    @objc func goToSecondVC(){
        let secondVC = SecondVC()
        navigationController?.pushViewController(secondVC, animated: true)
    }
}



    
