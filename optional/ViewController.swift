//
//  ViewController.swift
//  optional
//
//  Created by Daniel Washington Ignacio on 22/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //é uma variavel que pode ter valor ou não
        var name: String?
        
        var idade: Int? = 35
        
     
        print(name)
        print(idade)
        
        
        name = "Daniel Ignacio"
        
        print(name)
        
        var peso: Float? = 73
        
        print(peso)
        
        var altura: Float? = 1.83
        
        print(altura)
        
        
        var isSuccess: Bool?
        isSuccess = false
        
        if let value1 = isSuccess{
                print(value1)
        }else{
            print(isSuccess)
        }
        
        
        if let value2 = peso {
            print("peso \(value2)")
        }
        
        if let value3 = altura{
            print("altura \(value3)")
        }
        
        if let value4 = idade{
            print("idade \(value4)")
        }
        
        //se for nil não precisa atribuir nada
        //mas fica preso a um escopo
        if let value = name {
            print("nome \(value)")
        }
        
        //se for nil não precisa atribuir nada
        //não fica preso a um escopo
        guard let value5 = name else {
            return
        }
        
        print("============= guard let ============")
        print(value5)
        
        //se for nil não precisa atribuir nada
        //também não fica dentro de um escopo
        guard let value6 = idade else {
            return
        }
        
        print("============= guard let ============")
        print(value6)
        
        //se for nil irá atribuir um valor padrão
        //não fica dentro de um escopo
        name = nil
        var teste:String = name ?? "o valor foi nil"
        
        
        guard let value7 = peso else {
                return
        }
        
        guard let value8 = altura else {
            return
        }
        
        guard let value9 = isSuccess else {
            return
        }
        
        print("peso - Guard \(value7)")
        print("altura - Guard \(value8)")
        print("isSuccess - Guard \(value9)")
        
        //vai abrir de qualquer jeito o pacote
        //quando for nil irá dar problema
        //print(name!)
        
        var teste2:Float = altura ?? 1.98
        print(teste2)
        
        
    
        
        
        // Do any additional setup after loading the view.
  
        self.somar(valueF1: 1.1, valueF2: 2)
        self.somar2(valueF1: 1.1, valueF2: 2)
        self.somar3(valueF1: 1.1, valueF2: 2)
        self.somar4(valueF1: 1.1, valueF2: 2)
        self.somar5(valueF1: 1.1, valueF2: 2)
        self.imprimirPessoa(nome: "Daniel", sobrenome: "Ignacio", idade: 35, altura: 1.83, peso: 73)
        self.imprimirPessoa2(nome: "Daniel", sobrenome: "Ignacio", idade: 35, altura: 1.83, peso: 73)
        self.imprimirPessoa3(nome: "Daniel", sobrenome: "Ignacio", idade: 35, altura: 1.83, peso: 73)
        self.imprimirPessoa4(nome: "Daniel", sobrenome: "Ignacio", idade: 35, altura: 1.83, peso: 73)
        self.imprimirPessoa5(nome: "Daniel", sobrenome: "Ignacio", idade: 35, altura: 1.83, peso: 73)
        
    }

    func somar(valueF1: Float?, valueF2: Float?){
        
        let valueTeste1: Float = valueF1 ?? 0.0
        let valueTeste2: Float = valueF2 ?? 0.0
        
        let totalValue: Float = valueTeste1 + valueTeste2
        
        print("a soma dos valores é: \(totalValue)")
    }
    
    func somar2(valueF1: Float?, valueF2: Float?){
        
       if let _valueF1 = valueF1 , let _valueF2 = valueF2{
              let totalValue: Float = _valueF1 + _valueF2
              print("a soma dos valores é: \(totalValue)")
      }
        
    }
    
    func somar3(valueF1: Float?, valueF2: Float?){
        
        guard let _valueF1 = valueF1 else {
            return
        }
        guard let _valueF2 = valueF2 else {
            return
        }
        
        let totalValue: Float = _valueF1 + _valueF2
        print("a soma dos valores é: \(totalValue)")
        
    }
    
    func somar4(valueF1: Float?, valueF2: Float?){
        
         if let _valueF1 = valueF1{
             if let _valueF2 = valueF2{
         let totalValue: Float = _valueF1 + _valueF2
         print("a soma dos valores é: \(totalValue)")
             }
         }
    }
    
    func somar5(valueF1: Float?, valueF2: Float?){
        
        let totalValue: Float = (valueF1 ?? 0) + (valueF2 ?? 0)
        print("a soma dos valores é: \(totalValue)")
    }
    
    
    
    func imprimirPessoa(nome: String?,sobrenome: String? ,idade: Int?, altura: Float?, peso: Float?){
        let nomeValor:String = nome ?? ""
        let sobrenomeVAlor:String = sobrenome ?? ""
        let idadeValor:Int = idade ?? 0
        let alturaValor:Float = altura ?? 0.0
        let pesoValor:Float = peso ?? 0.0
        
        print("Pessoa: \(nomeValor) \(sobrenomeVAlor), \(idadeValor), \(alturaValor), \(pesoValor)k")
        
    }
    
    func imprimirPessoa2(nome: String?,sobrenome: String? ,idade: Int?, altura: Float?, peso: Float?){
        if let nomeValor = nome{
            if let sobrenomeValor = sobrenome{
                if let idadeValor = idade{
                    if let alturaValor = altura{
                        if let pesoValor = peso{
                            print("Pessoa: \(nomeValor) \(sobrenomeValor), \(idadeValor), \(alturaValor), \(pesoValor)k")
                        }
                    }
                }
            }
        }
    }
    
    func imprimirPessoa3(nome: String?,sobrenome: String? ,idade: Int?, altura: Float?, peso: Float?){
        guard let nomeValor = nome else {
            return
        }
        guard let sobrenomeValor = sobrenome else {
            return
        }
        guard let idadeValor = idade else {
            return
        }
        guard let alturaValor = altura else {
            return
        }
        guard let pesoValor = peso else {
            return
        }
        print("Pessoa: \(nomeValor) \(sobrenomeValor), \(idadeValor), \(alturaValor), \(pesoValor)k")
    }
    
    
    func imprimirPessoa4(nome: String?,sobrenome: String? ,idade: Int?, altura: Float?, peso: Float?){
        if let nomeValor = nome , let sobrenomeValor = sobrenome, let idadeValor = idade, let alturaValor = altura, let pesoValor = peso{
                print("Pessoa: \(nomeValor) \(sobrenomeValor), \(idadeValor), \(alturaValor), \(pesoValor)k")
            }
        }
    
    
    func imprimirPessoa5(nome: String?, sobrenome: String?, idade: Int?, altura: Float?, peso: Float?){
                guard let nomeValor = nome,
                      let sobrenomeValor = sobrenome,
                      let idadeValor = idade,
                      let alturaValor = altura,
                      let pesoValor = peso else {
                    return
                    
                }
        print("Pessoa: \(nomeValor) \(sobrenomeValor), \(idadeValor), \(alturaValor), \(pesoValor)k")
            }
}



