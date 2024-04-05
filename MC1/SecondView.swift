import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Text("오늘은 어떤 사람인가요?")
                .font(
                    .custom("SokchoBadaDotum",
                            size: 22))
                .foregroundStyle(Color(hexColor: "1098A1"))
                .padding(EdgeInsets(top: 15, leading: 25, bottom: 30, trailing: 25))
            
            Group {
                
            }
            HStack(spacing: 20) {
                Button(action: {
                    // Handle "여행자" button action
                }) {
                    VStack {
                        Image(systemName: "airplane.departure")
                            .frame(width: 30, height: 30)
                            .padding(EdgeInsets(top: 30, leading: 25, bottom: 15, trailing: 25))
                            .foregroundStyle(.yellow)
                            .font(.system(size: 30))
                        
                        Text("여행자")
                            .foregroundStyle(.black)
                            .padding(EdgeInsets(top: 0, leading: 40, bottom: 25, trailing: 40))
                            .font(
                                .custom("SokchoBadaDotum",
                                        size: 15))
                    }
                }
                .background(Color.white)
                // cornerRadius: 숫자 커질수록 더 둥글어짐
                .clipShape(RoundedRectangle(cornerRadius: 10))
                // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
                .shadow(color: .gray, radius: 3)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.yellow), lineWidth: 0.5))
                
                
                
                
                Button(action: {
                    // Handle "현지인" button action
                    
                    
                }) {
                    VStack {
                        Image(systemName: "mappin.and.ellipse")
                            .frame(width: 30, height: 30)
                            .padding(EdgeInsets(top: 30, leading: 25, bottom: 15, trailing: 25))
                            .foregroundStyle(.yellow)
                            .font(.system(size: 30))
                        Text("현지인")
                            .foregroundStyle(.black)
                            .padding(EdgeInsets(top: 0, leading: 40, bottom: 25, trailing: 40))
                            .font(
                                .custom("SokchoBadaDotum",
                                        size: 15))
                    }
                }
                .background(Color.white)
                // cornerRadius: 숫자 커질수록 더 둥글어짐
                .clipShape(RoundedRectangle(cornerRadius: 10))
                // color: 그림자 색깔 변경 가능, radius: 그림자 길이라고 생각하면 될듯
                .shadow(color: .gray, radius: 3)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.yellow), lineWidth: 0.5))
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
