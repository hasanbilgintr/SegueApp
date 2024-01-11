//
//  ViewController.swift
//  SegueApp
//
//  Created by hasan bilgin on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {
    var userName=""
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad function called")
        // Do any additional setup after loading the view.
    }
    
    //farklı viewController açmak için storyboarda + ile View Controller alınabilir
    //2.ViewController açılmışsa bunun swifti manuel atanması lazım. Bide atama yapılmışsa label, textField vs. control+mause sol tuşu ile Swfite itemleri referans alabiliriz
    //2.Swift Dosyası eklemek için en üst klasörün altına yani ana dizine klasöre sol ile tıklayıp ardından sağ tıklayıp->new File... yada sağ tıklamadan üstteki File->new->File... tıklanarak Cocoa Touch Class seçilir next denir->Class a ismi SecondViewController ,Subclass of UIViewController, also create XIB file pasif, Swift seçildi ve next tıklanır.Kendi app içine Targets aktif AppName olur create tıklanır.Açılan Swift yer değişikliği yapılabilir
    //viewControllerin Swifte atanması ise storyboardda hangi viewController ise onun hemen üstünde ViewController butonu seçili yada viewController hemen solunda View Controller üstüne tıklanırsada olur-> sağ tarafta show the identity inspecter alanında Class var ordan Swifti seçiyoruz bu şekilde atanmasını yapmış oluyoruz
    //storyboarddaki ilk viewController ortdan ok var o ilk başlatılcak viewControlleri belirtir.Hatta solda Storboard Entry Point olarak yer alır
    //ilk geçiş yöntemi
    //Geçiş yapacak buton diyelim control basılı mouse sol tuşu ile gidilcek viewControllere getirtirlir mouse.Ardından Show tıkladık.bir ok oluştu arasında tıklayınca o oka sağ üstte kendi idsi var. direk çalışır butona basınca 2. viewcontroller açılır. pek tercih edilen bir yöntem değildir sanki popam menüsü gibi.
    //ikinci geçiş yöntemi ise
    //ana viewController seçilir üst butonu View Controller seçilir-> en üst macbook çubuktan Editör-> Embed In->Navigation Controller yada Editör seçmeden sağ altta  Embed In ile Navigation Controller tıklanır.Tüm viewcontroller in başına Navigatiopn Controller gelir.view Controllere Navigasyon barı getirir ve Back butonuda gelir. Buşekilde oldumu butona tıklasak dahi popam değilde 2.yöntem gibi (normal) geçişini sağlar
    //viewController üstündeki viewController control basılı ile mausla gidilcek viewContrller götürülür show denirse o viewController dan id kontrol ile 2.viewcontroller geçiş sağlanır (view navigasyon ile) ve identifier verildi
    
    @IBAction func nextClicked(_ sender: Any) {
        userName=nameText.text!
        //Geçiş için
        //sender bilgi varsa girilir
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    //performSegue yapmadan çalışan fonksiyondur
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="toSecondVC"{
            //segue.destination hedef viewControlleri verir
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName=userName
        }
    }
    
    //Lifecycle// Yaşam döngüsü
    
    //View kaybolduğunda çalışan fonksiyon
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    
    //kaybolacak çalışan fonksiyon
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    //Görünüm belirecek çalışan fonskyion
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameText.text=""
    }
    
    //Görünüm gözüktü çalışan fonksiyon
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
    //debug (print) görünmesi için hide the console tıklanmalı
    
}

