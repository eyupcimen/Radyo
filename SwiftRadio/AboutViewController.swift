//
//  AboutViewController.swift
//  Swift Radio
//
//  Created by Matthew Fecher on 7/9/15.
//  Copyright (c) 2015 MatthewFecher.com. All rights reserved.
//  http://209.237.244.98:8004/
// Samsun Tutku Fm     http://46.165.233.175:4038/
// "name": "Sounds of the 80s",
// "streamURL": "http://tuneinads.moodmedia.com/streams/tunein_sounds_of_the_80s_with_ads.mp3",
// Can Radyo İzmir 
// http://46.165.233.174:3124/
// "name": "Spaceland Radio",
// "streamURL": "http://rfcmedia.streamguys1.com/echo.aac"
//  Radio 1190 : http://radio1190.colorado.edu:8000/high.mp3


import UIKit
import MessageUI

class AboutViewController: UIViewController {
    
    //*****************************************************************
    // MARK: - ViewDidLoad
    //*****************************************************************
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    //*****************************************************************
    // MARK: - IBActions
    //*****************************************************************
    
    @IBAction func emailButtonDidTouch(sender: UIButton) {
        
        
        
        
        
        // Use your own email address & subject
        let receipients = ["eyup5555@gmail.com"]
        let subject = "From Swift Radio App"
        let messageBody = ""
        
        let configuredMailComposeViewController = configureMailComposeViewController(receipients, subject: subject, messageBody: messageBody)
        
        if canSendMail() {
            self.presentViewController(configuredMailComposeViewController, animated: true, completion: nil)
        } else {
            showSendMailErrorAlert()
        }
    }
    
    @IBAction func websiteButtonDidTouch(sender: UIButton) {
        
        // Use your own website here
        if let url = NSURL(string: "http://eyupcimen.com") {
            UIApplication.sharedApplication().openURL(url)
        }
    }

  }

//*****************************************************************
// MARK: - MFMailComposeViewController Delegate
//*****************************************************************

extension AboutViewController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func canSendMail() -> Bool {
        return MFMailComposeViewController.canSendMail()
    }
    
    func configureMailComposeViewController(recepients: [String], subject: String, messageBody: String) -> MFMailComposeViewController {
        
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(recepients)
        mailComposerVC.setSubject(subject)
        mailComposerVC.setMessageBody(messageBody, isHTML: false)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device could not send e-mail.  Please check e-mail configuration and try again.", delegate: self, cancelButtonTitle: "OK")
        sendMailErrorAlert.show()
    }
}
