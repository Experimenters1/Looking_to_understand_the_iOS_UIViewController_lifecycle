//
//  Blue_ViewController.swift
//  test
//
//  Created by Huy vu on 13/8/24.
//

import UIKit

class Blue_ViewController: UIViewController {

    // 1. Khởi tạo view controller
       required init?(coder: NSCoder) {
           super.init(coder: coder)
           print("init(coder:) - View controller 2 được khởi tạo từ storyboard")
       }

       override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
           super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
           print("init(nibName:bundle:) - View controller 2 được khởi tạo từ mã")
       }
       
       // 2. View đã tải vào bộ nhớ
       override func viewDidLoad() {
           super.viewDidLoad()
           print("viewDidLoad - View 2 đã được tải vào bộ nhớ")
           // Khởi tạo các đối tượng, cấu hình view, thiết lập ban đầu
       }
       
       // 3. View sắp hiển thị trên màn hình
       override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           print("viewWillAppear - View 2 sắp xuất hiện trên màn hình")
           // Thực hiện các thay đổi cuối cùng trước khi view xuất hiện
       }
       
       // 4. View đã hiển thị trên màn hình
       override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           print("viewDidAppear - View 2 đã xuất hiện trên màn hình")
           // Bắt đầu các tác vụ khi view đang hiển thị
       }
       
       // 5. View sắp bị loại khỏi màn hình
       override func viewWillDisappear(_ animated: Bool) {
           super.viewWillDisappear(animated)
           print("viewWillDisappear - View 2 sắp bị loại khỏi màn hình")
           // Dừng hoặc lưu các trạng thái quan trọng
       }
       
       // 6. View đã bị loại khỏi màn hình
       override func viewDidDisappear(_ animated: Bool) {
           super.viewDidDisappear(animated)
           print("viewDidDisappear - View 2 đã biến mất khỏi màn hình")
           // Dừng các tác vụ không cần thiết
       }
       
       // 7. Sắp bố trí lại subviews
       override func viewWillLayoutSubviews() {
           super.viewWillLayoutSubviews()
           print("viewWillLayoutSubviews 2 - Sắp bố trí lại subviews")
           // Thực hiện các thay đổi cuối cùng với subviews trước khi bố trí
       }
       
       // 8. Đã bố trí lại subviews
       override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           print("viewDidLayoutSubviews 2 - Đã bố trí lại subviews")
           // Thực hiện các điều chỉnh sau khi bố trí nếu cần
       }

       // 9. View controller bị giải phóng khỏi bộ nhớ
       deinit {
           print("deinit - View controller 2 bị giải phóng khỏi bộ nhớ")
           // Dọn dẹp các tài nguyên hoặc loại bỏ các observer
       }
    
    
    static func makeSelf() -> Blue_ViewController{
            let storybroad: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let All_filesViewController = storybroad.instantiateViewController(withIdentifier: "Blue_ViewController") as! Blue_ViewController
            
            return All_filesViewController
        }
    
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
