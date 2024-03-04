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
