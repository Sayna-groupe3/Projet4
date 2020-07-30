			 		#BIG DATA#

# On définit une méthode pour poser les questions pour avoir la réponse spécifique qu'on va attribuer dans un menu en bas
def menu
  	puts "Tapes le numéro de la question qui t'intéresse !"
  	puts "1- Combien y a t'il de journalistes dans cette array ?"
  	puts "2- Combien d'handle contiennent un numéro ?"
  	puts "3- Combien d'handle contiennent les 4 lettres du prénom (Aude) à la suite (sans faire attention à la casse) ?"
  	puts "4- Combien commencent par une majuscule ?"
  	puts "5- Combien contiennent une majuscule ?"
  	puts "6- Combien de _ dans tous les pseudos confondus ?"
  	puts "7- Trie la liste de handle par ordre alphabétique"
  	puts "8- Quels sont les 50 handles les plus courts de cette array ?"
  	puts "9- Quelle est la position dans l'array de la personne @epenser ?"
   
print " > "


  choix = gets.chomp.to_i
  	while choix < 1 or choix > 9 # Tant que le choix ne concorde par entre 1 et 9 alors on affiche une erreur
    	puts "C'est incorrect. Chosis un nouveau numéro entre 1 et 9"
    	choix = gets.chomp.to_i
  	end
return choix
end


# Ici on définit la méthode pour faire les choix de la réponse spécifique dans le menu 
def quel_menu(menu)
  	case				# On a utilisé la condition case pour faciliter le choix
  		when menu == 1
    		puts "1- Combien y a t'il de journalistes dans cette array ? "
   		combien_journaliste(journaliste)

  		when menu == 2
    		puts "2- Combien d'handle contiennent un numéro ?"
    		combien_handle_numero(journaliste)
  		when menu == 3
    		puts "3- Combien d'handle contiennent les 4 lettres du prénom (Aude) à la suite (sans faire attention à la casse) ?"
    		combien_handle_4lettres_Aude(journaliste)

  		when menu == 4
   		puts "4- Combien commencent par une majuscule ?"
  		combien_handle_commence_par_une_majuscule(journaliste)

  		when menu == 5
    		puts "5- Combien contiennent une majuscule ?"
    		combien_handle_contient_une_majuscule(journaliste)

 		when menu == 6
    		puts "6- Combien de _ dans tous les pseudos confondus ?"
   		combien_de_underscore(journaliste)

 		when menu == 7
    		puts "7- Trie la liste de handle par ordre alphabétique"
   		trie_par_ordre_alphabetique(journaliste)

		when menu == 8
    		puts "8- Quels sont les 50 handles les plus courts de cette array ?"
   		les_50_handles_les_plus_courts(journaliste)

		when menu == 9
    		puts "9- Quelle est la position dans l'array de la personne @epenser ?"
  		position_array_personne_epenser(journaliste)

  	else
  	end
end


def journaliste 
	journaliste = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]

end

# Question 1 => pour connaitre le nombre de journaliste utiliser la methode .length
def combien_journaliste(journaliste)
	puts "Reponse: "
	puts " Il y en a "
	puts  journaliste.length
	puts " "

end 


# Question 2 => utiliser .match pour specifier un nombre qui est limite entre 0 a 9 dans la concatenation 

def combien_handle_numero(journaliste)
  	count = 0
  	journaliste.each do |numero|
    		if numero.match(/[0-9]/)
      		count +=1
    	end
end
 	puts "Reponse : "
  	puts "Il y en a #{count}"
  	puts " "
  
end


# Question 3 => utiliser .match pour specifier les lettres ici les lettres sont AUDE donc limite par ces lettres dans la concatenation 

def combien_handle_4lettres_Aude(journaliste)
  	count = 0
  	journaliste.each do |aude|
      		if aude.match(/[a][u][d][e]/)
      		count +=1
      	end
end
  	puts "Reponse : "
	puts "Il y en a #{count}"
  	puts " "
end



# Question 4 => on utilise encore .match mais ici pour tous les lettres en majuscule apres l'@ au debut des pseudos la limite ici  dans la concatenation tous les lettres de A a Z 

def combien_handle_commence_par_une_majuscule(journaliste)
  	count = 0
  	journaliste.each do |majuscule|
      		if majuscule.match(/@[A-Z]/)
      		count +=1
        end
end
  	puts "Reponse : "
  	puts "Il y en a #{count}"
  	puts " "
end



# Question 5 => Meme principe que pour la question 4 mais ici tous les pseudos qui contiennent juste une majuscule 

def combien_handle_contient_une_majuscule(journaliste)
  	count = 0
  	journaliste.each do |majuscule|
      		if majuscule.match(/[A-Z]/)
      		count +=1
        end
end
  	puts "Reponse : "
  	puts "Il y en a #{count}"
  	puts " "
end



# Question 6 => toujours la meme principe mais ici la valeur assimilee dans la concatenation est l'underscore 

def combien_de_underscore(journaliste)
  	count = 0
  	journaliste.each do |underscore|
      		if underscore.match(/[_]/)
      		count +=1
      	end
end
  	puts "Reponse : "
  	puts "Il y en a #{count}"
  	puts " "
end


# Question 7 => pour trier en utilise .sort qui arrange le tableau dans l'ordre alphabetique

def trie_par_ordre_alphabetique(journaliste)
 	puts "Trie par ordre alphabétique"
  	puts journaliste.sort
  	puts" "
  
end


# Question 8 => ici meme methode que la quection precedente mais le nombre est limite a 50 

def les_50_handles_les_plus_courts(journaliste)
	puts " les 50 handles les plus courts sont: #{journaliste.sort_by(&:length)[0...50]}"
  	puts " "
end



# Question 9 => uiliser le .index pour reperer une valeur dans le tableau ici c'est un string 


def position_array_personne_epenser(journaliste)
 	puts "Reponse :"
  	puts "@epenser est sur la ligne #{journaliste.index("@epenser")}"
  	puts
end


# Pour activer les questions et reponses utliser perform 
def perform  
  	quel_menu(menu)
  	journaliste
end

perform
