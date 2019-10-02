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

let offSet = CGPoint( x : 0, y : -contenedor.frame.maxY)
let x :  CGFloat = 0
let y : CGFloat = 0

cuadrado.transform = CGAffineTransform(translationX: offSet.x + x, y: offSet.y + y)

UIView.animate(
    withDuration : 1,
    delay : 1,
    usingSpringWithDamping : 0.47,
    initialSpringVelocity : 3,
    options : .curveEaseOut,
    animations : {
        cuadrado.transform = .identity
        cuadrado.alpha = 1
}
)

//  **************

PlaygroundPage.current.liveView = contenedor
