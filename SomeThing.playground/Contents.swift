//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let cardView = UIView()
        cardView.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        cardView.frame = CGRect(x: 24, y: 100, width: 300, height: 200)
        cardView.layer.cornerRadius = 14
        cardView.layer.shadowOpacity = 0.7
        cardView.layer.shadowRadius = 10
        cardView.layer.shadowColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
        
        let bgImage = UIImageView()
        bgImage.frame = CGRect(x: 0, y: 0, width: 300, height: 200)
        bgImage.image = UIImage(imageLiteralResourceName: "s.png")
        bgImage.layer.cornerRadius = 14
        bgImage.contentMode = .scaleAspectFill
        bgImage.clipsToBounds = true
        
        let titleText = UILabel()
        titleText.frame = CGRect(x: 20, y: 16, width: 100, height: 30)
        titleText.text = "My Card"
        titleText.font  = UIFont.systemFont(ofSize: 26, weight: .semibold)
        titleText.textColor = #colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)
        
        view.addSubview(cardView)
        cardView.addSubview(bgImage)
        cardView.addSubview(titleText)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
