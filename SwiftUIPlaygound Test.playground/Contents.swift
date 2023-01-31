//: A UIKit based Playground for presenting user interface
  
import SwiftUI//UIKit->SwiftUI교체
import PlaygroundSupport

/*MyViewController클래스 관련 내용 저누 삭제 후
class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}
 */
//ContentView()로 수정
struct ContentView: View{
    var body: some View {
        Text("Hello SwiftUI")
    }
}
// Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()
//PlaygroundPage.current.liveView = ContentView() <-오류
//SwiftUI의 뷰를 UIKit 프레임워크와 통하하려면 UIHostingController라는 중간 매개체가 필요
//PlaygroundPage.current.liveView = UIHostingController(rootView:ContentView())
//위 코드 대신 쓸수있는코드
PlaygroundPage.current.setLiveView(ContentView())
