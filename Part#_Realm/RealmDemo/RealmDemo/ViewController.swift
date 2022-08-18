//
//  ViewController.swift
//  RealmDemo
//
//  Created by 유영재 on 2022/08/05.
//

import UIKit
import RealmSwift
import FSCalendar

class ViewController: UIViewController {
    
    @IBOutlet weak var emotionLabel: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    let localRealm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let documentsDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print(documentsDirectory)
        print("Realm is located at:", localRealm.configuration.fileURL!)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        let task = UserDiary(content: contentTextView.text!, writeDate: Date(), registerDate: Date(), emotion: emotionLabel.text!)
        try! localRealm.write {
            localRealm.add(task)
        }
        print(task)
    }
    
}




