import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet private var likeButton: UIButton!
    @IBOutlet private var gradientImage: UIImageView!
    @IBOutlet private var dateLabel: UILabel!
    @IBOutlet private var cellImage: UIImageView!
    
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
    }()
    
    func config (image: UIImage, indexPath: IndexPath, cell: ImagesListCell) {
        cell.cellImage.image = image
        cell.dateLabel.text = dateFormatter.string(from: Date())
        
        if indexPath.row % 2 == 0 {
            cell.likeButton.setImage(UIImage(named: "Active"), for: .normal)
        } else {
            cell.likeButton.setImage(UIImage(named: "No Active"), for: .normal)
        }
    }
}
