//
//  LifeExpectancy.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/08/23.
//

import Foundation

struct LifeExpectancy:Hashable{
    var questions:[Question]
    var naturality : String
    var initialLifeExpectancy: Double{ LifeExpectancy.countries[naturality] ?? 88.0}
    var totalLifeExpectancy:Double
    
    
    static var countries: [String:Double] = ["🇦🇫 Afeganistão": 65, "🇿🇦 África do Sul": 65, "🇦🇱 Albânia": 79, "🇩🇪 Alemanha": 83, "🇦🇴 Angola": 64, "🇸🇦 Arábia Saudita": 78, "🇩🇿 Argélia": 78, "🇦🇷 Argentina": 78, "🇦🇲 Armênia": 77, "🇦🇺 Austrália": 85, "🇦🇹 Áustria": 83, "🇦🇿 Azerbaijão": 73, "🇧🇩 Bangladesh": 74, "🇧🇪 Bélgica": 84, "🇧🇲 Bermudas": 82, "🇧🇴 Bolívia": 66, "🇧🇷 Brasil": 76, "🇧🇮 Burundi": 63, "🇨🇻 Cabo Verde": 78, "🇨🇲 Camarões": 62, "🇰🇭 Camboja": 72, "🇨🇦 Canadá": 84, "🇰🇿 Cazaquistão": 74, "🇨🇫 Centro-Africana": 56, "🇹🇩 Chade": 54, "🇨🇱 Chile": 81, "🇨🇳 China": 81, "🇨🇾 Chipre": 83, "🇸🇬 Cingapura": 85, "🇨🇴 Colômbia": 76, "🇨🇩 Congo": 61, "🇰🇵 Coréia do Norte": 75, "🇰🇷 Coréia do Sul": 86, "🇨🇮 Costa do Marfim": 59, "🇨🇷 Costa Rica": 79, "🇭🇷 Croácia": 79, "🇨🇺 Cuba": 76, "🇩🇰 Dinamarca": 83, "🇪🇬 Egito": 72, "🇸🇻 El Salvador": 75, "🇦🇪 Emirados Árabes Unidos": 80, "🇪🇨 Equador": 77,  "🇪🇸 Espanha": 86, "🇪🇪 Estônia": 81, "🇪🇹 Etiópia": 68, "🇵🇭 Filipinas": 71, "🇫🇮 Finlândia": 84, "🇫🇷 França": 85, "🇬🇭 Gana": 66, "🇬🇪 Geórgia": 76, "🇬🇷 Grécia": 83, "🇬🇶 Guiné Equatorial": 62, "🇬🇼 Guiné-Bissau": 61, "🇭🇹 Haiti": 66, "🇭🇰 Hong Kong": 87, "🇭🇺 Hungria": 78, "🇾🇪 Iêmen": 67,"🇮🇳 Índia": 68, "🇮🇩 Indonésia": 69, "🇮🇷 Irã": 76, "🇮🇪 Irlanda": 84, "🇮🇸 Islândia": 84, "🇮🇱 Israel": 84, "🇮🇹 Itália": 85,"🇯🇲 Jamaica": 72, "🇯🇵 Japão": 87, "🇱🇦 Laos": 70, "🇱🇻 Letônia": 78, "🇱🇮 Liechtenstein": 86, "🇱🇹 Lituânia": 79, "🇱🇺 Luxemburgo": 84, "🇲🇴 Macau": 87, "🇲🇬 Madagascar": 66, "🇲🇾 Malásia": 77, "🇲🇱 Mali": 60, "🇲🇹 Malta": 84, "🇲🇦 Marrocos": 76, "🇲🇺 Maurício": 77, "🇲🇽 México": 74, "🇲🇿 Moçambique": 62, "🇲🇪 Montenegro": 77, "🇳🇵 Nepal": 70, "🇳🇪 Níger": 62,  "🇳🇬 Nigéria": 53, "🇳🇴 Noruega": 84, "🇳🇿 Nova Zelândia": 84, "🇴🇲 Omã": 74, "🇳🇱 Países Baixos": 83, "🇵🇦 Panamá": 79, "🇵🇬 Papua-Nova Guiné": 68, "🇵🇰 Paquistão": 68, "🇵🇾 Paraguai": 73, "🇵🇪 Peru": 74, "🇵🇱 Polônia": 79, "🇵🇷 Porto Rico": 84, "🇵🇹 Portugal": 84, "🇰🇪 Quênia": 64, "🇬🇧 Reino Unido": 82, "🇷🇴 Romênia": 76, "🇷🇼 Ruanda": 68, "🇷🇺 Rússia": 74, "🇸🇲 São Marino": 86, "🇸🇹 São Tomé e Príncipe": 70, "🇸🇳 Senegal": 69,"🇸🇱 Serra Leoa": 61, "🇷🇸 Sérvia": 75, "🇸🇴 Somália": 57, "🇸🇩 Sudão": 67, "🇸🇸 Sudão do Sul": 56, "🇸🇪 Suécia": 85, "🇨🇭 Suíça": 85, "🇹🇭 Tailândia": 83, "🇨🇿 Tchéquia": 80, "🇹🇱 Timor-Leste": 69, "🇹🇷 Turquia": 79, "🇺🇦 Ucrânia": 74, "🇺🇾 Uruguai": 79, "🇺🇸 Estados Unidos": 79, "🇻🇪 Venezuela": 75, "🇻🇳 Vietnã": 78, "🇿🇲 Zâmbia": 63]
 }
