# Looking_to_understand_the_iOS_UIViewController_lifecycle
## [Looking_to_understand_the_iOS_UIViewController_lifecycle](https://stackoverflow.com/questions/5562938/looking-to-understand-the-ios-uiviewcontroller-lifecycle) <br><br>
#
1.**viewDidLoad()**: Initialization and setup for the view controller.(Khởi tạo và thiết lập cho view controller.) <br>

```swift
override func viewDidLoad() {
    super.viewDidLoad()
    // Thực hiện các thiết lập ban đầu cho view controller và các view của nó ở đây.
}

```

2.**viewWillAppear(_:)**: Actions before the view controller appears. (Các hành động trước khi view controller xuất hiện.)  <br>
```swift

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    // Thực hiện các tác vụ trước khi view controller xuất hiện.
}

```
