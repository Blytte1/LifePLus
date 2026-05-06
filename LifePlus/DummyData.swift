//
//  Questions.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.

import SwiftUI

struct DummyData {

    
    // MARK: - HÁBITOS DE SAÚDE E NUTRIÇÃO

        static var diet = Question(
            id: "Qual é a base da sua alimentação diária?",
            questionImageUrl: "diet",
            tag: 1, categories: .habit,
            recommendationLink: "https://www.hsph.harvard.edu/nutritionsource/",
            justification: "A base alimentar define o nível de inflamação sistêmica do corpo. Dietas ricas em fibras e plantas protegem as artérias e o DNA.",
            options: [
                AnswerOption(description: "Produtos industrializados, embutidos e fast-food", value: -4.0),
                AnswerOption(description: "Arroz branco, pão francês e muita carne vermelha", value: -1.5),
                AnswerOption(description: "Equilíbrio entre proteínas, grãos e vegetais", value: 2.0),
                AnswerOption(description: "Grãos integrais, legumes, frutas e pouca carne", value: 4.0)
            ]
        )

        static var alcohol = Question(
            id: "Com que frequência você consome bebidas alcoólicas?",
            questionImageUrl: "alcoholic",
            tag: 2, categories: .habit,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/alcohol",
            justification: "O álcool em excesso é neurotóxico e danifica o miocárdio. O consumo esporádico minimiza riscos hepáticos.",
            options: [
                AnswerOption(description: "Todos os dias ou mais de 3 doses por vez", value: -5.0),
                AnswerOption(description: "De 3 a 5 vezes por semana", value: -1.5),
                AnswerOption(description: "Apenas em eventos ou fins de semana", value: 0.5),
                AnswerOption(description: "Raramente ou nunca consumo", value: 1.5)
            ],
            answer: AnswerOption(description: "Apenas em eventos ou fins de semana", value: 0.5)
        )

        static var exercise = Question(
            id: "Quanto tempo de atividade física você pratica por semana?",
            questionImageUrl: "exercise",
            tag: 3, categories: .habit,
            recommendationLink: "https://www.who.int/publications/i/item/9789240015128",
            justification: "O movimento melhora a circulação e a oxigenação cerebral. Menos de 30 minutos semanais encurtam a vida útil do coração.",
            options: [
                AnswerOption(description: "Menos de 30 minutos", value: -3.0),
                AnswerOption(description: "Entre 30 minutos e 2 horas", value: 0.5),
                AnswerOption(description: "Entre 2 e 5 horas", value: 2.5),
                AnswerOption(description: "Mais de 5 horas de forma consistente", value: 4.0)
            ]
        )

        static var sleep = Question(
            id: "Quantas horas de sono você tem, em média, por noite?",
            questionImageUrl: "sleepy",
            tag: 4, categories: .habit,
            recommendationLink: "https://www.sleepfoundation.org/how-sleep-works/why-do-we-need-sleep",
            justification: "Dormir menos de 6 horas impede a limpeza de toxinas cerebrais; dormir demais (mais de 10h) pode indicar problemas metabólicos.",
            options: [
                AnswerOption(description: "Menos de 5 horas", value: -3.5),
                AnswerOption(description: "Entre 5 e 6 horas", value: -1.0),
                AnswerOption(description: "Entre 7 e 9 horas", value: 2.5),
                AnswerOption(description: "Mais de 10 horas", value: -0.5)
            ]
        )

        static var smoker = Question(
            id: "Qual o seu histórico com o tabagismo?",
            questionImageUrl: "smoker",
            tag: 5, categories: .habit,
            recommendationLink: "https://www.cdc.gov/tobacco/basic_information/health_effects/index.htm",
            justification: "O cigarro acelera o envelhecimento arterial e é a maior causa de câncer de pulmão e bexiga.",
            options: [
                AnswerOption(description: "Fumo diariamente", value: -10.0),
                AnswerOption(description: "Fumo ocasionalmente ou convivo com fumantes", value: -4.0),
                AnswerOption(description: "Parei de fumar há mais de 2 anos", value: 1.0),
                AnswerOption(description: "Nunca fumei", value: 4.0)
            ]
        )

        static var sugar = Question(
            id: "Com que frequência você adiciona açúcar a comida?",
            questionImageUrl: "diet",
            tag: 6, categories: .habit,
            recommendationLink: "https://www.who.int/news/item/04-03-2015-who-calls-on-countries-to-reduce-sugars-intake-among-adults-and-children",
            justification: "O açúcar causa picos glicêmicos que danificam os vasos sanguíneos e sobrecarregam o pâncreas.",
            options: [
                AnswerOption(description: "Em quase todas as refeições ou bebidas", value: -3.0),
                AnswerOption(description: "Pelo menos uma vez ao dia", value: -1.0),
                AnswerOption(description: "Algumas vezes na semana", value: 1.0),
                AnswerOption(description: "Raramente ou nunca adiciono açúcar", value: 3.0)
            ]
        )

        static var checkups = Question(
            id: "Com que regularidade você faz exames médicos?",
            questionImageUrl: "checkup",
            tag: 7, categories: .habit,
            recommendationLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6351189/",
            justification: "Monitorar pressão, glicose e colesterol permite intervir antes que problemas silenciosos se tornem fatais.",
            options: [
                AnswerOption(description: "Apenas quando sinto algo", value: -2.0),
                AnswerOption(description: "A cada 3 anos ou mais", value: 0.0),
                AnswerOption(description: "A cada 1 ou 2 anos", value: 1.5),
                AnswerOption(description: "Faço check-ups completos anualmente", value: 2.5)
            ]
        )

        static var hydration = Question(
            id: "Qual o seu consumo diário de água pura?",
            questionImageUrl: "diet",
            tag: 8, categories: .habit,
            recommendationLink: "https://www.nationalacademies.org/news/2004/02/report-sets-dietary-reference-intakes-for-water-salt-potassium-and-fat",
            justification: "A hidratação mantém a elasticidade da pele e a eficiência da filtragem renal.",
            options: [
                AnswerOption(description: "Menos de 1 litro", value: -1.0),
                AnswerOption(description: "Entre 1 e 2 litros", value: 1.0),
                AnswerOption(description: "Mais de 2 litros", value: 2.0)
            ]
        )

        // MARK: - FATORES SOCIAIS E BEM-ESTAR

        static var socialSupport = Question(
            id: "Como você descreve sua interação social?",
            questionImageUrl: "lonely",
            tag: 9, categories: .demografic,
            recommendationLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6125013/",
            justification: "Conexões humanas fortes reduzem a inflamação corporal e aumentam a sobrevida em doenças graves.",
            options: [
                AnswerOption(description: "Sinto-me sozinho na maior parte do tempo", value: -4.0),
                AnswerOption(description: "Tenho poucos contatos por mês", value: -1.0),
                AnswerOption(description: "Interajo com amigos/família semanalmente", value: 2.0),
                AnswerOption(description: "Tenho um grupo de apoio presente e diário", value: 4.5)
            ]
        )

        static var ikigai = Question(
            id: "Como você se sente sobre suas metas e propósitos?",
            questionImageUrl: "spiritual",
            tag: 10, categories: .habit,
            recommendationLink: "https://www.bmj.com/content/359/bmj.j5346",
            justification: "Ter uma razão para viver (Ikigai) reduz o risco de doenças cardiovasculares e declínio cognitivo.",
            options: [
                AnswerOption(description: "Não vejo sentido nas minhas tarefas diárias", value: -2.5),
                AnswerOption(description: "Faço o que é necessário mas sem entusiasmo", value: 0.0),
                AnswerOption(description: "Tenho planos e objetivos que me motivam", value: 2.0),
                AnswerOption(description: "Sinto que minha vida tem um propósito claro", value: 3.5)
            ]
        )

        static var stress = Question(
            id: "Como você lida com as pressões do dia a dia?",
            questionImageUrl: "personality",
            tag: 11, categories: .habit,
            recommendationLink: "https://www.apa.org/topics/stress/health",
            justification: "O estresse crônico destrói os telômeros (pontas do DNA), acelerando o envelhecimento biológico.",
            options: [
                AnswerOption(description: "Sinto-me esgotado e ansioso diariamente", value: -3.0),
                AnswerOption(description: "Tenho picos de estresse frequentes", value: -1.0),
                AnswerOption(description: "Lido bem com as pressões rotineiras", value: 1.0),
                AnswerOption(description: "Pratico meditação ou técnicas de calma", value: 2.5)
            ]
        )

        static var screens = Question(
            id: "Quanto tempo você passa em frente a telas (lazer)?",
            questionImageUrl: "texting",
            tag: 12, categories: .habit,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/sedentary-behaviour",
            justification: "O uso excessivo de telas está ligado ao sedentarismo e à piora da qualidade do sono e saúde mental.",
            options: [
                AnswerOption(description: "Mais de 6 horas por dia", value: -1.5),
                AnswerOption(description: "Entre 3 e 6 horas por dia", value: 0.0),
                AnswerOption(description: "Menos de 3 horas por dia", value: 1.5)
            ]
        )

        static var pets = Question(
            id: "Você convive com animais de estimação?",
            questionImageUrl: "homePerson",
            tag: 13, categories: .habit,
            recommendationLink: "https://www.ahajournals.org/doi/10.1161/CIR.0000000000000734",
            justification: "A convivência com pets reduz a solidão e libera hormônios de bem-estar como a dopamina.",
            options: [
                AnswerOption(description: "Não possuo animais", value: 0.0),
                AnswerOption(description: "Sim, mas não tenho muito contato", value: 0.5),
                AnswerOption(description: "Sim, cuido e interajo com eles todos os dias", value: 1.5)
            ]
        )

        // MARK: - FATORES ECONÔMICOS E AMBIENTE

        static var income = Question(
            id: "Como é sua situação financeira em relação ao custo de vida?",
            questionImageUrl: "income",
            tag: 14, categories: .demografic,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/social-determinants-of-health",
            justification: "A renda impacta o acesso à nutrição de qualidade, tratamentos médicos avançados e segurança pessoal.",
            options: [
                AnswerOption(description: "Incapaz de cobrir as necessidades básicas", value: -4.5),
                AnswerOption(description: "Cubro o básico mas sem reservas", value: -1.0),
                AnswerOption(description: "Confortável, com sobra para lazer e saúde", value: 2.0),
                AnswerOption(description: "Tenho plena segurança e independência", value: 3.5)
            ]
        )

        static var sanitation = Question(
            id: "Como é o acesso a serviços básicos na sua moradia?",
            questionImageUrl: "flood",
            tag: 15, categories: .demografic,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/sanitation",
            justification: "Água tratada e esgoto evitam infecções repetitivas que sobrecarregam o sistema imunológico ao longo de décadas.",
            options: [
                AnswerOption(description: "Sem rede de esgoto ou água encanada", value: -4.0),
                AnswerOption(description: "Apenas água encanada, sem rede de esgoto", value: -2.0),
                AnswerOption(description: "Rede completa de água e esgoto", value: 1.5)
            ]
        )

        static var healthAccess = Question(
            id: "Qual a facilidade de acesso a atendimento médico rápido?",
            questionImageUrl: "hospital",
            tag: 16, categories: .demografic,
            recommendationLink: "https://www.who.int/health-topics/universal-health-coverage",
            justification: "O tempo de resposta em emergências (como infartos) determina se haverá sequelas ou óbito.",
            options: [
                AnswerOption(description: "Moro longe e dependo de filas longas", value: -3.0),
                AnswerOption(description: "Demoro horas para ser atendido", value: -1.0),
                AnswerOption(description: "Tenho hospitais próximos e atendimento ágil", value: 2.0)
            ]
        )

        static var residence = Question(
            id: "Em que tipo de ambiente você passa a maior parte do tempo?",
            questionImageUrl: "city",
            tag: 17, categories: .demografic,
            recommendationLink: "https://www.who.int/health-topics/air-pollution",
            justification: "Poluição do ar e ruídos excessivos são fatores de risco para doenças pulmonares e hipertensão.",
            options: [
                AnswerOption(description: "Grande centro urbano poluído e barulhento", value: -2.0),
                AnswerOption(description: "Área urbana com arborização média", value: 0.0),
                AnswerOption(description: "Cidades pequenas ou áreas rurais", value: 1.5),
                AnswerOption(description: "Próximo à natureza ou parques", value: 3.0)
            ]
        )

        static var education = Question(
            id: "Qual o seu nível de escolaridade concluído?",
            questionImageUrl: "graduation",
            tag: 18, categories: .demografic,
            recommendationLink: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4367980/",
            justification: "A educação está estatisticamente ligada à maior consciência sobre riscos e melhor autogestão da saúde.",
            options: [
                AnswerOption(description: "Ensino fundamental ou incompleto", value: -2.0),
                AnswerOption(description: "Ensino médio", value: 0.0),
                AnswerOption(description: "Ensino superior", value: 1.5),
                AnswerOption(description: "Especialização ou Pós-graduação", value: 3.0)
            ]
        )

        // MARK: - FATORES DE RISCO E SEGURANÇA

        static var traffic = Question(
            id: "Qual o seu comportamento no trânsito ou vias públicas?",
            questionImageUrl: "speedy",
            tag: 19, categories: .habit,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/road-traffic-injuries",
            justification: "A distração pelo celular e o excesso de velocidade são as maiores causas de morte evitável em adultos.",
            options: [
                AnswerOption(description: "Excedo a velocidade e uso celular ao dirigir", value: -6.0),
                AnswerOption(description: "Às vezes ignoro sinais ou uso o celular", value: -2.5),
                AnswerOption(description: "Sigo rigorosamente todas as leis e sinais", value: 1.5),
                AnswerOption(description: "Sou pedestre/ciclista em vias muito seguras", value: 2.0)
            ]
        )

        static var safetyBelt = Question(
            id: "Você utiliza itens de segurança (cinto/capacete)?",
            questionImageUrl: "seatbelt",
            tag: 20, categories: .habit,
            recommendationLink: "https://www.nhtsa.gov/vehicle-safety/seat-belts",
            justification: "Equipamentos de proteção reduzem em até 70% o risco de morte em colisões.",
            options: [
                AnswerOption(description: "Raramente utilizo", value: -3.0),
                AnswerOption(description: "Utilizo apenas quando sou cobrado", value: -1.0),
                AnswerOption(description: "Utilizo em todas as ocasiões", value: 1.5)
            ]
        )

        static var sun = Question(
            id: "Como é sua exposição ao sol sem proteção?",
            questionImageUrl: "walker",
            tag: 21, categories: .habit,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/ultraviolet-radiation-and-health",
            justification: "O dano solar é cumulativo e pode levar a melanomas agressivos com o passar dos anos.",
            options: [
                AnswerOption(description: "Fico muito tempo ao sol sem qualquer proteção", value: -1.5),
                AnswerOption(description: "Protejo-me apenas em praias ou piscinas", value: 0.0),
                AnswerOption(description: "Uso protetor/barreiras sempre que saio", value: 1.5)
            ]
        )

        static var violenceRisk = Question(
            id: "Você frequenta áreas com altos índices de criminalidade?",
            questionImageUrl: "night",
            tag: 22, categories: .demografic,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/violence-and-health",
            justification: "A exposição constante à insegurança gera estresse pós-traumático e riscos físicos diretos.",
            options: [
                AnswerOption(description: "Moro ou transito em áreas muito perigosas", value: -4.0),
                AnswerOption(description: "Evito áreas de risco quando possível", value: 0.0),
                AnswerOption(description: "Moro em local calmo e monitorado", value: 1.5)
            ]
        )

        // MARK: - GENÉTICA E SAÚDE BIOLÓGICA

        static var ancestors = Question(
            id: "Qual a longevidade média dos seus ancestrais diretos?",
            questionImageUrl: "longevity",
            tag: 23, categories: .biologic,
            recommendationLink: "https://www.nature.com/articles/s41598-020-75210-9",
            justification: "Ter pais e avós que superaram os 90 anos indica variantes genéticas que protegem contra o envelhecimento celular.",
            options: [
                AnswerOption(description: "Faleceram antes dos 60", value: -3.0),
                AnswerOption(description: "Viveram entre 60 e 80 anos", value: 0.0),
                AnswerOption(description: "Pelo menos um superou os 90 anos", value: 3.5),
                AnswerOption(description: "Vários superaram os 95 anos", value: 5.5)
            ]
        )

        static var heartHistory = Question(
            id: "Há histórico de infarto ou AVC na família antes dos 55 anos?",
            questionImageUrl: "heart",
            tag: 24, categories: .biologic,
            recommendationLink: "https://www.heart.org/en/health-topics/consumer-healthcare/what-is-cardiovascular-disease/family-history-and-heart-disease-stroke",
            justification: "Eventos cardíacos precoces em parentes de 1º grau aumentam sua predisposição genética para problemas circulatórios.",
            options: [
                AnswerOption(description: "Sim, em mais de um parente próximo", value: -4.0),
                AnswerOption(description: "Sim, em um dos meus pais", value: -2.0),
                AnswerOption(description: "Não, nenhum caso precoce", value: 1.5)
            ]
        )

        static var chronicCondition = Question(
            id: "Você possui diagnóstico de diabetes ou hipertensão?",
            questionImageUrl: "cancer",
            tag: 25, categories: .biologic,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/noncommunicable-diseases",
            justification: "Doenças crônicas não tratadas agridem os microvasos de órgãos como olhos, rins e cérebro.",
            options: [
                AnswerOption(description: "Sim, e não sigo o tratamento corretamente", value: -6.0),
                AnswerOption(description: "Sim, mas sigo tratamento e está controlado", value: 0.0),
                AnswerOption(description: "Não possuo nenhuma doença crônica", value: 2.0)
            ]
        )

        static var mentalHealth = Question(
            id: "Como você cuida da sua saúde mental?",
            questionImageUrl: "personality",
            tag: 26, categories: .biologic,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/mental-health-strengthening-our-response",
            justification: "Transtornos como depressão alteram o sistema endócrino e podem encurtar a vida se não houver suporte.",
            options: [
                AnswerOption(description: "Tenho crises frequentes sem ajuda profissional", value: -4.5),
                AnswerOption(description: "Faço terapia ou acompanhamento regular", value: 0.5),
                AnswerOption(description: "Sinto-me mentalmente saudável e equilibrado", value: 2.0)
            ]
        )

        static var overweight = Question(
            id: "Como você avalia seu peso corporal?",
            questionImageUrl: "overwheight",
            tag: 27, categories: .biologic,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/obesity-and-overweight",
            justification: "O excesso de gordura visceral (abdominal) é metabolicamente ativo e gera inflamação constante nos órgãos.",
            options: [
                AnswerOption(description: "Muito acima do recomendado para minha altura", value: -4.0),
                AnswerOption(description: "Um pouco acima do peso ideal", value: -1.0),
                AnswerOption(description: "Dentro da faixa de peso saudável", value: 2.0)
            ]
        )

        static var drugsHistory = Question(
            id: "Qual sua relação com substâncias ilícitas?",
            questionImageUrl: "drugs",
            tag: 28, categories: .habit,
            recommendationLink: "https://www.nida.nih.gov/publications/drugs-brains-behavior-science-addiction/addiction-health",
            justification: "Substâncias pesadas sobrecarregam o sistema dopaminérgico e cardiovascular de forma irreversível.",
            options: [
                AnswerOption(description: "Consumo ou consumi drogas pesadas regularmente", value: -10.0),
                AnswerOption(description: "Consumo substâncias leves ocasionalmente", value: -2.5),
                AnswerOption(description: "Nunca utilizei qualquer substância ilícita", value: 2.0)
            ]
        )

        static var workEnvironment = Question(
            id: "Como é o esforço físico ou periculosidade do seu trabalho?",
            questionImageUrl: "work",
            tag: 29, categories: .demografic,
            recommendationLink: "https://www.who.int/news-room/fact-sheets/detail/occupational-health",
            justification: "Trabalhos com alta exposição química, radiação ou desgaste físico extremo reduzem a longevidade funcional.",
            options: [
                AnswerOption(description: "Trabalho perigoso ou com carga física exaustiva", value: -3.0),
                AnswerOption(description: "Trabalho muito tempo sentado", value: -1.5),
                AnswerOption(description: "Trabalho equilibrado com pausas e ergonomia", value: 1.0)
            ]
        )

        static var hobbies = Question(
            id: "Você pratica atividades que estimulam o cérebro (leitura, jogos, cursos)?",
            questionImageUrl: "graduation",
            tag: 30, categories: .habit,
            recommendationLink: "https://www.alz.org/alzheimers-dementia/research_progress/earlier-detection/cognitive-reserve",
            justification: "A reserva cognitiva protege contra o Alzheimer e mantém a autonomia por mais tempo.",
            options: [
                AnswerOption(description: "Raramente faço atividades intelectuais", value: -1.0),
                AnswerOption(description: "Faço ocasionalmente", value: 0.5),
                AnswerOption(description: "Leio ou estudo algo novo quase todos os dias", value: 2.5)
            ]
        )
    // MARK: - ARRAY FINAL
    static var questions: [Question] = [
        diet, alcohol, exercise, sleep, smoker, sugar, checkups, hydration,
        socialSupport, ikigai, stress, screens, pets,
        income, sanitation, healthAccess, residence, education,
        traffic, safetyBelt, sun, violenceRisk,
        ancestors, heartHistory, chronicCondition, mentalHealth, overweight, drugsHistory, workEnvironment, hobbies
    ]
    
    static var lifeExpectancy = LifeExpectancy(
        questions: questions,
        nationality: "Brasil",
        totalLifeExpectancy: 75
    )

    static var user: User = User(name: "Zé", age: 18, sex: .feminino, lifeExpectancy: lifeExpectancy)
    static var dm = DataManager(user: user, language: "pt-BR", router: NavigationRouter())

    static var countries: [String: Double] = [
        "Afeganistão": 65, "África do Sul": 65, "Albânia": 79, "Alemanha": 83, "Angola": 64,
        "Arábia Saudita": 78, "Argélia": 78, "Argentina": 78, "Armênia": 77, "Austrália": 85,
        "Áustria": 83, "Azerbaijão": 73, "Bangladesh": 74, "Bélgica": 84, "Bermudas": 82,
        "Bolívia": 66, "Brasil": 75.5, "Burundi": 63, "Cabo Verde": 78, "Camarões": 62,
        "Camboja": 72, "Canadá": 84, "Cazaquistão": 74, "Centro-Africana": 56, "Chade": 54,
        "Chile": 81, "China": 81, "Chipre": 83, "Cingapura": 85, "Colômbia": 76,
        "Congo": 61, "Coréia do Norte": 75, "Coréia do Sul": 86, "Costa do Marfim": 59,
        "Costa Rica": 79, "Croácia": 79, "Cuba": 76, "Dinamarca": 83, "Egito": 72,
        "El Salvador": 75, "Emirados Árabes Unidos": 80, "Equador": 77, "Espanha": 86,
        "Estônia": 81, "Etiópia": 68, "Filipinas": 71, "Finlândia": 84, "França": 85,
        "Gana": 66, "Geórgia": 76, "Grécia": 83, "Guiné Equatorial": 62, "Guiné-Bissau": 61,
        "Haiti": 66, "Hong Kong": 87, "Hungria": 78, "Iêmen": 67, "Índia": 68,
        "Indonésia": 69, "Irã": 76, "Irlanda": 84, "Islândia": 84, "Israel": 84,
        "Itália": 85, "Jamaica": 72, "Japão": 87, "Laos": 70, "Letônia": 78,
        "Liechtenstein": 86, "Lituânia": 79, "Luxemburgo": 84, "Macau": 87, "Madagascar": 66,
        "Malásia": 77, "Mali": 60, "Malta": 84, "Marrocos": 76, "Maurício": 77,
        "México": 74, "Moçambique": 62, "Montenegro": 77, "Nepal": 70, "Níger": 62,
        "Nigéria": 53, "Noruega": 84, "Nova Zelândia": 84, "Omã": 74, "Países Baixos": 83,
        "Palestina": 73, "Panamá": 79, "Papua-Nova Guiné": 68, "Paquistão": 68, "Paraguai": 73,
        "Peru": 74, "Polônia": 79, "Porto Rico": 84, "Portugal": 84, "Quênia": 64,
        "Reino Unido": 82, "Romênia": 76, "Ruanda": 68, "Rússia": 74, "São Marino": 86,
        "São Tomé e Príncipe": 70, "Senegal": 69, "Serra Leoa": 61, "Sérvia": 75,
        "Somália": 57, "Sudão": 67, "Sudão do Sul": 56, "Suécia": 85, "Suíça": 85,
        "Tailândia": 83, "Tchéquia": 80, "Timor-Leste": 69, "Turquia": 79, "Ucrânia": 74,
        "Uruguai": 79, "Estados Unidos": 79, "Venezuela": 75, "Vietnã": 78, "Zâmbia": 63
    ]
}
