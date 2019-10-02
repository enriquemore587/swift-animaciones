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


// **** CARD FLIP ****

UIView.animate(
    withDuration : 0.5,
    delay : 0,
    options : .curveEaseOut,
    animations : {
        cuadrado.transform = CGAffineTransform(scaleX : -1, y :1)
    }
)

//  **************

PlaygroundPage.current.liveView = contenedor

