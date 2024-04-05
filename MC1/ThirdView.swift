import SwiftUI

struct ThirdView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            Text("어디로 떠나시나요?")
                .font(
                    .custom("SokchoBadaDotum",
                            size: 22))
                .foregroundStyle(Color(hexColor: "1098A1"))
                .padding(EdgeInsets(top: 15, leading: 25, bottom: 15, trailing: 25))
            
            Image(systemName: "airplane")
                .frame(width: 30, height: 30)
                .padding(EdgeInsets(top: 20, leading: 25, bottom: 30, trailing: 25))
                .foregroundStyle(.yellow)
                .font(.system(size: 30))
            
            HStack {
                TextField("", text: $searchText)
                    .placeholder(when: searchText.isEmpty) {
                        Text("여행지를 입력해주세요").foregroundColor(.gray)
        
                        Button(action: {
                            // Handle search button action
                        }) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .padding(.leading, 300)
                        }
                    }
                    .font(.system(size: 15))
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .background(Color.white)
                    // cornerRadius: 숫자 커질수록 더 둥글어짐
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
                    .shadow(color: .gray, radius: 3)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.yellow), lineWidth: 0.5))
            }
            .padding(.horizontal)
            .background(Color.white)
        }
    }
}

extension TextField {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
    ThirdView()
    }
}
