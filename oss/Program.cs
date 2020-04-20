using System;

    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Bienvenue sur le GeneraScope ... OSS 117 *visage méchant de Nazi d'Allemange*");

            Console.WriteLine("\n");

            System.Threading.Thread.Sleep(5000);


            Console.WriteLine("Tout d'abord OSS, quel film désirez-vous ? ahahah ");
         

            System.Threading.Thread.Sleep(2000);

            string partie = "Y";

            while(partie == "Y") {

                Console.WriteLine("(Entrez 1 pour Le Caire nid d'espion et 2 pour Rio ne répond plus.)");

                System.Threading.Thread.Sleep(4000);

                int film = Convert.ToInt32(Console.ReadLine());

                System.Threading.Thread.Sleep(3000);

                Console.WriteLine("Ahahah alors comme ça vous avez choisi le film " + film + ".. évidemment, Habile ah ah ah ah *rire allemand ET Nazi*  ");

                Console.WriteLine("\n");

                Console.WriteLine("Il faut que ça chauffe.. mais bon tu connais bien toi.. hein...  la Technologie Americaine !");

                System.Threading.Thread.Sleep(4000);

                if(film == 1) {

                    Console.WriteLine("Voici votre réplique, toute chaude :");

                    Console.WriteLine("\n");

                    Console.WriteLine(" -> " + Film1());

                    Console.WriteLine("\n");
                    
                    Console.WriteLine("Vous reprendrez bien une réplique accompagné d'une bonne blanquette, Her Brammar ?");

                    Console.WriteLine("(Appuyer sur Y pour continuer ou N pour arrêter)");

                    partie = Console.ReadLine();

                } else if (film == 2) {

                    Console.WriteLine("Voici votre réplique, toute chaude :");

                    Console.WriteLine("\n");

                    Console.WriteLine(" -> " + Film2());

                    Console.WriteLine("\n");

                    Console.WriteLine("Vous reprendrez bien une réplique accompagné d'une bonne blanquette, Her Brammar ?");

                    Console.WriteLine("(Appuyer sur Y pour continuer ou N pour arrêter)");

                    partie = Console.ReadLine();


                } else {
                    
                    Console.WriteLine("J'ai comme l'impression, Her Brammar, que vous n'avez pas correment choisi... Recommencer je vous prie");
                    film = Convert.ToInt32(Console.ReadLine());
                }

            }
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.BackgroundColor = ConsoleColor.Red;

            Console.WriteLine("Au revoir Her Brammar, on dirait bien que l'on se reverra ... *suspense* ");

            Console.WriteLine("\n");

            Console.WriteLine("Appuyez n'importe ou pour fermer et devenir communiste :(");

            Console.ReadKey();

           
        }

        static string Film1() {
            var rand = new Random(); // initialiser le random 
            // Faire une liste des citations
            string[] citation1 = new string[]{"C’est notre RAÏS à nous, René COTI ! Un grand homme, il marquera l’histoire, il aime les cochinchinois, les malgaches, les sénégalais, les marocains… c’est donc ton ami.", "C’est marrant, c’est toujours les nazis qui ont le mauvais rôle. Nous sommes en 1955, herr Bramard, on peut avoir une deuxième chance, merci.", "J’aime me beurrer la biscotte !" , "Tu n’es pas seulement un lâche, tu es un traitre, comme ta petite taille le laissait deviner.", "J’aime quand on m’enduit d’huile…", "En tout cas, on peut dire que le soviet éponge", "À l’occasion, je vous mettrai un petit coup de polish…" , "23 à 0 ! C’est la piquette Jack ! Tu sais pas jouer Jack ! T’es mauvais !", "Dépêchons-nous je n’ai que quelques heures…" , "J’aime me battre.", "Comment est votre blanquette ?", "Ce que j’ai vu ce soir là justifie toutes les tortures. Même si la pire des tortures fut de ne pas en voir plus…","Tu es toléré ici, toléré.", "Je vais vous tirer comme un poulet vous allez vous demander, vous allez prendre un plomb dans le cul vous allez vous demander d’où il vient !", "Mon p’tit chameau !", "S’agirait de grandir…", "Et elle gueule mon vieux, on dirait une poissonnière de Ménilmontant !"};
            // Faire un nombre aléatoire pour le résultat (on en a 17 donc 16)
            int aleatoire1 = rand.Next(17); // génère un entier entre 0 et 16
            // Return du résultat 
            string reponse1 = citation1[1];
            return reponse1; 
        }

         static string Film2() {
            var rand = new Random(); // initialiser le random 
            // Faire une liste des citations
            string[] citation2 = new string[]{"Avec moi, les histoires d’amour ne s’écrivent pas dans le temps, ce sont des histoires courtes, compactes, passionnelles. Je ne peux pas vivre autrement Dolorès. D’aucuns ont des aventures… Je suis une aventure.", "Je ne vois pas trop l’intérêt de ressembler à une femme.", "Etrange... Je ne vois pas l’intérêt de ressembler à un homme.", "Ça fait un peu Jacadi a dit : « Pas de charcuterie ! »", "Pourchasser un nazi avec des juifs ? Quelle drôle d'idée !", "Pour rencontrer M. Li, il vaut mieux avoir une bonne couverture, sinon, je serai dans de beaux draps.", "Ah ! J'ai fait de l'humour juif, je crois que c'est quand ce n'est pas rigolo et que ça ne parle pas de saucisses.", "Ah ah bravo Bill, en plein dans l'dos !", "Chou blanc donc…", "Voilà Dolorès, cadeau ... de Noël ! Non je dis Noël, c'est par rapport à mon prénom. Sinon il y ... il y a aussi les boules... Oh si, ça c'est rigolo ! Il faut absolument que j'appelle Armand !"};
            // Faire un nombre aléatoire pour le résultat, on en a 10 
            int aleatoire2 = rand.Next(9);
            // Return du résultat 
            string reponse2 = citation2[1];
            return reponse2;
        }
    }


