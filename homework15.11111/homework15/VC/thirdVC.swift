//
//  thirdVC.swift
//  homework15
//
//  Created by Nodiko Gachava on 11.04.24.
//

import UIKit

class ThirdVC: UIViewController {
    let image1 = UIImageView()
    let label1 = UILabel()
    let button1 = UIButton()
    let button2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        addImage()
        addLabel()
        addButton1()
        addButton2()
    }
    
    func addImage(){
        view.addSubview(image1)
        
        image1.image = UIImage(named: "Icon-12")
        
        image1.translatesAutoresizingMaskIntoConstraints = false
        
        image1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image1.topAnchor.constraint(equalTo: view.topAnchor, constant: 309).isActive = true
        image1.widthAnchor.constraint(equalToConstant: 165).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 194).isActive = true
    }
    func addLabel(){
        view.addSubview(label1)
        label1.text = "თევზები"
        label1.textAlignment = .center
        label1.font = UIFont(name: "Sylfaen", size: 24)
        label1.textColor = .white
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 88).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 34).isActive = true
    }
    func addButton1(){
        view.addSubview(button1)
        button1.setTitle("წითელი", for: .normal)
        button1.backgroundColor = .systemRed
        button1.layer.cornerRadius = 12
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 638).isActive = true
        button1.widthAnchor.constraint(equalToConstant: 335).isActive = true
        button1.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
    }
    func addButton2(){
        view.addSubview(button2)
        button2.setTitle("ლურჯი", for: .normal)
        button2.backgroundColor = .systemBlue
        button2.layer.cornerRadius = 12
        button2.translatesAutoresizingMaskIntoConstraints = false
        
        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button2.topAnchor.constraint(equalTo: view.topAnchor, constant: 716).isActive = true
        button2.widthAnchor.constraint(equalToConstant: 335).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
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
