//
//  ComposeViewController.swift
//  memoApp
//
//  Created by 이로운 on 2022/04/19.
//

import UIKit

class ComposeViewController: UIViewController {
    
    @IBOutlet weak var newMemoTextView: UITextView!
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func seve(_ sender: Any) {
        guard let memo = newMemoTextView.text else { return }
        let newMeme = Memo(content: memo)
        Memo.dummyMemoList.append(newMeme)
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
