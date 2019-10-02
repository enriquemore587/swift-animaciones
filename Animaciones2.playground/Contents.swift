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


// **** DROP FROM TOP ****
UIView.animate(
    withDuration : 5,
    delay : 1,
    usingSpringWithDamping : 0.55,
    initialSpringVelocity : 3,
    options : .curveEaseOut,
    animations : {
        cuadrado.alpha = 0
        cuadrado.transform = CGAffineTransform(scaleX : 0.5, y : 0.5)
},
    completion : nil
)

//  **************

PlaygroundPage.current.liveView = contenedor
