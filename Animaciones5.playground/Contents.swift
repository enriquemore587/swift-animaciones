import UIKit
import PlaygroundSupport

// Creo una vista
let contenedor = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667))
contenedor.backgroundColor = .gray


let cuadrado = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))


// Tuneo
cuadrado.backgroundColor = .lightGray
cuadrado.center = contenedor.center
cuadrado.layer.cornerRadius = 20
cuadrado.layer.borderWidth = 2

// se agrega al contenedor
contenedor.addSubview(cuadrado)


// **** FADE IN ****

cuadrado.alpha = 0

UIView.animate(
    withDuration : 0.6,
    delay : 1,
    options : .curveEaseOut,
    animations : {
        cuadrado.alpha = 1
    }
)



// **** FADE OUT ****

//cuadrado.alpha = 0
//
//UIView.animate(
//    withDuration : 0.6,
//    delay : 1,
//    options : .curveEaseOut,
//    animations : {
//        cuadrado.alpha = 1
//}
//)

//  **************

PlaygroundPage.current.liveView = contenedor
