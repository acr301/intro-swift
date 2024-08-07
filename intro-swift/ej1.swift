import Foundation

enum EstadoPedido 
{
    //procesando es pos 0
    //rawValue EstadoPedido. es true o false
    //recorrible como un array, finito si parametro CaseIterable
    case procesando, enviando, entregado
}


//esto es lo que es delegado
// lo que se ????
// lo que importa, lo que tiene que come across
// que tipo es el protocolo??
protocol NotificacionPedido
{
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido)
}


//Delegador, para inicializar a traves de estado, delegado y cambiarEstado
class Pedido
{
    //propiedad estado de tipo EstadoPedido
    var estado:EstadoPedido = .enviando

    //propiedad delegado de tipo any NotificacionPedido ESTE DA ACCESO
    var delegado:NotificacionPedido?
    

    //aqui se hace lo que quiera y no tengo acceso, no regresa nada
    func cambiarEstado(nuevoEstado:EstadoPedido)
                      //estado y nuevoEstado son del mismo tipo (EstadoPedido, el enum)
    {
        estado = nuevoEstado
        if let delegado = delegado
        {
          delegado.notificarCambioDeEstado(nuevoEstado:nuevoEstado)
        //si pusiera nuevoEstado:EstadoPedido.enviando/procesando/entregado, eso printearia al final

        }
    }
}




class GestorPedido{
}

//cómo extender una clase conformando a un protocolo para autodocumentarla
//extension
extension GestorPedido:NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) {
        print("El estado del pedido ha cambiado a \(nuevoEstado)")
    }
}




//para esta inicialización, si bien el tipo puede ser inferido, var gestor = GestorPedido()
//así como lo puse es más autodocumentable
var gestor = GestorPedido()

var pedido = Pedido()
pedido.delegado = gestor
pedido.cambiarEstado(nuevoEstado:EstadoPedido.entregado)
