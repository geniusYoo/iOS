import UIKit

class WeatherViewController: UIViewController {
    @IBOutlet weak var city: UILabel!

    @IBOutlet weak var weatherImageView: UIImageView!
  
    @IBOutlet weak var temperatureLabel: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    let citis = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        city.text = citis.randomElement()
        
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
    }
    
   
}
