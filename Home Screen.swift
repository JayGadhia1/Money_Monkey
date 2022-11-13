import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome!")
                .position(x: 187.5, y: 25)
                .font(.system(size: 40))
            Button(action: {
                print("User has Clicked Live Stock News")
            }, label: {
            Text("Live Stock News")
            
                .padding(13)
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            }).padding(.top, 70)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
