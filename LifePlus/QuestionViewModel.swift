//
//  Q.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 22/08/23.
//

import SwiftUI

struct QuestionViewModel{
    var user: User = DummyData.user
    var question: Question = DummyData.gender
    var explanation: String = ""
    var recommendation: String = ""
    var recommendationImage: Image = Image("logo")
    var recommendationTag: String = ""
    var recommendationPrice:String = ""
    var recommendationLink:String = ""
 
    mutating func loadRecomendationValues(){
        switch question.tag{
        case 0:
            if user.age <= 30{
                explanation = "Nos primeiros 30 anos de vida, a maior causa de mortalidade é por causas não naturais. Acidentes de trânsito, violência urbana, suicídio, afogamento e quedas são a 5 maiores taxas de mortalidade para essa época. \n     Portanto, além de ser a melhor época para se criar bons hábitos, é também a que mais influencia na qualidade de vida."
                recommendation = "Desenvolva o hábito de fazer exercícios físicos. Além de trazer qualidade de vida, auxília no controle do estresse e previne diversas doenças futuras."
                recommendationImage = Image("age1")
                recommendationTag = "Whey Growth Concentrado"
                recommendationPrice = "Apenas R$: 59,99"
                recommendationLink =
                "https://www.amazon.com.br/Nutriwhey-Baunilha-Pouch-907G-Integralmedica/dp/B07M6RFLXD/ref=sr_1_5?keywords=whey%2Bprotein&qid=1692737515&sprefix=whey%2Caps%2C260&sr=8-5&th=1"
            } else if user.age > 30 && user.age < 50{
                explanation = "A fase adulta apresenta uma estabilidade em relações a riscos externos. Uma situação financeira mais estável e responsabilidades mais definidas levam a uma tendência de se procurar ambientes mais seguros, especialmente se o indivíduo estiver em uma relação estável e/ou com filhos. No entanto, nessa fase, os hábitos adquiridos na juventude passam a exercer impactos significativos na saúde."
                recommendation = "Procure reformar maus hábitos e estimular bons hábitos, arrange tempo para si, tenha uma ingestão adequada de água ao seu peso corporal, busque respirar ar puro, cuide da mente e do espírito, tudo isso pode trazer resultados significativamente relevantes a curto e médio prazo e aumentando significativamente sua expectativa de vida."
                recommendationImage = Image("age2")
                recommendationTag = "Natura Chronos"
                recommendationPrice = "Apenas R$: 129,90"
                recommendationLink = "https://www.amazon.com.br/Creme-Antissinais-Firmeza-Radi%C3%A2ncia-Chronos/dp/B01GIP6OU0/ref=sr_1_24?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=21NVXOUWNB2E7&keywords=chronos&qid=1692916107&sprefix=chronos%2Caps%2C222&sr=8-24"
            }else{
                explanation = "A partir dos 50 anos, os hábitos já estão bem enraizados e os resultados de atitudes tomadas ao longo da vida são colhidos diariamente. No entanto exercício físico, suplementação de vitaminas, ingestão de água aliados a um monitoramento constante da saúde fazem toda a diferença nos anos vindouros. A terceira idade pode ser uma benção para aqueles que estão dispostos a vivê-la com inteligência."
                recommendation = "Dica: A partir dos 30 anos, a pele começa a mostrar sinais de cansaço, primeiras rugas e linhas de expressão. O tratamento ideal é aquele que renova a pele e recupera a energia. Creme Antissinais 30+ reduz linhas de expressão, recupera a energia da pele, hidrata e regenera a pele."
                recommendationImage = Image("age3")
                recommendationTag = "Omega 3 Melhor Vitan"
                recommendationPrice = "Apenas R$: 99,90"
                recommendationLink = "https://www.amazon.com.br/OMEGA-1400MG-C%C3%81PSULAS-MELHOR-VITAN/dp/B0C9P4TG9N/ref=sr_1_1_sspa?keywords=omega+3&qid=1692916645&sprefix=omega%2Caps%2C370&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1"
            }
            
        case 1:
    if user.lifeExpectancy.questions[01].answerValue == 4{
        explanation = "Mulheres tendem a viver mais que homens, fatores como consultas médicas regulares e aversão natural a comportamentos de risco contribuem para uma expectativa de vida mais longa. Mulheres tendem a ser mais sábias do que o sexo oposto e pensam mais em segurança tanto para si como para família.No entanto, enquanto mulheres até 30 anos são mais sucetíveis morte por causas externas, como acidentes e violência a maior causa mortis entre mulheres acima de 30 anos é de problemas no sistema Circulatório e por crescimento de tumores."
        recommendation = "Priorize a si mesma antes de ajudar outras pessoas, pratique uma rotina de hábitos saudáveis como exercício físico diário, checkups regulares com o médico são essenciais. Não se esqueça: a prevenção é a melhor forma de se manter saudável."
        recommendationImage = Image("gender1")
        recommendationTag = "Centrum Polivitamínico Vitaminas Mulher de A a Z - 60 comprimidos"
        recommendationPrice = "Apenas R$: 149,99"
        recommendationLink = "https://www.amazon.com.br/Esponja-Limpeza-Pesada-pac-Flash/dp/B078NKGKVS/ref=asc_df_B078NKGKVS/?tag=googleshopp00-20&linkCode=df0&hvadid=379805722748&hvpos=&hvnetw=g&hvrand=3247346357091502349&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1001541&hvtargid=pla-1207497581911&psc=1"
            
            } else{
                explanation = "Homens tendem a viver menos que mulheres, enquanto que no Brasil a média de vida para homens é de 73 anos para mulheres é de 81. Homens tendem a morrer devido a causas externas sendo lesões advindas de acidentes de trânsito, envenenamento e traumatismos Cranianos estão no topo dessas causas. Homens também sofrem mais por doenças cardíacas, sendo essa a principal causa de óbito entre homens no Brasil, seguidos por tumores e doenças parasitárias."
                recommendation = "Não deixe a sua saúde para depois, grande parte da mortalidade masculina advêm do preconceito e descuido do homem para consigo mesmo, portanto, não ignore seu corpo e faça checkups regulares, mas não se esqueça a prevenção ainda é o melhor remédio."
                recommendationImage = Image("gender2")
                recommendationTag = "Centrum Essentials Homem, 60 comprimidos"
                recommendationPrice = "Apenas R$: 149,99"
                recommendationLink = "https://www.amazon.com.br/OMEGA-1400MG-C%C3%81PSULAS-MELHOR-VITAN/dp/B0C9P4TG9N/ref=sr_1_1_sspa?keywords=omega+3&qid=1692916645&sprefix=omega%2Caps%2C370&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1"
            }
        case 2:
            explanation = "Quanto maior a cidade, maiores são seus problemas, violência, acidêntes de trânsito, transmissão de doenças infectocontagiosas dentre outras mazelas aumentam na mesma proporção que o número populacional de uma cidade."
            recommendation = "Na medida do possível, procure evitar lugares de grande aglomeração de pessoas, esteja sempre alerta ao seu arredor, principalmente enquanto estiver em lugares cheios. A vida na cidade é cômoda, mas também esconde riscos onde menos se espera."
             recommendationImage = Image("city1")
             recommendationTag = ""
             recommendationPrice = ""
             recommendationLink = "https://mkt.quintoandar.com.br/anunciar-imovel/google-semnb/?utm_source=google&utm_medium=cpc&utm_campaign=1514.S.ACQ.Rental.Brasilia.PWA&utm_term=Corretor_corretora%20imobiliaria_b&utm_content=656348914259&gad=1&gclid=CjwKCAjwoqGnBhAcEiwAwK-OkZeSMIFqYAXeQL1t3kbF-F8YlkV6kWWlCihDzSkd5hAvUnzznE9exhoCqU0QAvD_BwE"
            
        case 3:
            explanation = "A genética é um fator determinante para avaliar a probabilidade de doenças. Familiares longevos são um bom indicativo de uma genética saudável, portanto, é também um bom indicativo de expectativa de vida maior para seus decendentes."
             recommendation =
            "Passe a incluir em sua dieta o consumo de ômega 3 diáriamente, ele apresenta inúmeros benefícios para o corpo humano, sendo indicado a todas as pessoas independentemente de sexo, idade ou se pratica atividades físicas ou não.\n     O omega 3 Influencia diretamente no funcionamento adequado de órgãos como o cérebro e coração, exercendo também um papel muito importante na prevenção de doenças e na redução dos riscos de desenvolvimento de câncer."
             recommendationImage = Image("grandparents1")
             recommendationTag = "Ômega 3 TG Vhita 1000mg"
             recommendationPrice = "R$ 109,00"
             recommendationLink = "https://www.amazon.com.br/%C3%94mega-1000mg-Vhita-Rico-c%C3%A1psulas/dp/B09SN7MR86/ref=sr_1_1_sspa?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=19S65WE2AKBT8&keywords=omega+3&qid=1693330614&sprefix=omega+3%2Caps%2C237&sr=8-1-spons&ufe=app_do%3Aamzn1.fos.6d798eae-cadf-45de-946a-f477d47705b9&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1"
            
        case 4:
            explanation = user.lifeExpectancy.questions[04].answerValue == 6 ? "Se um familiar longevo é um bom sinal, quatro em linha ascendente é melhor ainda, em termos normais, isso demonstra uma genética mais resistente a doenças hereditárias e aponta para uma vida mais longa." : "Não ter parentes ascendentes longevos não significa necessáriamente que teremos menos tempo de vida, porém é importante estar sempre alerta quanto a doenças hereditárias em nossa família próxima."
            recommendation = "Tenha uma alimentação rica em vitamina C. \n       A vitamina C ajuda a otimizar seus benefícios antioxidantes, traz diversos benefícios para a pele e ajuda a frear o envelhecimento.\n      Caso suplementada em conjunto com colágeno, há melhora significativa na saúde da pele após apenas doze semanas."
            recommendationImage = Image("longevity1")
            recommendationTag = "Vitamina C\n 1000mg 60 Comprimidos"
            recommendationPrice = "R$ 23,90"
            recommendationLink = "https://www.amazon.com.br/Vitamina-1000mg-Ascorbico-Capsulas-Nutralin/dp/B0977KDCLZ/ref=sr_1_6?keywords=vitamina+c&qid=1693334765&sprefix=Vitamina%2Caps%2C224&sr=8-6"
            
        case 5:
            explanation = "A maior causa de mortes no Brasil e no mundo, são as Doenças arteriais coronarianas. Essas doenças são enormemente potencializadas por máus hábitos, como sedentarismo, alimentação precária, tabagismo e por outras doenças como hipertensão e quadros como colesterol alto."
            recommendation = "Não subestime os benefícios da prevenção: Faça exercícios físicos e tenha uma dieta saudável. Considere suplementar Coenzima Q10 à sua dieta diária. Um dos principais efeitos da Coenzima Q10 é melhorar a capacidade de dilatação e contração dos vasos sanguíneos, conhecida com função endotelial.\n   Quando essa função é comprometida, representa um aumento no risco de doenças cardiovasculares."
            recommendationImage = Image("heart1")
            recommendationTag = "KIT 3X Coenzima Q10 200mg 60 Cápsulas - Flora Nativa"
            recommendationPrice = "R$ 297,00"
            recommendationLink = "https://www.amazon.com.br/KIT-Coenzima-Q10-200mg-C%C3%A1psulas/dp/B0C1NWJY8T/ref=sr_1_4_sspa?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=R2IZKN6JL5X8&keywords=coezima+q10&qid=1693337249&sprefix=coezima+q10%2Caps%2C243&sr=8-4-spons&ufe=app_do%3Aamzn1.fos.db68964d-7c0e-4bb2-a95c-e5cb9e32eb12&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1"
            
        case 6:
            explanation = "Da mesma forma que parentes próximos longevos apontam para uma vida saudável, parentes próximos com doenças graves sinalizam maior probabilidade de desenvolver doenças graves que afetam a expectativa de vida."
            recommendation = "Pratique o autocuidado diário. Ele é a chave para uma vida longa. Alimentação saudável, ar puro, ingestão adequada de água e uma vida sem vícios são fatores que diminuem a probabilidade do aparecimento de doenças graves e atenuam efeitos de quadros presentes."
            recommendationImage = Image("cancer1")
            recommendationTag = "Kit Protetor Solar Protect\n & Hidrata FPS50 200ml"
            recommendationPrice = "R$ 53,19"
            recommendationLink = "https://www.amazon.com.br/Nivea-Protetor-Solar-Protect-Hidrata/dp/B08QK3SK1H/ref=sr_1_6?keywords=protetor%2Bsolar&qid=1693346719&sprefix=protet%2Caps%2C285&sr=8-6&th=1"
            
        case 7:
            explanation = "Estudos indicam que a expectativa de vida é influênciada  pelo nível financeiro das pessoas. Saneamento básico, acesso a bons hospitais, moradia com segurança, consultas médicas particulares dentre outros fatores contribuem para o aumento na expectativa de vida dos individuos."
            recommendation = "Faça o possível para ter uma vida livre de dívidas, mantenha uma reserva financeira de emergência, se precaver financeiramente pode ser de grande ajuda em um momento de dificuldade e te poupar de maiores complicações no futuro."
            recommendationImage = Image("logo")
            recommendationTag = "Anuncie Conosco!"
            recommendationPrice = ""
            recommendationLink = "https://api.whatsapp.com/send?phone=5561995596812&text=Olá, gostaria de fazer um anúncio no LifePlus."
        case 8:
            explanation = "Assim como a renda, a formação acadêmica está intimamente ligada à expectativa de vida. Quanto maior o acesso a informação mais chances um ídividuo tem de de mudar fatores que diminuem a expectativa de vida."
            recommendation = "Valorize a sabedoria. Busque fontes de informações confiáveis e se atualize sobre vida saudável. Isso pode fazer a diferença entre viver uns bons anos a mais e com qualidade de vida."
            recommendationImage = Image("graduation1")
            recommendationTag = ""
            recommendationPrice = ""
            recommendationLink = "https://www.educacaoadventista.org.br/"
            
        case 9:
            explanation = "Não é o trabalho em si que é benéfico ao idos, mas as coisas relacionadas a ele. Rotina bem definida, senso de realização, convívio social, senso de propósito, preservação de atividades motoras e cognitivas são fatores que contribuem para uma longevidade extra na terceira idade."
            
            recommendation = "Embora seja bom se manter em movimento, a terceira idade é o momento para desacelerar e curtir a vida. Deixe o trabalho pesado para os mais novos e concentre-se em transmitir a experiência aos que estão chegando. Que tal investir o tempo em uma nova habilidade ou conhecimento?"
            recommendationImage = Image("workover651")
            recommendationTag = "Cursos para\n a terceira idade"
            recommendationPrice = ""
            recommendationLink = "https://www5.usp.br/servicos/programa-universidade-aberta-a-terceira-idade/"
            
        case 10:
            explanation = "Pessoas casadas não apenas são mais saudáveis, como têm menos tendência a precisar de atendimento médico e, quando são internadas, permanecem menos tempo no hospital. Os divorciados e separados são os que apresentam saúde mais frágil, seguidos pelos viúvos e depois pelos solteiros."
            
            recommendation =
            "Melhor é serem dois do que um, porque têm melhor paga do seu trabalho. Porque, se um cair, o outro levanta o seu companheiro; mas ai do que estiver só; pois, caindo, não haverá outro que o levante. Também se dois dormirem juntos, eles se aquentarão; mas um só como se aquentará? Eclesiastes 4:9-12"
            recommendationImage = Image("married1")
            recommendationTag = ""
            recommendationPrice = ""
            recommendationLink = "https://tinder.com/pt"
            
        case 11:
            explanation = "Pessoas que relataram estar socialmente isoladas e se sentirem sozinhas têm maior probabilidade de morrer precocemente por todas as causas, incluindo câncer. Além do mais, o isolamento social está associado a um risco aumentado de morte por doenças cardíacas."
            recommendation = "A vida é muito curta para ficar sozinho(a), procure estar ao lado de quem te quer bem e seja feliz ao lado dessa pessoa. A felicidade é contagiosa!"
            recommendationImage = Image("lonely1")
            recommendationTag = ""
            recommendationPrice = ""
            recommendationLink = "https://www.casamentos.com.br"
            
        case 12:
            explanation = "O que sedentarismo e trabalho pesado têm em comum?\n - Lesões musculoesqueléticas, distúrbios de coluna, doenças cardiovasculares, estresse ocupacional, distúrbios psicológicos dentre outros."
            recommendation = "Faça pausas regulares, alongue-se, alimente-se bem e não subestime o poder do descanso. Reserve ao menos 10 minutos a cada hora trabalhada para cuidar de si mesmo. Hidratate-se bem durante o dia e não ultrapasse os seus limites físicos ou cognitivos. \n     O corpo sempre dá sinais, em caso de dores procure um médico. Não troque uma vida inteira por algumas horas a mais de trabalho."
            recommendationImage = Image("work1")
            recommendationTag = "Clinica Tactus"
            recommendationPrice = "Fisioterapia"
            recommendationLink = "https://www.clinicatactus.com.br/"
            
        case 13:
            explanation = "Aqui estão algumas maneiras pelas quais o exercício pode afetar positivamente a expectativa de vida das pessoas: melhora a saúde cardiovascular, fortalece o sistema imunológico, auxília no controle do peso, melhora a saúde mental, fortalece os ossos e músculos e melhora a qualidade do sono!"
            recommendation = "Procure fazer uma atividade que te agrade. Se tiver companhia os resultados serão ainda melhores. Artes marciais, dança de salão, caminhada no parque ou na esteira, academia, futebol, vôlei, basquete, corrida, natação, tênis de mesa. Há milhares de forma de exercitar-se regularmente. Escolha a sua e seja mais feliz."
            recommendationImage = Image("exercise1")
            recommendationTag = ""
            recommendationPrice = ""
            recommendationLink = "https://www.smartfit.com.br/"
        case 14:
            explanation = "De acordo com os especialistas, dormir demais gera a tendência de desenvolver doenças cardiovasculares e hipertensão, por exemplo. Isso porque, durante o sono há redução da atividade cardiovascular, queda da pressão arterial e da frequência cardíaca.\nEssas alterações exigem, portanto, que, à noite, durante o repouso, o sono seja equilibrado e, de preferência, ininterrupto."
            recommendation = "Busque dormir em horários fixos, evite o uso de estimulantes, como o café ou chá preto. Evite as telas meia hora antes de dormir, vá ao banheiro antes de dormir. Se mesmo após o sono, ainda acordar cansado(a), procure um médico especialista da área do sono. Certamente há algo fora do comum."
            recommendationImage = Image("sleepy1")
            recommendationTag = "Melatonina em Goma 210mcg Sabor Frutas"
            recommendationPrice = "R$ 39,90"
            recommendationLink = "https://www.amazon.com.br/Melatonina-210mcg-Frutas-Vermelhas-Sunflower/dp/B0C47HQXDY/ref=sr_1_3_sspa?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1314G33ZTVVUD&keywords=melatonina&qid=1693428906&sprefix=melatonin%2Caps%2C372&sr=8-3-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1"
        case 15:
            explanation = user.lifeExpectancy.questions[15].answerValue == 3 ? "Nossa personalidade pode impactar nossa expectativa de vida de várias maneiras. Pessoas calmas tendem a ser mais disciplinadas e responsáveis, o que pode resultar em melhores hábitos de saúde, como dieta equilibrada, exercícios regulares e maior aderência ao tratamento médico.": user.lifeExpectancy.questions[15].answerValue == -3 ? "Nossa personalidade pode impactar nossa expectativa de vida de várias maneiras. Pessoas intensas, tendem a apresentar atos impulsivos além de baixa tendência à autorregulação emocional, deixamdo-as mais propensas a se envolver em comportamentos não nocivos, como o consumo de drogas lícitas e ilícitas, imprudência no trânsito e nas relações sociais, o que aumenta o risco de doenças e acidentes.":user.lifeExpectancy.questions[15].answerValue == 1 ? "Nossa personalidade pode impactar nossa expectativa de vida de várias maneiras. Pessoas extrovertidas geralmente têm mais oportunidades sociais e conexões sociais mais fortes, o que está associado a um menor risco de doenças cardíacas, solidão e depressão.":"Nossa personalidade pode impactar nossa expectativa de vida de várias maneiras. Estudos mostram que pessoas introvertidas estão mais propensas a adotar comportamentos defensivos, levando-as a evitar comportamentos de risco rotineiros,porém, são mais sucetiveis a depressão e ao isolamento social, fatores que são extremamentes nocívos à saúde."
            recommendation = "A vida é feita de escolhas. A diferença entre uma boa escolha e uma má escolha está ligada ao nosso estado de espírito quando as fazemos. Logo, evite decisões importantes se estiver em alguma dessas situações: Com fome, com raiva, excitado(a) ou com medo."
            recommendationTag = "Best Seller\n O poder do hábito"
            recommendationPrice = "Apenas R$ 59,10"
            recommendationImage = Image("personality1")
            
        case 16:
            explanation = "A prudência no trânsito é uma das características mais importantes tanto para motoristas quanto para pedestres. Em 2022, o número de mortos por acidentes de trânsito somou mais de 45 mil mortos e mais de 300 mil gravemente feridos."
            recommendation = "Redobre a atenção no trânsito, especialmente pedestres e ciclistas que estão mais vulneráveis.\n      Faça revisão regularmente em seu automóvel, pratique a direção defensiva e lembre-se: Se beber não dirija, use e abuse dos transportes alternativos para chegar em casa em segurança."
            recommendationImage = Image("speedy1")
            recommendationTag = "Pneu Aro 14 Pirelli \n175/65R14 82T"
            recommendationPrice = "R$361,62"
            recommendationLink = "https://www.amazon.com.br/Pneu-Aro-Pirelli-65R14-Cinturato/dp/B08PMYQXZP/ref=sr_1_2?__mk_pt_BR=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=2F7Q04XLP3AMS&keywords=pirelli&qid=1693516561&sprefix=pirell%2Caps%2C254&sr=8-2"
        case 17:
            explanation = "O consumo excessivo e crônico de álcool pode levar a problemas de saúde que reduzem a expectativa de vida, incluindo doenças do fígado, doenças cardiovasculares, danos ao sistema digestivo, comprometimento do sistema imunológico e aumento do risco de acidentes e lesões. Embora alguns estudos apontem que bebidas como o vinho tinto possa ter benefícios a saúde o risco do uso crônico do àlcool superam esses benefícios."
            recommendation = "Evite o consumo de bebidas alcoólicas, substitua o consumo do vinho tinto pelo suco de uva natural e desfrute dos mesmos benefícios do vinho tinto sem ter os malefícios."
            recommendationImage = Image("alcoholic1")
            recommendationTag = "Suco de Uva Integral Vidro Superbom 1L"
            recommendationPrice = " R$ 24,89"
            recommendationLink = "https://www.amazon.com.br/Suco-Uva-Integral-Vidro-Superbom/dp/B07Y2GFPJ7/ref=sr_1_1?keywords=suco+de+uva+integral+superbom&qid=1693519275&sprefix=superbom+suco%2Caps%2C254&sr=8-1"
        case 18:
            explanation = "O tabagismo está associado a uma série de doenças graves e fatais como câncer de pulmão, doença pulmonar obstrutiva crônica (DPOC), doenças cardiovasculares, derrame cerebral e doenças respiratórias. Essas condições de saúde podem reduzir drasticamente a expectativa de vida de um fumante."
            recommendation = "Pare de fumar o mais rápido o possível!  De acordo com a Organização Mundial da Saúde (OMS), os fumantes têm uma chance 50% maior de morrer precocemente do que os não fumantes."
            recommendationImage = Image("smoker1")
            recommendationTag = "Adesivos de nicotina para ajudar a parar de fumar"
            recommendationPrice = "R$ 41,51"
            recommendationLink = "https://www.amazon.com.br/Patches-Adesivos-nicotina-Produto-Generic/dp/B0B1QM9CZL/ref=sr_1_1?keywords=abstzero+rem%C3%A9dio+para+deixar+de+fumar&qid=1693521580&sprefix=abstze%2Caps%2C299&sr=8-1"
        case 19:
            explanation = "A obesidade está associada a uma série de problemas de saúde graves, como doenças cardíacas, derrame, diabetes tipo 2, hipertensão arterial, apneia do sono, certos tipos de câncer e osteoartrite e morte prematura."
            
            recommendation = "Priorize a sua saúde e fuja das dietas da moda e das panacéias milagrosas por aí. Em primeiro lugar: procure um profissional competente.\n        A obesidade nem sempre é causada por fatores alimentares, mas também pode ser de natureza metabólica sem contar fatores psicológicos associados. Não lute sozinho(a) exercícios em grupo, programas de apoio e informação de qualidade sobre o assunto sempre ajudam."
            recommendationImage = Image("overwheight1")
            recommendationTag = ""
            recommendationPrice = ""
            recommendationLink = "https://www.vigilantesdopeso.com.br/br/?g_network=g&g_adid=462810132194&g_campaign=Institucional_Web_Traffic_Core_Prospect-Core_Any_Any_Other_National&g_keyword=vigilantes%20do%20peso&g_adtype=search&g_adgroupid=76060973657&g_keywordid=aud-1026005972857:kwd-492045550552&g_acctid=375-548-3213&g_campaignid=1496047892&gclid=Cj0KCQjw9MCnBhCYARIsAB1WQVWN6aTqF9ljC5oohskoPDHfvHgi5hpviNx73lNwS02si_oxc-wif88aAmwOEALw_wcB"
        case 20:
            explanation = "Além da prevenção e detecção precoce de doenças o check-up anual ajuda a monitorar condições de saúde e garantir medidas para manutenção da boa saúde, promove concientização de máus hábitos e estimula uma vida mais saudável."
            recommendation = "Não precisa fazer tudo de uma vez, organize seu tempo para cuidar de si mesmo durante o ano. A prevenção é o remédio mais barato que uma pessoa pode usar."
            recommendationImage = Image("checkup1")
            recommendationTag = "Hospital Sírio-Libanês"
            recommendationPrice = "Agende sua consulta"
            recommendationLink = "https://www.hospitalsiriolibanes.org.br/unidades/brasilia/"
        default:
            explanation = ""
            recommendation = ""
            recommendationImage = Image("logo")
            recommendationTag = ""
            recommendationPrice = ""
            recommendationLink = ""
        }
    }
}
