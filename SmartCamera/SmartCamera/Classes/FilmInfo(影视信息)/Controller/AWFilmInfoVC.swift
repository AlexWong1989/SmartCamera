//
//  AWFilmInfoVC.swift
//  SmartCamera
//
//  Created by kitwee on 17/5/16.
//  Copyright © 2017年 Alexwong. All rights reserved.
//

import UIKit

class AWFilmInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = FilmInfoTitle
        self.view.backgroundColor =  AppColor.backgroundColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


