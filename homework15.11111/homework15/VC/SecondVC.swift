//
//  SecondVC.swift
//  homework15
//
//  Created by Nodiko Gachava on 11.04.24.
//

import UIKit

class SecondVC: UIViewController {
    let label1 = UILabel()
    let image1 = UIImageView()
    let label2 = UILabel()
    let button1 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        addLabel()
        addImage1()
        addLabel2()
        addButton1()
    }
    func addLabel(){
        view.addSubview(label1)
        label1.text = "ქალწული"
        label1.textAlignment = .center
        label1.textColor = .white
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 206).isActive = true
        
    }
    func addImage1(){
        view.addSubview(image1)
        
        image1.image = UIImage(named: "Icon-6")
        
        image1.translatesAutoresizingMaskIntoConstraints = false
        
        image1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image1.topAnchor.constraint(equalTo: view.topAnchor, constant: 55).isActive = true
        image1.widthAnchor.constraint(equalToConstant: 156).isActive = true
        image1.heightAnchor.constraint(equalToConstant: 156).isActive = true
    }
    func addLabel2(){
        view.addSubview(label2)
        label2.text = """
        პლანეტა მერკურის გავლენის ქვეშ დაბადებული ქალწულები, მოწესრიგებულობით, უზადო პასუხისმგებლობის გრძნობით და წვრილმანების მიმართ გასაოცარი ყურადღებიანობით გამოირჩევიან. ზოდიაქოს სხვა ნიშნის წარმომადგენლებს შორის, ქალწულის ცნობა მისი უნაკლო ჩაცმულობით, დავარცხნილ-გაწკრიალებული გარეგნობით და ზრდილობიანი მანერებით შეიძლება. ქალწულებს შორის როგორც წესი, ტანმორჩილი ხალხი სჭარბობს. მათ შორის გიგანტს ან შესამჩნევად დიდი გაბარიტების მქონე ხალხს იშვიათად შეხვდებით. გამომდინარე იქედან, რომ ქალწულის ზოდიაქო, კუჭნაწლავის და ზოგადად საჭმლის მომნელებელ სისტემაზეა პასუხისმგებელი, ზოდიაქოს ამ ნიშნით დაბადებულ ადამიანებს, საკვების და ზოგადად ჯანსაღი კვების სფერო განსაკუთრებულად აღელვებთ და აინტერესებთ. იშვიათი არ არის არც ის ფაქტი, რომ ქალწულის ზოდიაქოს ნიშნით დაბადებულთა შორის, ბევრი ექიმი- დიეტოლოგი და ფარმაცევტი გვხვდება.'
        """
        label2.textAlignment = .left
        label2.numberOfLines = .zero
        label2.font = UIFont(name: "Sylfaen", size: 14)
        label2.textColor = .white
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label2.topAnchor.constraint(equalTo: view.topAnchor, constant: 270).isActive = true
        label2.widthAnchor.constraint(equalToConstant: 327).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 420).isActive = true
    }
    func addButton1(){
        view.addSubview(button1)
        button1.setTitle("პოლაური ნიშანი", for: .normal)
        button1.backgroundColor = .purple
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 736).isActive = true
        button1.heightAnchor.constraint(equalToConstant: 46).isActive = true
        button1.widthAnchor.constraint(equalToConstant: 335).isActive = true 
        
        addAction()
        
    }
    func addAction(){
        button1.addTarget(self, action: #selector(goNextVC), for: .touchUpInside)
    }
    @objc func goNextVC(){
        let thirdVC = ThirdVC()
        navigationController?.pushViewController(thirdVC, animated: true)
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
