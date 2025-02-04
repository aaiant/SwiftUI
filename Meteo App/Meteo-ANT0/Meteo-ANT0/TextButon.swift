import SwiftUI

//  Extract pt. textul butonului
struct TextulButonului : View {
    //  Zona de variabile
    @Binding var ColorMode : Int
    var Textul : String
    
    var body : some View {
        //  Realizarea textului din interiorul butonului
        switch ColorMode {
        case 0:
            Text(Textul)
                //  Proprietatile textului
                .frame(width: 280, height: 50)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(Color(.systemRed))
                .background(.black)
                .cornerRadius(30)
        case 1:
            Text(Textul)
                //  Proprietatile textului
                .frame(width: 280, height: 50)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.black)
                .background(Color(.systemYellow))
                .cornerRadius(30)
        case 2:
            Text(Textul)
                //  Proprietatile textului
                .frame(width: 280, height: 50)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.black)
                .background(.white)
                .cornerRadius(30)
        case 3:
            Text(Textul)
                //  Proprietatile textului
                .frame(width: 280, height: 50)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
                .background(Color("Magenta"))
                .cornerRadius(30)
        default:
            Text(Textul)
                //  Proprietatile textului
                .frame(width: 280, height: 50)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
                .background(Color(.systemRed))
                .cornerRadius(30)
        }
    }
}
