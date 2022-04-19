//
//  ComposeViewController.swift
//  memoApp
//
//  Created by 이로운 on 2022/04/19.
//

import UIKit

class ComposeViewController: UIViewController {
    
    static let newMemoDidInsert = Notification.Name("newMemoDidInsert")
    
    @IBOutlet weak var newMemoTextView: UITextView!
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func seve(_ sender: Any) {
        guard let memo = newMemoTextView.text, memo.count > 0 else {
            alert(message: "메모를 입력하세요")
            return
        } 
        DataManager.shared.addNewMemo(memo)
        
        NotificationCenter.default.post(name: ComposeViewController.newMemoDidInsert, object: nil)
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    
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
