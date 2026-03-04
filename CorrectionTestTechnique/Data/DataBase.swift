//
//  DataBase.swift
//  CorrectionTestTechnique
//
//  Created by Cindy Bajoni on 28/02/2026.
//

import Foundation

var students: [Student] = [
    Student(name: "Harry Potter", house: .gryffindor, year: 6, isPrefect: false, picture: "harry", description: "M. Potter se distingue par un courage constant, une loyauté sans faille envers ses camarades et une propension notable à se trouver au cœur d’événements extraordinaires. Doté d’un instinct vif et d’un sens moral affirmé, il fait preuve d’une grande détermination face à l’adversité. Son parcours scolaire, parfois peu conventionnel, révèle néanmoins un sorcier au potentiel certain, particulièrement apte à la défense contre les forces du mal.", patronus: "Cerf"),
    Student(name: "Hermione Granger", house: .gryffindor, year: 6, isPrefect: true, picture: "hermione", description: "Mlle Granger se distingue par une intelligence remarquable, une rigueur académique exemplaire et une maîtrise précoce des sortilèges théoriques et pratiques. Travailleuse infatigable et dotée d’une mémoire exceptionnelle, elle fait preuve d’un grand sens des responsabilités. Son attachement aux règles est contrebalancé par un courage certain et une loyauté indéfectible envers ses amis, faisant d’elle un pilier aussi fiable qu’ingénieux face aux situations les plus complexes.", patronus: "Loutre"),
    Student(name: "Ron Weasley", house: .gryffindor, year: 6, isPrefect: true, picture: "ron",description: "M. Weasley se distingue par une loyauté sincère, un courage qui s’affirme pleinement dans l’adversité et un sens de l’humour appréciable au sein de la vie scolaire. Issu d’une ancienne famille de sorciers, il possède une bonne connaissance du monde magique et fait preuve d’un esprit stratégique notable, notamment lors des parties d’échecs sorciers. Bien que parfois sujet au doute, il demeure un camarade fiable et dévoué, dont la valeur se révèle dans les moments décisifs.", patronus: "Jack Russell"),
    Student(name: "Ernie Macmillan", house: .hufflepuff, year: 6, isPrefect: true, picture: "ernie", description: "M. Macmillan se distingue par un profond respect des règles, un sens aigu de la justice et une loyauté affirmée envers l’institution de Poudlard. Consciencieux et appliqué dans son travail scolaire, il attache une grande importance à l’équité et à l’honneur. Bien que parfois excessif dans ses certitudes, il fait preuve d’une intégrité sincère et d’un courage moral réel, reflétant avec sérieux les valeurs de sa maison.", patronus: "Sanglier"),
    Student(name: "Luna Lovegood", house: .ravenclaw, year: 5, isPrefect: false, picture: "luna", description: "Mlle Lovegood se distingue par une imagination singulière, une grande ouverture d'esprit et une perception du monde magique peu commune. D'un calme constant et d'une sincérité désarmante, elle aborde les situations avec une lucidité inattendue, souvent teintée de sagacité. Indépendante dans sa pensée et fidèle à ses convictions, elle fait preuve d'un courage tranquille et d'une loyauté profonde, apportant à l'école une perspective précieuse, bien que résolument atypique.", patronus: "Lièvre"),
    Student(name: "Drago Malfoy", house: .slytherin, year: 6, isPrefect: true, picture: "drago", description: "M. Malfoy se distingue par une grande fierté de son héritage familial et une ambition marquée. Doté d’un esprit vif et d’une assurance affichée, il cherche fréquemment à asseoir son influence parmi ses pairs. Son comportement, parfois hautain et provocateur, masque néanmoins une sensibilité et une vulnérabilité notables face aux attentes qui pèsent sur lui. Son parcours à Poudlard témoigne d’un caractère en tension entre loyauté familiale et choix personnels.", patronus: "Loup"),
    Student(name: "Pansy Parkinson", house: .slytherin, year: 6, isPrefect: true, picture: "pansy", description: "Sarcastique et très attachée à sa maison.")
]


var studentSorted = students.sorted {
    $0.name < $1.name
}
