# Looking_to_understand_the_iOS_UIViewController_lifecycle
## [Looking_to_understand_the_iOS_UIViewController_lifecycle](https://stackoverflow.com/questions/5562938/looking-to-understand-the-ios-uiviewcontroller-lifecycle) <br><br>
#
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
**5.viewDidDisappear(_:)**: Actions after the view controller has disappeared. () <br>





