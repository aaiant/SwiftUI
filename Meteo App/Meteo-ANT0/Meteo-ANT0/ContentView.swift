import SwiftUI

struct ContentView: View {
    //  Zona de variabile
    @State private var ColorMode : Int = 0
    
    var body: some View {
        //  Realizarea unui container de tip ZStack
        ZStack {
            //  Realizarea fundalului
            Fundal(ColorMode: $ColorMode)
            //  Realizarea unui container de tip VStack
            VStack {
                //  Realizarea textului care contine orasul & tara
                Locatie(ColorMode: $ColorMode, Locatie: "Constanta, RO")
                //  Realizarea vremii pt. ziua curenta
                ZiuaCurenta(ColorMode: $ColorMode, Zi: "Luni", IconVreme: "cloud.sun.fill", Temperatura: 17)
                Spacer()
                //  Realizarea unui container de tip HStack
                HStack(spacing: 20) {
                    //  Adaugarea zilei de Marti
                    ZiIndividuala(ColorMode: $ColorMode, Zi: "Mar", IconVreme: "cloud.fill", Temperatura: 18)
                    //  Adaugarea zilei de Miercuri
                    ZiIndividuala(ColorMode: $ColorMode, Zi: "Mie", IconVreme: "cloud.rain.fill", Temperatura: 16)
                    //  Adaugarea zilei de Joi
                    ZiIndividuala(ColorMode: $ColorMode, Zi: "Joi", IconVreme: "cloud.bolt.rain.fill", Temperatura: 18)
                    //  Adaugarea zilei de Vineri
                    ZiIndividuala(ColorMode: $ColorMode, Zi: "Vin", IconVreme: "cloud.sun.fill", Temperatura: 17)
                    //  Adaugarea zilei de Sambata
                    ZiIndividuala(ColorMode: $ColorMode, Zi: "Sam", IconVreme: "sun.max.fill", Temperatura: 20)
                    //  Adaugarea zilei de Duminica
                    ZiIndividuala(ColorMode: $ColorMode, Zi: "Dum", IconVreme: "cloud.fill", Temperatura: 21)
                }
                Spacer()
                //  Realizarea butonului
                Button {
                    if ColorMode != 4 {
                        ColorMode += 1
                    } else {
                        ColorMode = 0
                    }
                } label : {
                    TextulButonului(ColorMode: $ColorMode, Textul: "Schimba tematica")
                }
                Spacer()
            }
            
        }
        
    }
}

//  Zona de extract
    //  FUNDAL
struct Fundal : View {
    //  Zona de variabile
    @Binding var ColorMode : Int
    
    var body : some View {
        //  Realizarea unui LinearGradient pt. fundal
        switch ColorMode{
        case 0:
            LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow]), startPoint: .topLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
            
        case 1:
            LinearGradient(gradient: Gradient(colors: [.red, .purple, .pink]), startPoint: .topLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
        case 2:
            LinearGradient(gradient: Gradient(colors: [.yellow, .cyan, .green]), startPoint: .topLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
        case 3:
            LinearGradient(gradient: Gradient(colors: [.cyan, .blue, .purple]), startPoint: .topLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
        default:
            LinearGradient(gradient: Gradient(colors: [.black, .white, .black]), startPoint: .topLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

//  ORAS & TARA
struct Locatie : View {
    //  Zona de variabile
    @Binding var ColorMode : Int
    var Locatie : String
    
    var body : some View {
        //  Realizarea textului cu locatia curenta
        switch ColorMode {
        case 0:
            Text(Locatie)
            //  Proprietatile locatiei
                .font(.system(size: 30, weight: .medium, design: .default))
                .foregroundColor(.black)
                .padding()
        case 1:
            Text(Locatie)
            //  Proprietatile locatiei
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(Color(.systemYellow))
                .padding()
        case 2:
            Text(Locatie)
            //  Proprietatile locatiei
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.black)
                .padding()
        case 3:
            Text(Locatie)
            //  Proprietatile locatiei
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding()
        default:
            Text(Locatie)
            //  Proprietatile locatiei
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(Color(.systemRed))
                .padding()
        }
    }
}

//  Ziua curenta
struct ZiuaCurenta : View {
    //  Zona de variabile
    @Binding var ColorMode : Int
    var Zi : String
    var IconVreme : String
    var Temperatura : Int
    
    var body : some View {
        //  Realizarea unui container de tip VStack
        VStack(spacing: 10) {
            //  Afisarea zilei
            switch ColorMode {
            case 0:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(.black)
            case 1:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(Color(.systemYellow))
            case 2:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(.black)
            case 3:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(.white)
            default:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(Color(.systemRed))
            }
            //  Realizarea icon-ului pt. vreme
            Image(systemName: IconVreme)
                //  Proprietatile icon-ului pt. vreme
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            //  Realizarea temperaturii
            switch ColorMode {
            case 0:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 70, weight: .medium, design: .default))
                    .foregroundColor(.black)
            case 1:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 70, weight: .medium, design: .default))
                    .foregroundColor(Color(.systemYellow))
            case 2:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 70, weight: .medium, design: .default))
                    .foregroundColor(.black)
            case 3:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 70, weight: .medium, design: .default))
                    .foregroundColor(.white)
            default:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 70, weight: .medium, design: .default))
                    .foregroundColor(Color(.systemRed))
            }
        }.padding(.bottom, 40)
    }
}

//  ZiIndividuala
struct ZiIndividuala : View {
    //  Zona de variabile
    @Binding var ColorMode : Int
    var Zi : String
    var IconVreme : String
    var Temperatura : Int
    
    var body : some View {
        //  Realizarea unui container de tip VStack
        VStack {
            //  Realizarea zilei
            switch ColorMode {
            case 0:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.black)
            case 1:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(Color(.systemYellow))
            case 2:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.black)
            case 3:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.white)
            default:
                Text(Zi)
                    //  Proprietatile zilei
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(Color(.systemRed))
            }
            //  Realizarea icon-ului pt. vreme
            Image(systemName: IconVreme)
                //  Proprietatile icon-ului pt. vreme
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            //  Realizarea temperaturii
            switch ColorMode {
            case 0:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 28, weight: .medium, design: .default))
                    .foregroundColor(.black)
            case 1:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 28, weight: .medium, design: .default))
                    .foregroundColor(Color(.systemYellow))
            case 2:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 28, weight: .medium, design: .default))
                    .foregroundColor(.black)
            case 3:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 28, weight: .medium, design: .default))
                    .foregroundColor(.white)
            default:
                Text("\(Temperatura)°")
                    //  Proprietatile zilei
                    .font(.system(size: 28, weight: .medium, design: .default))
                    .foregroundColor(Color(.systemRed))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
