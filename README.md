# Looking_to_understand_the_iOS_UIViewController_lifecycle
## [Looking_to_understand_the_iOS_UIViewController_lifecycle](https://stackoverflow.com/questions/5562938/looking-to-understand-the-ios-uiviewcontroller-lifecycle) <br><br>
#
# [viewcontroller life cycle](https://chat.openai.com/c/f3440555-5c16-4f35-b033-6f5c4ef1e142) <br><br>
######
Vòng đời của một **UIViewController** trong **iOS** có thể được mô tả bằng các phương thức và sự kiện xảy ra từ lúc nó được tạo ra cho đến khi nó bị giải phóng khỏi bộ nhớ. Dưới đây là một số phương thức quan trọng trong vòng đời của một **UIViewController:** <br><br>

Vòng đời của một **UIViewController** trong **iOS** bao gồm các giai đoạn sau: <br><br>

**1. Khởi tạo:** <br><br>
+ ) **init():** Hàm khởi tạo được gọi đầu tiên khi tạo một **UIViewController** mới.<br><br>
+ ) **loadView():** Hàm này được gọi để tạo ra view của **view controller.** <br><br>
+ ) **viewDidLoad():** Hàm này được gọi sau khi **view** được tạo. Đây là nơi bạn thực hiện các thiết lập ban đầu cho **view controller,** như thêm các subview, thiết lập layout, v.v. <br><br>

**2. Hiển thị:** <br><br>
+ )**viewWillAppear(_:):** Hàm này được gọi trước khi **view controller** được hiển thị trên màn hình. <br><br>
+ )**viewDidAppear(_:):** Hàm này được gọi sau khi **view controller** được hiển thị trên màn hình. <br><br>

**3. Ẩn:** <br><br>
+ )**viewWillDisappear(_:):** Hàm này được gọi trước khi view controller bị ẩn khỏi màn hình. <br><br>
+ )**viewDidDisappear(_:):** Hàm này được gọi sau khi view controller bị ẩn khỏi màn hình. <br><br>

**4. Giải phóng:**  <br><br>
+ )**viewDidUnload():** Hàm này được gọi khi view controller bị gỡ bỏ khỏi bộ nhớ. <br><br>

**Lưu ý:**

+ ) Các hàm **viewWillAppear(_:), viewDidAppear(_: ), viewWillDisappear(_: ), viewDidDisappear(_: )** được gọi mỗi khi view controller được hiển thị hoặc ẩn khỏi màn hình. <br><br>
+ ) Hàm **viewDidUnload(_:)** chỉ được gọi khi **view controller** bị gỡ bỏ khỏi bộ nhớ. <br><br>
+ ) Bạn có thể **override** các hàm này trong **subclass** của **UIViewController** để thực hiện các hành vi tùy chỉnh. <br><br>


Ngoài ra, vòng đời của UIViewController còn có thể bị ảnh hưởng bởi các yếu tố khác như: <br><br>

+ ) Chuyển đổi giữa các **view controller:** Khi bạn chuyển đổi giữa các **view controller, các hàm viewWillAppear(_:), viewDidAppear(_: ), viewWillDisappear(_: ), viewDidDisappear(_: )** của các **view controller** liên quan sẽ được gọi.
+ ) **Đa nhiệm:** Khi ứng dụng của bạn bị chuyển sang chế độ nền, các view controller có thể bị gỡ bỏ khỏi bộ nhớ để giải phóng tài nguyên. <br><br>

Hiểu rõ về vòng đời của UIViewController là rất quan trọng để bạn có thể viết code một cách hiệu quả và tránh các lỗi tiềm ẩn. <br><br>

### For Example
```swift
import UIKit

class MyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Được gọi khi view của UIViewController được tải vào bộ nhớ.
        // Thích hợp để thực hiện các thiết lập ban đầu cho view.
        setupUI()
        fetchData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Được gọi khi view sẽ được hiển thị trên màn hình, trước khi animation bắt đầu.
        // Thích hợp để cập nhật dữ liệu hoặc giao diện trước khi hiển thị.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Được gọi khi view đã được hiển thị hoàn toàn trên màn hình.
        // Thích hợp để bắt đầu các hoạt động tương tác với người dùng.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Được gọi khi view sẽ biến mất khỏi màn hình, trước khi animation bắt đầu.
        // Thích hợp để lưu trạng thái hoặc dừng các hoạt động.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        // Được gọi khi view đã biến mất hoàn toàn khỏi màn hình.
        // Thích hợp để dọn dẹp hoặc thực hiện các tác vụ sau khi view biến mất.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        // Được gọi khi giao diện của thiết bị thay đổi, cho phép bạn cập nhật giao diện theo kích thước mới.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Được gọi khi hệ thống gặp vấn đề về bộ nhớ, cung cấp cơ hội để giải phóng bộ nhớ không cần thiết.
    }
    
    deinit {
        // Được gọi khi UIViewController bị giải phóng khỏi bộ nhớ.
        // Thích hợp để giải phóng tài nguyên hoặc hủy các đăng ký quan sát.
    }
    
    func setupUI() {
        // Thiết lập giao diện người dùng (UI), ánh xạ các thành phần giao diện.
    }
    
    func fetchData() {
        // Lấy dữ liệu từ nguồn nào đó, ví dụ: API, cơ sở dữ liệu.
    }
}

```
  
Trong quá trình hoạt động của ứng dụng, một **UIViewController** có thể đi qua nhiều lần chu kỳ này, tùy thuộc vào cách người dùng tương tác với ứng dụng và cách quản lý bộ nhớ của hệ thống.<br><br>

######
**1.viewDidLoad()**: Initialization and setup for the view controller.(Khởi tạo và thiết lập cho view controller.) <br>

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    // Thực hiện các thiết lập ban đầu cho view controller và các view của nó ở đây.
}

```

**2.viewWillAppear(_:)**: Actions before the view controller appears. (Các hành động trước khi view controller xuất hiện.)  <br>
```swift

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    // Thực hiện các tác vụ trước khi view controller xuất hiện.
}

```
**3.viewDidAppear(_:)**: Actions after the view controller has appeared. (Các hành động sau khi view controller đã xuất hiện.) <br>

```swift
override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    // Thực hiện các tác vụ sau khi view controller đã xuất hiện.
}

```
**4.viewWillDisappear(_:)**: Actions before the view controller disappears. (Các hành động trước khi view controller biến mất.) <br>

```swift
override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    // Thực hiện các tác vụ trước khi view controller biến mất.
}

```
**5.viewDidDisappear(_:)**: Actions after the view controller has disappeared. (Các hành động sau khi view controller đã biến mất.) <br>
```swift
override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    // Thực hiện các tác vụ sau khi view controller đã biến mất.
}

```
**6.viewWillLayoutSubviews()**: Pre-layout tasks before the subviews are arranged. (Công việc chuẩn bị trước khi các subview được sắp xếp.) <br>

```swift
override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    // Thực hiện tác vụ trước khi các view con được sắp xếp lại.
}

```
**7.viewDidLayoutSubviews()**: Post-layout tasks after the subviews have been arranged. (Công việc sau khi các subview đã được sắp xếp.) <br>

```swift
override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    // Thực hiện tác vụ sau khi các view con đã được sắp xếp lại.
}

```

**8.viewWillTransition(to:with:)**: Handling screen size changes. (Xử lý thay đổi kích thước màn hình.) <br>

```swift
override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
    // Điều chỉnh giao diện của bạn dựa trên sự thay đổi kích thước màn hình.
}


```

**9.traitCollectionDidChange(_:)**: Handling trait collection changes (e.g., Dark Mode). ( Xử lý thay đổi trong tập tính (ví dụ: Chế độ Ban Đêm).) <br>
```swift
override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
    super.traitCollectionDidChange(previousTraitCollection)
    // Thực hiện tác vụ khi yếu tố của trait collection thay đổi (ví dụ: Dark Mode).
}

```
**10.viewDidReceiveMemoryWarning()**:Handling memory warnings. ( Xử lý cảnh báo về bộ nhớ. ) <br>
```swift
override func viewDidReceiveMemoryWarning() {
    super.viewDidReceiveMemoryWarning()
    // Giải phóng tài nguyên không cần thiết khi hệ thống gặp khó khăn về tài nguyên.
}

```
**11.prepare(for:sender:)**: Preparation before transitioning to a new view controller via segue. (Chuẩn bị trước khi chuyển đổi sang một view controller mới thông qua segue.) <br>
```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "YourSegueIdentifier" {
        // Thực hiện các thiết lập trước khi chuyển đổi sang view controller mới thông qua segue.
    }
}

```
