//
//  data.swift
//  tns
//
//  Created by antoine labbe on 12/05/16.
//  Copyright © 2016 Blank. All rights reserved.
//

import UIKit

class Data {
    static let pages:[AppPage] = [
        AppPage(
            title : "Maitriser le coût de votre contrat sans sacrifier la qualité",
            description : "Vos garanties sont optimisées et adaptées à la taille de votre entreprise, votre secteur d’activité, le profil de vos salariés… Pour vos salariés, des programmes de prévention personnalisés et des outils pour faire des choix éclairés en matière de santé.",
            image : UIImage(named: "picto-maitrise-cout"),
            colors : ["0065b2".toUIColor()!, "064276".toUIColor()!],
            items : [
                PageItem(
                    type : PageItem.ItemType.PDF,
                    url : NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("Extrait_Barometre_Sante-Bien-etre", ofType: "pdf")!),
                    image : UIImage(named: "barometre-sante"),
                    subtitle : "Extraits du baromètre santé et bien-être",
                    description : "Le baromètre analyse la santé et le bien-être de vos salariés à travers un questionnaire. Il vous permet de comparer vos résultats à ceux d’entreprises similaires et construire vos propres plans d’actions."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "https://www.programme-vigisante.fr")!,
                    image : UIImage(named: "vigisante"),
                    subtitle : "Programme Vigisanté",
                    description : "Vigisanté est une offre de prévention globale pour agir sur les principaux facteurs de risque santé : nutrition, activité physique, santé émotionnelle, addictions, sommeil, suivi médical, examens recommandés et vaccination."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "http://comparhospit.malakoffmederic.com/chercher-comparer-hopital")!,
                    image : UIImage(named: "comparhospit"),
                    subtitle : "Compar’Hospit",
                    description : "Ce service permet à vos salariés de comparer et localiser les établissements de soins près de chez eux. Il permet d'obtenir des informations sur les tarifs pratiqués afin de bien choisir une hospitalisation programmée."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "https://extranet.malakoffmederic.com/espaceClient/LogonAccess.do")!,
                    image : UIImage(named: "kalivia"),
                    subtitle : "Réseau de soin Kalivia",
                    description : "Pour réduire le reste à charge des salariés assurés sans aucune concession à la qualité des soins, Malakoff Médéric constitue des réseaux de professionnels de santé partenaires (optique, audio, dentaire). Ces réseaux permettent de bénéficier de nombreux avantages tarifaires, de prestations de qualité et d'un outil  de géolocalisation."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "https://extranet.malakoffmederic.com/espaceClient/LogonAccess.do")!,
                    image : UIImage(named: "tbsante"),
                    subtitle : "Tableau de bord santé individuel",
                    description : "Ce service digital innovant de gestion personnalisée permet au salarié de disposer d'un service complet d'analyse de ses dépenses de santé, assorti de conseils pour réduire ses frais et s'orienter vers des soins de qualité au meilleur coût."
                )
            ]
        ),
        AppPage(
            title : "Réduire l'absentéisme dans votre entreprise",
            description : "Un programme complet est à votre disposition pour mesurer l’absentéisme maladie au sein de votre entreprise, le comparer à votre secteur d’activité, en connaître le coût, en déterminer les causes, les actions à mettre en place et à en évaluer les résultats. Pour vos salariés, des solutions d’accompagnement et de prévention sont proposées.",
            image : UIImage(named: "picto-absenteisme"),
            colors : ["faa72d".toUIColor()!, "c94e1b".toUIColor()!],
            items : [
                PageItem(
                    type : PageItem.ItemType.Video,
                    url : NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("Prevoyance", ofType: "mp4")!),
                    image : UIImage(named: "prevoyance"),
                    subtitle : "Ma prévoyance",
                    description : "Ma Prévoyance Évolutive est une offre prévoyance qui s’adresse aux nouveaux retraités et propose une garantie à la fois performante et évolutive, en cas de décès (capital décès) et de perte d’autonomie (garantie dépendance)."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "https://simulateur-absenteisme.malakoffmederic.com/")!,
                    image : UIImage(named: "simulateur"),
                    subtitle : "Simulateur absentéisme",
                    description : "Le simulateur permet de faire le point sur l'absentéisme théorique dans votre entreprise, de vous aider à construire le plan d'actions à mettre en place pour le réduire et d'en voir les impacts sur votre absentéisme."
                )
            ]
        ),
        AppPage(
            title : "Trouver des solutions pour les salariés en difficulté",
            description : "Des solutions d’écoute, de conseil, d’orientation et de financement en cas de handicap ou de problèmes familiaux, financiers et sociaux sont proposées pour vos salariés via notre action sociale.",
            image : UIImage(named: "picto-salaries-difficultes"),
            colors : ["ff186e".toUIColor()!, "a61a4f".toUIColor()!],
            items : [
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "https://lesitedesaidants.fr/maison-virtuelle.htm")!,
                    image : UIImage(named: "mamaison"),
                    subtitle : "Ma Maison virtuelle",
                    description : "Avec le service Ma maison virtuelle, identifiez les travaux d’amélioration et d'adaptation à réaliser dans le logement de votre proche en perte d'autonomie."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "http://www.fondationhandicap-malakoffmederic.org/lobservatoire-de-lemploi")!,
                    image : UIImage(named: "observatoire"),
                    subtitle : "Observatoire de la Fondation MM Handicap",
                    description : "À partir du recensement de connaissances et de la production d’outils adaptés aux besoins des entreprises, l’observatoire a pour objectif de faire progresser le taux d’emploi des personnes en situation de handicap."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "https://lesitedesaidants.fr/Entreprise.htm;jsessionid=D3614F9949B84951589C2DBABD8EF585.mm_aaa")!,
                    image : UIImage(named: "aidants"),
                    subtitle : "Présentation du volet RH du ste des aidants",
                    description : "Ce site internet propose aux entreprises des fiches d'information et des paroles d'experts pour les aider dans l'accompagnement de leurs salariés aidants."
                )
            ]
        ),
        AppPage(
            title : "Faire des obligations réglementaires un levier de performance",
            description : "Des aides et des solutions pratiques et pédagogiques vous sont proposées afin d’identifier et satisfaire à vos obligations en matière de santé sécurité au travail. Pour vos salariés, c’est la garantie que l’entreprise anticipe les accidents du travail et la survenance de maladies professionnelles.",
            image : UIImage(named: "picto-obligations-reglementaires"),
            colors : ["00a7ab".toUIColor()!, "007f82".toUIColor()!],
            items : [
                PageItem(
                    type : PageItem.ItemType.PDF,
                    url : NSURL.fileURLWithPath(NSBundle.mainBundle().pathForResource("9-Fiches-prevention", ofType:"pdf")!),
                    image : UIImage(named: "9-fiches-preventions"),
                    subtitle : "9 fiches actions de prévention",
                    description : "Des fiches pratiques pour vous accompagner dans la mise en place d'actions de prévention santé en entreprise."
                ),PageItem(
                    type : PageItem.ItemType.PDF,
                    url : NSURL(string : "http://download.today-tomorrow.com/FlipBook/Cat-MM1-PA-2015/index.html#")!,
                    image : UIImage(named: "formation-demos"),
                    subtitle : "Flipbook Formation Demos",
                    description : "Elaboré en partenariat avec Demos, ce catalogue propose une quarantaine de formations 100% dédiées à la santé et la qualité de vie au travail pour vos salariés."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "http://formation-sante-securite.demo.preventionhse.com/")!,
                    image : UIImage(named: "formation-en-ligne-risque-pro"),
                    subtitle : "Formations en ligne risques pros",
                    description : "Cette plateforme en ligne permet de former les salariés d'une entreprise aux questions de sécurité et de santé liées à l'exercice de leur activité professionnelle, tout en optimisant le budget de formation de l'entreprise."
                ),
                PageItem(
                    type : PageItem.ItemType.Web,
                    url : NSURL(string : "https://tdb-observatoire.malakoffmederic.com/tdb-web/index.do#/accueil")!,
                    image : UIImage(named: "tableau-bord-interactif"),
                    subtitle : "Tableau de bord interactif - Observatoire des branches",
                    description : "Dans le cadre de la participation à l'animation du dialogue social, l'observatoire permet d'analyser l'évolution de la démographie et de la sinistralité propre à chaque Branche. Cette analyse permet de mieux piloter le régime de protection sociale et également de mettre en place des dispositifs de prévention adaptés et efficients."
                )
            ]
        )
        
    ]
}
