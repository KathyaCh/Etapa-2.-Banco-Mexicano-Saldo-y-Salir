var aux: String = ""
var opcionIngresada: String = aux
var saldoTotal: Double = 0

// Deposito 
func deposito () {
  print ("\n")
  print ("¿Cuánto dinero desea depositar?")
  print ("\n")

  aux = readLine()!
  opcionIngresada = aux

  // Crear una variable double para sumar el saldo
  if let cantidadDepositada = Double(opcionIngresada) {
    saldoTotal = saldoTotal + cantidadDepositada
    print ("Deposito realizado con exito por $ \(cantidadDepositada)")
  } else {
    print ("Cantidad no valida")
  }
} // ← Aquí cerramos correctamente la función 'deposito'

// Retiro 
func retiro () {
  print ("\n")
  print ("¿Cuánto dinero desea retirar?")
  print ("\n")

  aux = readLine()!
  opcionIngresada = aux

  // Crear una variable double para restar el saldo
  if let cantidadRetirada = Double(opcionIngresada) {
    // Validar que la cantidad a retirar no sea mayor al saldo
    if (saldoTotal >= cantidadRetirada) {
      saldoTotal = saldoTotal - cantidadRetirada
      print ("Retiro realizado con exito por $ \(cantidadRetirada)")
    } else {
      print ("Saldo insuficiente")
    }
  } else {
    print ("Cantidad no valida")
  }
}

while opcionIngresada != "4" {
  print ("****Banco Mexicano****")
  print ("\n")
  print ("1. Deposito")
  print ("2. Retiro")
  print ("3. Saldo")
  print ("4. Salir")
  print ("\n")
  print ("Ingrese una opción: ")

  aux = readLine()! // Lee la entrada del usuario
  opcionIngresada = aux

  switch opcionIngresada {
    case "1": // Deposito
      deposito()
      print ("¿Desea realizar otra operación? (S/N) : ")

      aux = readLine()!
      opcionIngresada = aux

      switch opcionIngresada {
        case "S", "s":
          deposito()
        case "N", "n":
          print ("¿Desea continuar con otra operación? (N/S) ")

          aux = readLine()!
          opcionIngresada = aux 

          switch opcionIngresada {
            case "S", "s":
              print ("\n")
            case "N", "n":
              print ("Gracias por usar el Banco Mexicano")
              opcionIngresada = "4"
            default:
              print ("Opcion no valida")
          }

        case "4":
          print ("Gracias por usar el Banco Mexicano")
          opcionIngresada = "4"

        default:
          print ("Opcion no valida")
      }

    case "2": // Retiro
      retiro()
      print ("¿Desea realizar otra operación? (S/N) : ")

      aux = readLine()!
      opcionIngresada = aux

      switch opcionIngresada {
        case "S", "s":
          print ("\n")
          print ("Regresando al menu principal")

        case "N", "n":
          print ("\n")
          print ("Gracias por usar el Banco Mexicano")
          opcionIngresada = "4"

        default:
          print ("Opcion no valida")
      }

    case "3":
      print ("\n")
      print ("Su saldo es de: $ \(saldoTotal)")
      print ("\n")
      print ("¿Desea realizar otra operación? (S/N) : ")

      aux = readLine()!
      opcionIngresada = aux

      switch opcionIngresada {
        case "S", "s":
          print ("\n")
          print ("Regresando al menu principal")

        case "N", "n":
          print ("\n")
          print ("Gracias por usar el Banco Mexicano")
          opcionIngresada = "4"

        default:
          print ("Opcion no valida")
      }

    case "4":
      print ("Gracias por usar el Banco Mexicano")
      opcionIngresada = "4"

    default:
      print ("Opcion no valida") 
  }
}


