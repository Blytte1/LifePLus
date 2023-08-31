//
//  enums.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 03/07/23.
//

import Foundation
//MARK: - COUNTRY

enum Country: String, CaseIterable, Identifiable {
    var id: Country{self}
    case Afeganistao = "🇦🇫 Afeganistão"
    case AfricaDoSul = "🇿🇦 África do Sul"
    case Albania = "🇦🇱 Albânia"
    case Alemanha = "🇩🇪 Alemanha"
    case Angola = "🇦🇴 Angola"
    case AraviaSaudita = "🇸🇦 Arábia Saudita"
    case Argelia = "🇩🇿 Argélia"
    case Argentina = "🇦🇷 Argentina"
    case Armenia = "🇦🇲 Armênia"
    case Australia = "🇦🇺 Austrália"
    case Austria = "🇦🇹 Áustria"
    case Azerbaijao = "🇦🇿 Azerbaijão"
    case Bangladesh = "🇧🇩 Bangladesh"
    case Belgica = "🇧🇪 Bélgica"
    case Bermudas = "🇧🇲 Bermudas"
    case Bolivia = "🇧🇴 Bolívia"
    case Brasil = "🇧🇷 Brasil"
    case Burundi = "🇧🇮 Burundi"
    case CaboVerde = "🇨🇻 Cabo Verde"
    case Camaroes = "🇨🇲 Camarões"
    case Camboja = "🇰🇭 Camboja"
    case Canada = "🇨🇦 Canadá"
    case Cazaquistao = "🇰🇿 Cazaquistão"
    case CentroAfricana = "🇨🇫 Centro-Africana"
    case Chade = "🇹🇩 Chade"
    case Chile = "🇨🇱 Chile"
    case China = "🇨🇳 China"
    case Chipre = "🇨🇾 Chipre"
    case Cingapura = "🇸🇬 Cingapura"
    case Colombia = "🇨🇴 Colômbia"
    case CongoDemRep = "🇨🇩 Congo"
    case CoreiaDoNorte = "🇰🇵 Coréia do Norte"
    case CoreiaDoSul = "🇰🇷 Coréia do Sul"
    case CostaDoMafim = "🇨🇮 Costa do Marfim"
    case CostaRica = "🇨🇷 Costa Rica"
    case Croacia = "🇭🇷 Croácia"
    case Cuba = "🇨🇺 Cuba"
    case Dinamarca = "🇩🇰 Dinamarca"
    case Egito = "🇪🇬 Egito"
    case ElSalvador = "🇸🇻 El Salvador"
    case EmiradosArabes = "🇦🇪 Emirados Árabes Unidos"
    case Equador = "🇪🇨 Equador"
    case Espanha = "🇪🇸 Espanha"
    case EstadosUnidos = "🇺🇸 Estados Unidos"
    case Estonia = "🇪🇪 Estônia"
    case Etiopia = "🇪🇹 Etiópia"
    case Filipinas = "🇵🇭 Filipinas"
    case Finlandia = "🇫🇮 Finlândia"
    case Franca = "🇫🇷 França"
    case Gana = "🇬🇭 Gana"
    case Georgia = "🇬🇪 Geórgia"
    case Grecia = "🇬🇷 Grécia"
    case GuineEquatorial = "🇬🇶 Guiné Equatorial"
    case GuineBissau = "🇬🇼 Guiné-Bissau"
    case Haiti = "🇭🇹 Haiti"
    case HongKong = "🇭🇰 Hong Kong"
    case Hungria = "🇭🇺 Hungria"
    case Ieemen = "🇾🇪 Iêmen"
    case India = "🇮🇳 Índia"
    case Indonesia = "🇮🇩 Indonésia"
    case Iran = "🇮🇷 Irã"
    case Irlanda = "🇮🇪 Irlanda"
    case Islandia = "🇮🇸 Islândia"
    case Israel = "🇮🇱 Israel"
    case Italia = "🇮🇹 Itália"
    case Jamaica = "🇯🇲 Jamaica"
    case Japao = "🇯🇵 Japão"
    case Laos = "🇱🇦 Laos"
    case Letonia = "🇱🇻 Letônia"
    case Liechtenstein = "🇱🇮 Liechtenstein"
    case Lituania = "🇱🇹 Lituânia"
    case Luxemburgo = "🇱🇺 Luxemburgo"
    case Macau = "🇲🇴 Macau"
    case Madagascar = "🇲🇬 Madagascar"
    case Malasia = "🇲🇾 Malásia"
    case Mali = "🇲🇱 Mali"
    case Malta = "🇲🇹 Malta"
    case Marrocos = "🇲🇦 Marrocos"
    case Mauricio = "🇲🇺 Maurício"
    case Mexico = "🇲🇽 México"
    case Mocambique = "🇲🇿 Moçambique"
    case Montenegro = "🇲🇪 Montenegro"
    case Nepal = "🇳🇵 Nepal"
    case Niger = "🇳🇪 Níger"
    case Nigeria = "🇳🇬 Nigéria"
    case Noruega = "🇳🇴 Noruega"
    case NovaZelandia = "🇳🇿 Nova Zelândia"
    case Oman = "🇴🇲 Omã"
    case PaisesBaixos = "🇳🇱 Países Baixos"
    case Panama = "🇵🇦 Panamá"
    case PapuaNovaGuine = "🇵🇬 Papua-Nova Guiné"
    case Paquistao = "🇵🇰 Paquistão"
    case Paraguai = "🇵🇾 Paraguai"
    case Peru = "🇵🇪 Peru"
    case Polonia = "🇵🇱 Polônia"
    case PortoRico = "🇵🇷 Porto Rico"
    case Portugal = "🇵🇹 Portugal"
    case Quenia = "🇰🇪 Quênia"
    case ReinoUnido = "🇬🇧 Reino Unido"
    case Romenia = "🇷🇴 Romênia"
    case Ruanda = "🇷🇼 Ruanda"
    case Russia = "🇷🇺 Rússia"
    case SaoMarino = "🇸🇲 São Marino"
    case SaoTomeEPrincipe = "🇸🇹 São Tomé e Príncipe"
    case Senegal = "🇸🇳 Senegal"
    case SerraLeoa = "🇸🇱 Serra Leoa"
    case Servia = "🇷🇸 Sérvia"
    case Somalia = "🇸🇴 Somália"
    case Sudao = "🇸🇩 Sudão"
    case SudaoDoSul = "🇸🇸 Sudão do Sul"
    case Suecia = "🇸🇪 Suécia"
    case Suica = "🇨🇭 Suíça"
    case Tailandia = "🇹🇭 Tailândia"
    case Tcheca = "🇨🇿 Tchéquia"
    case TimorLeste = "🇹🇱 Timor-Leste"
    case Turquia = "🇹🇷 Turquia"
    case Ucrania = "🇺🇦 Ucrânia"
    case Uruguai = "🇺🇾 Uruguai"
    case Venezuela = "🇻🇪 Venezuela"
    case Vietnam = "🇻🇳 Vietnã"
    case Zambia = "🇿🇲 Zâmbia"
}
//MARK: - AGE

enum Age:Int,CaseIterable{
    case under30 = 0
    case between30and50 = 2
    case over50 = 4
}
extension Age:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .under30:
            return  "Até 29 anos."
        case .between30and50:
            return   "De 30 a 50 anos."
        case .over50:
            return "Acima de 50 anos."
        }
    }
}
 //MARK: - GENDER
enum  Gender:Int,CaseIterable{
    case female = 4
    case male = -3
}

extension Gender:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .female:
            return  "Feminino."
        case .male:
            return   "Masculino."
        }
    }
}
//MARK: - CITY
enum City:Int, CaseIterable{
    case less10k = 2
    case between10kand2kk = 0
    case over2kk = -2
}
extension City:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .less10k:
            return "Menos de 10 mil pessoas."
        case .between10kand2kk:
            return "De 10 mil a 2 milhões de pessoas."
        case .over2kk:
            return "Mais de 2 milhões de pessoas."
        }
    }
}
//MARK: - GRANDPARENTS
enum Grandparents:Int, CaseIterable{
    case yes = 2
    case no = 0
}
extension Grandparents:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - LONGEVITY
enum Longevity :Int, CaseIterable{
    case yes = 6
    case no = 0
}
extension Longevity:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - HEART
enum Heart:Int, CaseIterable{
    case yes = -4
    case no = 0
}
extension Heart:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - CANCER
enum Cancer:Int, CaseIterable{
    case yes = -3
    case no = 0
}
extension Cancer:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - INCOME
enum Income:Int, CaseIterable{
    case yes = 2
    case no = 0
}
extension Income:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - GRADUATION
enum Graduation: Int, CaseIterable{
    case bachelor = 1
    case professional = 2
    case no = 0
}
extension Graduation:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .bachelor:
            return "Sim, Graduação universitária."
        case .professional:
            return "Sim, Graduação profissionalizante."
        case .no:
            return "Sem graduação."
        }
    }
}
//MARK: - WORKOVER65
enum Workover65:Int, CaseIterable{
    case yes = 3
    case no = 0
}
extension Workover65:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - MARRIED
enum Married:Int, CaseIterable{
    case yes = 5
    case no = 0
}
extension Married:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - LONELY
enum Lonely: Int, CaseIterable{
    case decade = -3
    case decade2 = -6
    case decade3 = -9
    case decade4 = -12
    case no = 0
}
extension Lonely:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

       
        case .decade:
            return "Sim, por uma década."
        case .decade2:
            return "Sim, por duas décadas."
        case .decade3:
            return "Sim, por três décadas."
        case .decade4:
            return "Sim, por quatro décadas."
        case .no:
            return "Não."
        }
    }
}
//MARK: - WORK
enum Work: Int, CaseIterable{
    case yes = -3
    case no = 0
}
extension Work:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - EXERCISE
enum Exercise:Int, CaseIterable{
    case five = 4
    case three = 2
    case zero = 0
}
extension Exercise:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .five:
            return "Sim, pelo menos 5 vezes por semana."
        case .three:
            return "Sim, pelo menos 3 vezes por semana."
        case .zero:
            return "Não me exercito regularmente."
        }
    }
}
//MARK: - SLEEPER
enum Sleeper:Int, CaseIterable{
    case yes = -4
    case no = 0
}
extension Sleeper:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - PERSONALITY
enum Personality:Int, CaseIterable{
    case calm = 3
    case intense = -3
    case outgoing = 1
    case introvert = -1
}
extension Personality:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .calm:
            return "Tranquilo."
        case .intense:
            return "Intenso."
        case .outgoing:
            return "Extrovertido."
        case .introvert:
            return "Introvertido."
        }
    }
}
//MARK: - SPEEDY
enum Speedy:Int, CaseIterable{
    case yes = -1
    case no = 0

}
extension Speedy:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - ALCOHOLIC
enum Alcoholic:Int, CaseIterable{
    case yes = -1
    case no = 0
}
extension Alcoholic:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - SMOKER
enum Smoker: Int, CaseIterable{
    case overtwo = -8
    case two = -6
    case one = -3
    case no = 0
}
extension Smoker:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .overtwo:
            return "Sim, acima dois de maços por dia."
        case .two:
            return "Sim, entre um e dois maços por dia."
        case .one:
            return "Sim, de meio a um maço por dia."
        case .no:
            return "Não."
        }
    }
}
//MARK: - OVERWEIGHT
enum OverWeight:Int, CaseIterable{
    case over15 = -8
    case until15 = -4
    case under = -2
    case no = 0
}
extension OverWeight:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .over15:
            return "Sim, por mais de 15 kg."
        case .until15:
            return "Sim, de 10 a 15 kg."
        case .under:
            return "Sim, menos de 10 kg."
        case .no:
            return "Não."
        }
    }
}
//MARK: - CHECKUPS
enum Checkups:Int, CaseIterable{
    case yes = 2
    case no = 0
}
extension Checkups:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim."
        case .no:
            return "Não."
        }
    }
}
//MARK: - SCREEN
enum Screen:Hashable{
    case loading
    case intro
    case name
    case content(User)
    case report(User)
    case question(User,Question)
}
