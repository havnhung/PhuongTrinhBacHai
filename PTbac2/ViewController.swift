//
//  ViewController.swift
//  PTbac2
//
//  Created by Minh Tuan on 5/15/17.
//  Copyright © 2017 Minh Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_so1: UITextField!
    @IBOutlet weak var txt_so2: UITextField!

    @IBOutlet weak var txt_so3: UITextField!
    @IBAction func acc_ketqua(_ sender: Any) {
        nhap()
    }
    
    @IBOutlet weak var lbl_kq1: UILabel!
    @IBOutlet weak var lbl_kq2: UILabel!
    var a: Double!
    var b: Double!
    var c: Double!
    var denta: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    func nhap(){
        a = Double(txt_so1.text!)!
        b = Double(txt_so2.text!)!
        c = Double(txt_so3.text!)!
        denta = (b * b) - 4 * a * c
        xetA()
    }
    
    func xetA(){
        if a == 0{
            ptBacNhat()
        }
        else if a != 0 {
            ptBacHai()
        }
    }
    func ptBacNhat(){
        if (b != 0){
           nghiemBkhacO()
        }else if (b == 0){
            nghiemBnbangO()
        }

    }
        func ptBacHai(){
        if denta < 0 {
            voNghiem()
        }else if (denta == 0){
            
            nghiemKep()
        } else if (denta > 0){
            pt2Nghiem()
        }

    }
    func voNghiem(){
        lbl_kq1.text = String("Vo nghiem")
        lbl_kq2.text = String("Vo nghiem")
    }
    func nghiemKep(){
        let kq = b / (2 * a)
        lbl_kq1.text = String("\(kq)")
        lbl_kq2.text = String("\(kq)")
    }
    func pt2Nghiem(){
        let kq1 = (-b + (sqrt(Double(denta)) / Double(2 * a)))
        let kq2 = (-b - (sqrt(Double(denta)) / Double(2 * a)))
        lbl_kq1.text = String("\(kq1)")
        lbl_kq2.text = String("\(kq2)")

    }
    func nghiemBkhacO()  {
        let nghiem = -c / b
        lbl_kq1.text = String("\(nghiem)")
        lbl_kq2.text = String("\(nghiem)")
    }
    func nghiemBnbangO()  {
        let kq = c
        if (c == 0){
            lbl_kq1.text = String("\(kq)")
            lbl_kq2.text = String("\(kq)")
        }else{
            lbl_kq1.text = String("vo nghiem")
            lbl_kq2.text = String("vo nghiem")
        }
        
    }

}
