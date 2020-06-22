import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let playerChoice = sender.currentTitle!
        storyBrain.choiceEffect(playerChoice)
        changeUI()
    }
    
    func changeUI() {
        storyLabel.text = storyBrain.getTitleText()
        choice1Button.setTitle(storyBrain.getChoices(1), for: .normal)
        choice2Button.setTitle(storyBrain.getChoices(2), for: .normal)
    }
}

