//
//  ViewModel.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import Foundation

@Observable
final class ViewModel {
    var categories: [Category] = [
        Category(image: "beach", name: "Plage"),
        Category(image: "cascade", name: "Cascade"),
        Category(image: "mount", name: "Montagne"),
    ]

    var categorySelected = "Plage"

    var beachRecommendations: [Recommendation] = [
        Recommendation(
            name: "Raja Ampat Islands",
            localization: "Indonésie",
            description:
                "Lagons turquoise et récifs coralliens spectaculaires, paradis isolé pour la plongée et le snorkeling, où une biodiversité marine exceptionnelle attire les voyageurs en quête d'évasion. Cet archipel préservé compte des centaines d'îlots verdoyants et des eaux cristallines.",
            rating: 4.9,
            image: "beach",
            isFavorite: false
        ),
        Recommendation(
            name: "Anse Source d'Argent",
            localization: "La Digue, Seychelles",
            description:
                "Sable blanc bordé de blocs de granit rose et d'eaux peu profondes cristallines, offrant un décor paradisiaque parfait pour la baignade, la détente et les photographies. Souvent classée parmi les plus belles plages du monde, elle séduit par ses palmiers, ses lagons calmes et ses couchers de soleil.",
            rating: 4.8,
            image: "beach1",
            isFavorite: false
        ),
        Recommendation(
            name: "Whitehaven Beach",
            localization: "Whitsundays, Australie",
            description:
                "Sept kilomètres de sable de silice immaculé sur une eau bleue éclatante, accessible par bateau ou hydravion, au cœur d'un parc national protégé et préservé. Le sable d'une blancheur pure reste frais sous les pieds, tandis que les tourbillons de Hill Inlet offrent un panorama absolument saisissant. ",
            rating: 4.8,
            image: "beach2",
            isFavorite: false
        ),
        Recommendation(
            name: "Navagio Beach",
            localization: "Zante, Grèce",
            description:
                "Crique secrète accessible uniquement par bateau, avec une épave célèbre sur le sable, entourée de falaises calcaires vertigineuses plongeant dans une eau d'un bleu intense.",
            rating: 4.7,
            image: "beach3",
            isFavorite: false
        ),
        Recommendation(
            name: "Tulum Beach",
            localization: "Quintana Roo, Mexique",
            description:
                "Plage de sable doré dominée par d'anciennes ruines mayas face à la mer des Caraïbes, mêlant histoire fascinante, eaux chaudes et ambiance bohème décontractée toute l'année.",
            rating: 4.6,
            image: "beach4",
            isFavorite: false
        ),
        Recommendation(
            name: "Praia da Marinha",
            localization: "Algarve, Portugal",
            description:
                "Falaises dorées et formations rocheuses sculptées surplombant une eau limpide et calme, considérée comme l'une des plus belles plages d'Europe pour la randonnée côtière. Les sentiers panoramiques révèlent des arches naturelles spectaculaires, des grottes marines cachées et des criques secrètes à explorer en kayak.",
            rating: 4.7,
            image: "beach5",
            isFavorite: false
        ),
        Recommendation(
            name: "Reynisfjara Beach",
            localization: "Vík, Islande",
            description:
                "Plage de sable noir volcanique avec colonnes de basalte et vagues puissantes de l'Atlantique, offrant un paysage dramatique et sauvage unique au monde à découvrir absolument..",
            rating: 4.5,
            image: "beach6",
            isFavorite: false

        ),
        Recommendation(
            name: "Pink Beach",
            localization: "Komodo, Indonésie",
            description:
                "Rare plage au sable rosé créée par des coraux rouges, idéale pour le snorkeling, située dans un parc national abritant les célèbres dragons de Komodo sauvages. Les fonds marins regorgent de vie colorée, tandis que la teinte rose délicate du rivage offre un spectacle naturel rare.",
            rating: 4.6,
            image: "beach7",
            isFavorite: false
        ),

    ]

    var mountainRecommendations: [Recommendation] = [
        Recommendation(
            name: "Mont Cervin",
            localization: "Zermatt, Suisse",
            description:
                "Pyramide rocheuse parfaite culminant à plus de quatre mille mètres, l'une des silhouettes les plus emblématiques des Alpes. Ses quatre faces vertigineuses dominent le village de Zermatt sans voitures, attirant alpinistes chevronnés et randonneurs venus admirer son reflet dans les lacs d'altitude au lever du soleil.",
            rating: 4.9,
            image: "mountain1",
            isFavorite: false
        ),
        Recommendation(
            name: "Cerro Torre",
            localization: "Patagonie, Argentine",
            description:
                "Aiguille de granit acérée souvent coiffée d'un champignon de glace, balayée par des vents féroces au cœur de la Patagonie sauvage. Réputée parmi les sommets les plus difficiles du monde, elle se dresse au-dessus de glaciers immenses et de forêts australes dans un décor d'une beauté brute et isolée.",
            rating: 4.8,
            image: "mountain2",
            isFavorite: false
        ),
        Recommendation(
            name: "Mont Fuji",
            localization: "Honshū, Japon",
            description:
                "Volcan sacré au cône presque parfait, point culminant du Japon et lieu de pèlerinage millénaire. Coiffé de neige une grande partie de l'année, il se reflète dans les lacs Fuji Five et inspire poètes et artistes depuis des siècles, offrant des levers de soleil mémorables depuis son sommet.",
            rating: 4.8,
            image: "mountain3",
            isFavorite: false
        ),
        Recommendation(
            name: "Cima Grande",
            localization: "Dolomites, Italie",
            description:
                "Tour de calcaire pâle dressée parmi les Tre Cime di Lavaredo, joyau des Dolomites classées au patrimoine mondial. Ses parois verticales font rêver les grimpeurs, tandis que le sentier de randonnée qui en fait le tour révèle prairies alpines, refuges accueillants et panoramas saisissants sur les Alpes orientales.",
            rating: 4.9,
            image: "mountain4",
            isFavorite: false
        ),
        Recommendation(
            name: "Mont Roraima",
            localization: "Gran Sabana, Venezuela",
            description:
                "Spectaculaire plateau aux parois abruptes émergeant de la jungle comme une forteresse perdue dans les nuages. Sommet plat sculpté par des millions d'années d'érosion, il abrite une faune et une flore endémiques uniques, et aurait inspiré le célèbre Monde perdu d'Arthur Conan Doyle.",
            rating: 4.7,
            image: "mountain5",
            isFavorite: false
        ),
        Recommendation(
            name: "Ama Dablam",
            localization: "Khumbu, Népal",
            description:
                "Sommet himalayen à la silhouette élégante surnommé le collier de la mère, dominant la vallée menant à l'Everest. Ses arêtes effilées et son glacier suspendu en font l'une des montagnes les plus photographiées du Népal, récompensant les trekkeurs d'un spectacle grandiose sur le toit du monde.",
            rating: 4.8,
            image: "mountain6",
            isFavorite: false
        ),
        Recommendation(
            name: "Grand Teton",
            localization: "Wyoming, États-Unis",
            description:
                "Pic granitique acéré s'élançant abruptement au-dessus des plaines, sans contreforts pour adoucir sa stature imposante. Reflété dans les lacs glaciaires et bordé de forêts peuplées d'élans et de bisons, il offre un décor sauvage emblématique de l'Ouest américain et de ses grands espaces préservés.",
            rating: 4.7,
            image: "mountain7",
            isFavorite: false
        ),
        Recommendation(
            name: "Kirkjufell",
            localization: "Snæfellsnes, Islande",
            description:
                "Montagne conique isolée à la forme singulière, dressée au bord de l'océan et flanquée d'une cascade pittoresque. Devenue l'un des sommets les plus photographiés d'Islande, elle se pare d'aurores boréales en hiver et de lumière dorée en été, composant un tableau d'une beauté envoûtante.",
            rating: 4.8,
            image: "mountain8",
            isFavorite: false
        ),
    ]

    var waterfallRecommendations: [Recommendation] = [
        Recommendation(
            name: "Iguazú Falls",
            localization: "Misiones, Argentine",
            description:
                "Ensemble vertigineux de près de 275 chutes s'étendant sur près de trois kilomètres au cœur d'une forêt subtropicale luxuriante et préservée. La spectaculaire Garganta del Diablo déverse des trombes d'eau assourdissantes, tandis que papillons multicolores, coatis et toucans peuplent ce sanctuaire naturel classé au patrimoine mondial.",
            rating: 4.9,
            image: "cascade1",
            isFavorite: false
        ),
        Recommendation(
            name: "Gullfoss",
            localization: "Haukadalur, Islande",
            description:
                "Puissante cascade à deux paliers où la rivière glaciaire Hvítá plonge dans un canyon profond, projetant un voile d'embruns scintillant. Par temps ensoleillé, des arcs-en-ciel se forment au-dessus des flots tumultueux, offrant un spectacle brut et grandiose emblématique du Cercle d'Or islandais.",
            rating: 4.8,
            image: "cascade2",
            isFavorite: false
        ),
        Recommendation(
            name: "Kuang Si Falls",
            localization: "Luang Prabang, Laos",
            description:
                "Cascade turquoise à plusieurs niveaux dévalant des bassins de travertin aux eaux laiteuses, nichée dans une jungle tropicale dense et apaisante. Les piscines naturelles invitent à la baignade rafraîchissante, tandis qu'un sanctuaire voisin recueille des ours noirs d'Asie sauvés du braconnage.",
            rating: 4.8,
            image: "cascade3",
            isFavorite: false
        ),
        Recommendation(
            name: "Plitvice Falls",
            localization: "Lika, Croatie",
            description:
                "Réseau enchanteur de seize lacs étagés reliés par d'innombrables cascades, aux eaux d'un bleu-vert irréel changeant selon la lumière. Des passerelles de bois serpentent à travers une forêt préservée, révélant chutes rugissantes, grottes mystérieuses et une faune riche au cœur d'un parc national protégé.",
            rating: 4.9,
            image: "cascade4",
            isFavorite: false
        ),
        Recommendation(
            name: "Seljalandsfoss",
            localization: "Suðurland, Islande",
            description:
                "Cascade élancée de soixante mètres derrière laquelle un sentier permet de marcher, offrant une perspective unique sur le rideau d'eau scintillant. Au coucher du soleil, la lumière dorée traverse les embruns et illumine la prairie environnante, créant une atmosphère féerique et inoubliable.",
            rating: 4.7,
            image: "cascade5",
            isFavorite: false
        ),
        Recommendation(
            name: "Sutherland Falls",
            localization: "Fiordland, Nouvelle-Zélande",
            description:
                "L'une des plus hautes chutes du pays, dévalant plus de cinq cents mètres en trois bonds spectaculaires au cœur d'un parc national sauvage. Accessible après une randonnée mythique à travers vallées glaciaires et forêts humides, elle récompense les marcheurs d'un panorama d'une beauté saisissante et préservée.",
            rating: 4.7,
            image: "cascade6",
            isFavorite: false
        ),
        Recommendation(
            name: "Detian Falls",
            localization: "Guangxi, Chine",
            description:
                "Majestueuse cascade transfrontalière s'étalant en larges paliers entre collines karstiques verdoyantes, à la frontière du Vietnam. Au milieu des rizières et des forêts de bambous, ses voiles d'eau alimentés par la rivière QuâySơn composent un tableau paisible et spectaculaire typique de l'Asie du Sud-Est.",
            rating: 4.6,
            image: "cascade7",
            isFavorite: false
        ),
        Recommendation(
            name: "Skógafoss",
            localization: "Suðurland, Islande",
            description:
                "Imposant rideau d'eau de soixante mètres de large tombant d'une ancienne falaise côtière, longtemps grignotée par la mer. Les embruns permanents font naître de fréquents arcs-en-ciel, et un escalier mène à un belvédère offrant une vue plongeante sur la rivière serpentant vers l'océan Atlantique.",
            rating: 4.8,
            image: "cascade8",
            isFavorite: false
        ),
    ]

    var favorites = [Recommendation]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(favorites) {
                UserDefaults.standard.set(encoded, forKey: "Favorites")
            }
        }
    }

    init() {
        if let savedFavorites = UserDefaults.standard.data(forKey: "Favorites")
        {
            if let decodedItems = try? JSONDecoder().decode(
                [Recommendation].self,
                from: savedFavorites
            ) {
                favorites = decodedItems
                return
            }
        }
        favorites = []
    }
}
