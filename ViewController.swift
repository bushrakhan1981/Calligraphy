//
//  ViewController.swift
//  CaliGraphy
//
//  Created by Bushra Khan on 12/24/21.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    
    @IBOutlet weak var textField: UITextView!
    var namesOfAllah = ["launchScreen","1_Ar-Rehman","2_Ar-Raheem"  ,"3_Al-Malik","4_Al-Quddus","5_As-Salam","6_Al-Mu'min","7_Al-Muhaymin","8_Al-Aziz","9_Al-Jabbar","10_Al-Mutakabbir","11_Al-Khaaliq","12_Al-Baari","13_Al-Musawwir","14_Al-Ghaffaar","15_Al-Qahaar","16_Al-Wahhab","17_Ar-Razzaq","18_Al-Fattah","19_Al-Aleem","20_Al-Qaabid","21_Al-Baasit","22_Al-Khafiz","23_Ar-Rafay","24_Al-Mu'izz","25_Al-Muzil","26_As-Sami","27_Al-Baseer","28_Al-Hakam","29_Al-Adl","30_Al-Lateef","31-AL-Khabeer","32_Al-Haleem","33_Al-Azeem","34_Al-Ghafoor","35_Ash-Shakoor","36_Al-Aliyy","37_Al-Kabeer","38_Al-Hafeez","39_Al-Muqeet","40_Al-Haseeb","41_Al-Jaleel","42_Al-Kareem","43_Ar-Raqeeb","44_Al-Mujeeb","45_Al-Waasi","46_Al-Hakeem","47_Al-Wadood","48_Al-Majeed","49_Al-Baiss","50_Ash-Shaheed","51_Al-Haqq","52_Al-Wakeel","53_Al-Qawwiy","54_Al-Mateen","55_Al-Waliyy","56_Al-Hameed","57_Al-Muhsee","58_Al-Mubdi","59_Al-Mueed","60_Al-Muhyi","61_Al-Mumeet","62_Al-Hayy","63_Al-Qayyoom","64_Al-Waajid","65_Al-Maajid","67_Al-Ahad","68_As-Samad","69_Al-Qaadir","70_Al-Muqtadir","71_Al-Muqaddim","72_Al-Mu'akhkhir","73_Al-Awwal","74_Al-Akhir","75_Az-Zaahir","76_Al-Baatin","77_Al-Waali","78_Al-Muta'ali","79_Al-Barr","80_At-Tawwaab","81_Al-Muntaqim","82_Al-Afuww","83_Ar-Raoof","84_Maalik-ul-Mulk","85_Zul-Jaalali-wal-Ikram","86_Al-Muqsit","87_Al-Jaami'","88_Al-Ghaniyy","89_Al-Mughni","90_Al-Maani'","91_Ad-Daar","92_An_Naafi'","93_An_Noor","94_Al-Haadi","95_AL-Badi'","96_Al-Baaqi","97_Al-Waaris","98_Ar-Rasheed","99_As-Saboor"]
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBOutlet weak var counterLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewOutlet.isHidden = true
    }

    @IBAction func startButton(_ sender: UIButton) {
        imageViewOutlet.isHidden = false
        textField.isHidden = true
            for x in 0...namesOfAllah.count {
            self.counter = (self.counter >= self.namesOfAllah.count-1) ? 0 : self.counter+1
            imageViewOutlet.image = UIImage(named:namesOfAllah[counter])
            counterLabel.text = "\(counter)"
                return
            }
        }
    
    @IBAction func resetButton(_ sender: Any) {
        counter = 0
        imageViewOutlet.image = UIImage(named: "1_Ar-Rehman")
        counterLabel.text = "\(0)"
}
}


