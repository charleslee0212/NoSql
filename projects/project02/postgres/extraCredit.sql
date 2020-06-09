--How many doctors are treating doctors?
SELECT count(*) FROM appointments WHERE pat_doc_id IS NOT NULL;
--output:
/*
count
-------
  116
*/

--What's the count of how many patients have each kind of illness?
SmallTown_Hospital=# SELECT name, count(*) FROM diagnoses, illnesses WHERE illness_id =id GROUP BY name;
--output
/*
name                                                  | count
--------------------------------------------------------------------------------------------------------+-------
Poitea paucifolia (DC.) Lavin                                                                          |     9
Rhynchospora latifolia (Baldw. ex Elliott) W.W. Thomas                                                 |    22
Swine influenza                                                                                        |    16
Rheumatism                                                                                             |    16
Dioscorea sansibarensis Pax                                                                            |    12
Condalia ericoides (A. Gray) M.C. Johnst.                                                              |    20
Meningitis                                                                                             |    17
Carex lupuliformis Sartwell ex Dewey                                                                   |    21
Oenothera fruticosa L. ssp. fruticosa                                                                  |    11
Salicornia depressa Standl.                                                                            |    19
Potentilla subjuga Rydb.                                                                               |    16
Malva moschata L.                                                                                      |    12
Begonia coccinea Hook.                                                                                 |    19
Syrrhopodon texanus Sull.                                                                              |    12
Diodia teres Walter var. oblongifolia Fernald                                                          |    15
Chaenactis santolinoides Greene                                                                        |    18
Phlox pilosa L. ssp. riparia Wherry                                                                    |    12
Ebola                                                                                                  |     9
Sidalcea oregana (Nutt. ex Torr. & A. Gray) A. Gray ssp. oregana var. maxima (M. Peck) C.L. Hitchc.    |    22
Chlamydia trachomatis                                                                                  |    15
Carex scirpoidea Michx. ssp. scirpoidea                                                                |    14
Irritable bowel syndrome                                                                               |    15
Caloplaca castellana (Rasanen) Poelt                                                                   |    13
Carex praeceptorum Mack.                                                                               |    16
Firmiana simplex (L.) W. Wight                                                                         |    13
Chamaesyce dioica (Kunth) Millsp.                                                                      |    13
Frangula rubra (Greene) V. Grub. ssp. rubra                                                            |    19
Hepatitis D                                                                                            |    10
Bonamia repens (I.M. Johnst.) Austin & Staples                                                         |    14
Polyblastia hyperborea Th. Fr.                                                                         |    17
Carex ×crinitoides Lepage                                                                             |    20
Torilis japonica (Houtt.) DC.                                                                          |    15
Hepatitis A                                                                                            |    15
Puccinellia parishii Hitchc.                                                                           |    17
Bauhinia galpinii N.E. Br.                                                                             |    20
Doryopteris pedata (L.) Fée                                                                           |    15
Tofieldia Huds.                                                                                        |    11
Waltheria indica L.                                                                                    |    18
Eriogonum lancifolium Reveal & Brotherson                                                              |    13
Appendicitis                                                                                           |    16
Rabies                                                                                                 |    22
Bubonic plague                                                                                         |    13
Monardella nana A. Gray ssp. arida (H.M. Hall) Abrams                                                  |    16
Ribes leptanthum A. Gray                                                                               |     9
Thelypteris kunthii (Desv.) Morton                                                                     |    17
Pterygiopsis Vain.                                                                                     |    12
Synovitis                                                                                              |    19
Trichomanes davallioides Gaudich.                                                                      |    18
Platystemon Benth.                                                                                     |    16
Stevens–Johnson syndrome                                                                             |    18
Shin splints                                                                                           |     5
Stylocline psilocarphoides M. Peck                                                                     |     9
Hyperopia                                                                                              |    13
Talinum portulacifolium (Forssk.) Asch. ex Schweinf.                                                   |    11
Briza humilis M. Bieb.                                                                                 |    16
Ononis alopecuroides L.                                                                                |    13
Potentilla norvegica L. ssp. monspeliensis (L.) Asch. & Graebn.                                        |    12
Pulmonary embolism                                                                                     |    19
Mirabilis pudica Barneby                                                                               |     8
Draba mogollonica Greene                                                                               |    12
Eurytaenia Torr. & A. Gray                                                                             |    16
Pertussis                                                                                              |    14
Brachyelytrum aristosum (Michx.) Trel.                                                                 |    16
Tennis elbow                                                                                           |    17
Hypotrachyna showmanii Hale                                                                            |    11
Melicope ovalis (H. St. John) T.G. Hartley & B.C. Stone                                                |    19
Vernonia blodgettii Small                                                                              |    15
Cyrtandra ×cladantha Skottsb. (pro sp.)                                                               |    11
Sairocarpus kingii (S. Watson) D.A. Sutton                                                             |    11
Lung cancer                                                                                            |    15
Iron-deficiency anemia                                                                                 |    13
Gymnocarpium jessoense (Koidzumi) Koidzumi ssp. parvulum Sarvela                                       |    18
Leavenworthia uniflora (Michx.) Britton                                                                |    18
Cladonia beaumontii (Tuck.) Vain.                                                                      |    20
Rift Valley fever                                                                                      |    16
Brodiaea elegans Hoover                                                                                |    13
Astragalus newberryi A. Gray var. blyae (Rose ex Rydb.) Barneby                                        |    13
Lecidea subplebeja Vain.                                                                               |    11
Iris orientalis Mill.                                                                                  |    12
Trisetum sibiricum Rupr.                                                                               |    16
Erigeron piscaticus G.L. Nesom                                                                         |    11
Tay-Sachs disease                                                                                      |    13
Lotus crassifolius (Benth.) Greene var. otayensis Moran ex Isely                                       |    12
Keloids                                                                                                |    21
Micromitrium megalosporum Austin                                                                       |    14
Streptococcal infection                                                                                |    15
Polystichum acrostichoides (Michx.) Schott var. acrostichoides                                         |    13
Cyclospermum Lag.                                                                                      |    10
Ionactis Greene                                                                                        |    20
Vitex agnus-castus L. var. caerulea Rehder                                                             |    13
Lonicera caerulea L.                                                                                   |    14
Gonorrhea                                                                                              |    17
Cyanea spathulata (Hillebr.) A. Heller                                                                 |    14
Phacelia imbricata Greene                                                                              |    16
Carex cyrtostachya Janeway & Zika                                                                      |    16
Marrubium L.                                                                                           |    14
Pedicularis labradorica Wirsing                                                                        |    11
Aralia californica S. Watson                                                                           |    16
Hepatitis E                                                                                            |    18
Schiedea hawaiiensis Hillebr.                                                                          |     9
Non-gonococcal urethritis                                                                              |    17
Tortula bolanderi (Lesq.) Howe                                                                         |    16
Salix silicicola Raup                                                                                  |    13
Picradeniopsis Rydb. ex Britton                                                                        |    15
Hieracium ×brachiatum Bethel. ex DC.                                                                  |    17
Chickenpox                                                                                             |    21
Carex ×langeana Fernald (pro sp.)                                                                     |    12
Achnatherum parishii (Vasey) Barkworth var. parishii                                                   |    13
Chronic fatigue syndrome                                                                               |    13
Botrychium mormo W.H. Wagner                                                                           |    11
Solidago sciaphila Steele                                                                              |    25
Aquilegia chrysantha A. Gray var. chaplinei (Standl. ex Payson) Lott                                   |    11
Cladonia grayi G. Merr. ex Sandst.                                                                     |    16
Setaria setosa (Sw.) P. Beauv. var. setosa                                                             |     9
Prunus virginiana L.                                                                                   |    15
Rhytidiadelphus squarrosus (Hedw.) Warnst.                                                             |    17
Hastingsia bracteosa S. Watson var. bracteosa                                                          |    14
Cirsium scariosum Nutt.                                                                                |     9
Honckenya peploides (L.) Ehrh.                                                                         |    21
Mercurialis L.                                                                                         |    11
Pubic lice                                                                                             |    16
Iris delavayi Micheli                                                                                  |    23
Astragalus wingatanus S. Watson                                                                        |    13
Cryptantha decipiens (M.E. Jones) A. Heller                                                            |    19
Primula cuneifolia Ledeb. ssp. saxifragifolia (Lehm.) W.W. Sm. & G. Forrest                            |    18
Silene hookeri Nutt.                                                                                   |    17
Eriogonum atrorubens Engelm.                                                                           |    14
Melaleuca ericifolia Sm.                                                                               |    15
Bambusa longifolia (Fourn.) McClure                                                                    |    16
Crataegus vailiae Britton                                                                              |    13
Trachyxiphium heteroicum (Cardot) W.R. Buck                                                            |    17
Acarospora canadensis H. Magn.                                                                         |     8
Minuartia howellii (S. Watson) Mattf.                                                                  |    11
Parthenice A. Gray                                                                                     |    18
Salmonellosis                                                                                          |    15
Lobaria pseudopulmonaria Gyel.                                                                         |    13
Escobaria sandbergii Castetter, Pierce & Schwerin                                                      |    13
Solanum lanceifolium Jacq.                                                                             |    15
Argythamnia adenophora A. Gray                                                                         |    21
Arctostaphylos purissima P.V. Wells                                                                    |    16
Claytonia arenicola L.F. Hend.                                                                         |    13
Prunus rivularis Scheele                                                                               |    10
Acacia chinchillensis Tindale                                                                          |    19
Dichodontium olympicum Renauld & Cardot                                                                |    10
Astragalus amblytropis Barneby                                                                         |    14
Pinus caribaea Morelet                                                                                 |    15
Abscess                                                                                                |    15
Dysentery                                                                                              |    18
Laryngeal Diphtheria                                                                                   |    16
Lecanora canadensis Lynge & H. Magn.                                                                   |    15
Virola Aubl.                                                                                           |    19
Huntington's disease                                                                                   |    14
Solorina spongiosa (Ach.) Anzi                                                                         |    12
Thelesperma subnudum A. Gray                                                                           |    14
Repetitive strain injury                                                                               |    11
Schefflera morototonii (Aubl.) Maguire, Steyerm. & Frodin                                              |    16
Myoclonus                                                                                              |    17
Asplenium flabellulatum Kunze                                                                          |    22
Condyloma                                                                                              |    20
Abronia neurophylla Standl.                                                                            |    21
Homaliadelphus Dix. & P. Varde                                                                         |    15
Sarcogyne clavus (DC.) Krempelh.                                                                       |    17
Engelmannia A. Gray ex Nutt.                                                                           |    12
Lecanora subintricata (Nyl.) Th. Fr.                                                                   |    16
Medicago truncatula Gaertn.                                                                            |    15
Eupatorium sessilifolium L. var. sessilifolium                                                         |    20
Adenophyllum cooperi (A. Gray) Strother                                                                |    15
Oxalis incarnata L.                                                                                    |     8
SARS                                                                                                   |    24
Hirtella triandra Sw.                                                                                  |    14
Philadelphus pubescens Loisel. var. pubescens                                                          |    12
Eupatorium rotundifolium L. var. ovatum (Bigelow) Torr.                                                |    17
Psychotria greenwelliae Fosberg                                                                        |    19
Heliotropium curassavicum L. var. obovatum DC.                                                         |    19
Ear infection                                                                                          |    13
Calystegia spithamaea (L.) Pursh ssp. stans (Michx.) Brummitt                                          |    13
Pyrrocoma carthamoides Hook. var. subsquarrosa (Greene) G. Brown & Keil                                |    16
Eurybia wasatchensis (M.E. Jones) G.L. Nesom                                                           |    18
Salix ×princeps-ourayi L. Kelso                                                                       |    15
Asplenium uniseriale Raddi                                                                             |    24
Ceanothus megacarpus Nutt.                                                                             |     9
Couroupita guianensis Aubl.                                                                            |    10
Lecanora nordenskioeldii Vain.                                                                         |    16
Thelypteris cordata (Fée) Proctor var. imitata (C. Chr.) Proctor                                      |    16
Sphaerophorus globosus (Huds.) Vain. var. gracilis (Müll. Arg.) Zahlbr.                               |    15
Astragalus malacus A. Gray                                                                             |    18
Chorizanthe xanti S. Watson var. xanti                                                                 |    11
Achillea filipendulina Lam.                                                                            |    15
Cuscuta brachycalyx (Yunck.) Yunck.                                                                    |    18
Melanoma                                                                                               |    12
Cynanchum grisebachianum (Schltr.) Alain                                                               |     7
Cyperus echinatus (L.) Alph. Wood                                                                      |    18
Lindheimera A. Gray & Engelm.                                                                          |    11
Asimina obovata (Willd.) Nash                                                                          |    16
Digitaria longiflora (Retz.) Pers.                                                                     |    26
Phyllanthus caroliniensis Walter                                                                       |    13
Geum ×catlingii J.-P. Bernard & R. Gauthier                                                           |    14
Influenza                                                                                              |    14
Centromadia parryi (Greene) Greene ssp. parryi                                                         |     9
Helianthemum nashii Britton                                                                            |    18
Anthracothecium subglobosum Riddle                                                                     |    21
Hypermetropia                                                                                          |    15
Thysanocarpus Hook.                                                                                    |    10
Crataegus phippsii R. O'Kennon                                                                         |    14
Thamnolia vermicularis (Sw.) Ach. ex Schaerer                                                          |    18
Ramalina stenospora Müll. Arg.                                                                        |    11
Boerhavia triquetra S. Watson                                                                          |    18
Columnea ambigua (Urb.) Morley                                                                         |    12
Massalongia microphylliza (Nyl. ex Hasse) Henssen                                                      |    19
Paliurus Mill.                                                                                         |    16
Lantana velutina M. Martens & Galeotti                                                                 |    15
Lupus erythematosus                                                                                    |    18
Quercus coccinea Münchh. var. coccinea                                                                |    16
Hymenaea L.                                                                                            |    12
Trapa natans L.                                                                                        |    13
Taeniasis                                                                                              |    13
Frangula alnus Mill.                                                                                   |    14
Eriastrum densifolium (Benth.) H. Mason ssp. sanctorum (Milliken) H. Mason                             |    17
Anisacanthus linearis (Hagen) Henrickson & Lott                                                        |    16
Lactuca graminifolia Michx.                                                                            |    13
Multiple myeloma                                                                                       |    16
Peritonitis                                                                                            |    16
Gyalideopsis Vezda                                                                                     |    21
Cocculus carolinus (L.) DC.                                                                            |    18
Erysimum pallasii (Pursh) Fernald var. pallasii                                                        |    14
Matthiola longipetala (Vent.) DC.                                                                      |    16
Placynthium asperellum (Ach.) Trevis.                                                                  |    19
Mikania stevensiana Britton                                                                            |    12
Crataegus poliophylla Sarg.                                                                            |    17
Pisonia floridana Britton ex Small                                                                     |    21
Polypodium triseriale Sw.                                                                              |    17
Crataegus pinetorum Beadle                                                                             |    14
Cyclodictyon Mitt.                                                                                     |     9
Cistus salviifolius L.                                                                                 |    13
Sphaeralcea ambigua A. Gray ssp. rosacea (Munz & I.M. Johnst.) Kearney                                 |    18
Physaria geyeri (Hook.) A. Gray var. purpurea Rollins                                                  |    18
Cladidium Hafellner                                                                                    |    13
Escallonia Mutis ex L. f.                                                                              |    18
Kuru                                                                                                   |    17
Achnatherum hendersonii (Vasey) Barkworth                                                              |    17
Circadian rhythm sleep disorder                                                                        |    15
Cuphea procumbens Ortega                                                                               |    13
Thaspium trifoliatum (L.) A. Gray                                                                      |    14
Pannaria hookeri (Borrer ex Sm.) Nyl.                                                                  |    14
Nama californicum (A. Gray) Bacon                                                                      |    17
Limbtoosa                                                                                              |     6
Hudsonia tomentosa Nutt. var. tomentosa                                                                |    16
Polygala glandulosa Kunth                                                                              |    23
Reverchonia A. Gray                                                                                    |    11
Dichondra carolinensis Michx.                                                                          |    13
Peumus boldus Molina                                                                                   |    16
Usnea strigosa (Ach.) Eaton ssp. major (Michx.) I. Tav.                                                |    14
Caryota urens L.                                                                                       |    12
Doellingeria umbellata (Mill.) Nees                                                                    |    13
Melanelia panniformis (Nyl.) Essl.                                                                     |    16
Q fever                                                                                                |    17
Claytonia sibirica L. var. sibirica                                                                    |    24
Vitex trifolia L. var. variegata Moldenke                                                              |    13
Sciatica                                                                                               |    20
Goitre                                                                                                 |    25
Lantana canescens Kunth                                                                                |    16
Allergy                                                                                                |    12
Chorizanthe membranacea Benth.                                                                         |    10
Euphorbia esula L. var. uralensis (Fisch. ex Link) Dorn                                                |    19
Saponaria officinalis L.                                                                               |    14
Columnea scandens L. var. tulae (Urb.) Wiehler                                                         |    15
Echinacea purpurea (L.) Moench                                                                         |    17
Platanthera praeclara Sheviak & Bowles                                                                 |    24
Delphinium carolinianum Walter ssp. carolinianum                                                       |    20
Agathosma Willd.                                                                                       |    14
Silene repens Patrin ex Pers. ssp. purpurata (Greene) C.L. Hitchc. & Maguire                           |    14
Black Death                                                                                            |    14
Poa cusickii Vasey                                                                                     |    13
Plagiothecium cavifolium (Brid.) Z. Iwats.                                                             |    21
Chorea                                                                                                 |    21
Muhlenbergia torreyi (Kunth) Hitchc. ex Bush                                                           |    12
Ludwigia glandulosa Walter ssp. brachycarpa (Torr. & A. Gray) Peng                                     |    23
Plectranthus barbatus Andrews                                                                          |     9
Treculia Decne. ex Trec.                                                                               |    19
Cladoraphis Franch.                                                                                    |    15
Mirabilis laevis (Benth.) Curran                                                                       |    21
Mononucleosis                                                                                          |    12
Muhlenbergia utilis (Torr.) Hitchc.                                                                    |    24
Arachis hypogaea L.                                                                                    |    18
Lathyrus glandulosus Broich                                                                            |     5
Scurvy                                                                                                 |    17
Cladonia cristatella Tuck.                                                                             |     8
Ephemerum serratum (Hedw.) Hampe                                                                       |    18
Eremalche rotundifolia (A. Gray) Greene                                                                |    12
Astragalus anxius R.J. Meinke & Kaye                                                                   |    17
Poa paludigena Fernald & Wiegand                                                                       |    19
Bronchitis                                                                                             |    12
Schoenoplectus pungens (Vahl) Palla var. longispicatus (Britton) S.G. Sm.                              |    16
Parkinson's disease                                                                                    |    14
Thuidium philibertii Limpr.                                                                            |    16
Veronica alpina L.                                                                                     |    15
Mielichhoferia tehamensis Showers                                                                      |    15
Chenopodium rubrum L.                                                                                  |    15
Brya P. Br.                                                                                            |    16
Leprosy                                                                                                |    20
Napaea L.                                                                                              |    22
Sageretia thea (Osbeck) M.C. Johnst.                                                                   |    13
Chloris elata Desv.                                                                                    |    12
Achillea millefolium L. var. californica (Pollard) Jeps.                                               |    17
Rhodiola rhodantha (A. Gray) H. Jacobsen                                                               |    12
Lecanora caesiorubella Ach. ssp. prolifera (Fink) R.C. Harris                                          |    12
Coreopsis latifolia Michx.                                                                             |    18
Eriogonum luteolum Greene                                                                              |    24
Brothera Müll. Hal.                                                                                   |    20
Chordoma                                                                                               |    12
Thalictrum dasycarpum Fisch. & Avé-Lall.                                                              |    13
Paspalum hartwegianum Fourn.                                                                           |    15
Ericameria palmeri (A. Gray) H.M. Hall                                                                 |    12
Milium effusum L.                                                                                      |    11
Gentianella wrightii (A. Gray) Holub                                                                   |    22
Rhizocarpon oederi (Weber) Körb.                                                                      |     9
Arenaria hookeri Nutt. ssp. desertorum (Maguire) W.A. Weber                                            |    10
Carex bolanderi Olney                                                                                  |    13
Podranea ricasoliana (Tanfani) Sprague                                                                 |    18
Hieracium praealtum Vill. ex Gochnat var. decipiens W.D.J. Koch                                        |    18
Mangifera altissima Blanco                                                                             |    13
Porphyria                                                                                              |    16
Thelesperma subnudum A. Gray var. subnudum                                                             |     8
Mumps                                                                                                  |    27
Lyme disease                                                                                           |    10
Shortia galacifolia Torr. & A. Gray var. brevistyla Davies                                             |    15
Orthodontium Schwägr.                                                                                 |    19
Emilia Cass.                                                                                           |     7
Celtis sinensis Pers.                                                                                  |    17
Crataegus azarolus L.                                                                                  |    12
Phacelia nemoralis Greene ssp. oregonensis Heckard                                                     |    12
Symphoricarpos guadalupensis Correll                                                                   |    11
Eustachys paspaloides (Vahl) Lanza & Mattei ssp. caribaea (Spreng.) Nowack                             |    21
Eleusine indica (L.) Gaertn.                                                                           |    21
Bacterial meningitis                                                                                   |    20
Atherosclerosis                                                                                        |     9
Penstemon purpusii Brandegee                                                                           |    15
Calochortus clavatus S. Watson var. recurvifolius (Hoover) R. Fiedler & P. Zebell                      |     8
Metasequoia glyptostroboides Hu & W.C. Cheng                                                           |    16
Basiphyllaea Schltr.                                                                                   |    13
Silene cryptopetala Hillebr.                                                                           |    19
Poa wheeleri Vasey                                                                                     |    23
Arthothelium sanguineum (Willey) Zahlbr.                                                               |    19
Torenia asiatica L.                                                                                    |    13
Streptanthus barbiger Greene                                                                           |    16
Hemizonia congesta DC. ssp. tracyi Babc. & H.M. Hall                                                   |    13
Wigandia urens (Ruiz & Pav.) Kunth var. caracasana (Kunth) D. Gibson                                   |     9
Lactuca sativa L.                                                                                      |     8
Parmelia Ach.                                                                                          |    16
Monardella viridis Jeps.                                                                               |    14
Agoseris apargioides (Less.) Greene var. maritima (Sheldon) Q. Jones ex Cronquist                      |    12
Candidiasis                                                                                            |    20
Ludwigia peploides (Kunth) P.H. Raven ssp. montevidensis (Spreng.) P.H. Raven                          |    14
Rheumatic fever                                                                                        |    16
Carlowrightia linearifolia (Torr.) A. Gray                                                             |    18
Scabies                                                                                                |    11
Ranunculus inamoenus Greene                                                                            |    17
Dodonaea viscosa (L.) Jacq.                                                                            |    14
Allium tolmiei (Hook.) Baker ex S. Watson var. tolmiei                                                 |    12
Osteoporosis                                                                                           |    13
Crataegus munda Beadle                                                                                 |    18
Arctostaphylos manzanita Parry ssp. wieslanderi P.V. Wells                                             |    14
Symphyotrichum yukonense (Cronquist) G.L. Nesom                                                        |    14
Dracunculus Mill.                                                                                      |    14
Cymbalaria muralis G. Gaertn., B. Mey. & Scherb.                                                       |    20
Tetracoccus ilicifolius Coville & Gilman                                                               |    14
Eriogonum umbellatum Torr. var. aureum (Gandog.) Reveal                                                |    12
Stellaria graminea L.                                                                                  |     8
Eucalyptus macrandra F. Muell. ex Benth.                                                               |    16
Bixa orellana L.                                                                                       |    20
Patis racemosa (Sm.) Romasch., P.M. Peterson & R. J. Soreng                                            |    23
Thelypteris hispidula (Decne.) C.F. Reed var. hispidula                                                |    19
Evernia mesomorpha Nyl.                                                                                |     7
Benitoa D.D. Keck                                                                                      |    11
Ludwigia hyssopifolia (G. Don) Exell apud A.R. Fernandes                                               |    11
Equisetum telmateia Ehrh.                                                                              |    17
Centratherum punctatum Cass.                                                                           |    20
Chrysopsis gossypina (Michx.) Elliott ssp. cruiseana (Dress) Semple                                    |    13
Teratoma                                                                                               |    19
Lasthenia chrysantha (Greene ex A. Gray) Greene                                                        |    11
Lymphoma                                                                                               |    13
Cynanchum laeve (Michx.) Pers.                                                                         |    11
Gilia aliquanta A.D. Grant & V.E. Grant ssp. aliquanta                                                 |    29
Psittacosis                                                                                            |    21
Myasthenia gravis                                                                                      |    25
Carex teneriformis Mack.                                                                               |    19
Trypethelium tropicum (Ach.) Müll. Arg.                                                               |    13
Crataegus arborea Beadle                                                                               |    14
Hibiscadelphus bombycinus Forbes                                                                       |    20
Spartina anglica C.E. Hubbard                                                                          |    16
Clematis florida Thunb.                                                                                |    23
Crataegus phaenopyrum (L. f.) Medik.                                                                   |    17
Proboscidea Schmidel                                                                                   |    12
Crataegus castlegarensis J.B. Phipps & R.J.O. Kennon                                                   |    16
Peucedanum sandwicense Hillebr.                                                                        |     9
Porotrichum vancouveriense (Kindb.) H.A. Crum                                                          |    21
Aegilops longissima Schweinf. & Muschl.                                                                |    17
Phyllanthus L.                                                                                         |    18
Anthrax                                                                                                |    13
Oxytropis oreophila A. Gray                                                                            |    14
Asthma                                                                                                 |    15
Clitoria mariana L.                                                                                    |    13
Hydrophyllum appendiculatum Michx.                                                                     |    16
Spiraea virginiana Britton                                                                             |    23
Aplectrum Torr.                                                                                        |    13
Scrapie                                                                                                |    13
Astragalus nudisiliquus A. Nelson                                                                      |     9
Euphrasia micrantha Rchb.                                                                              |    13
Shingles                                                                                               |    13
Ornithopus perpusillus L.                                                                              |    15
Ranunculus eschscholtzii Schltdl. var. trisectus (Eastw.) L.D. Benson                                  |    13
Saussurea americana D.C. Eaton                                                                         |    18
Collinsia callosa Parish                                                                               |    12
Alzheimer's disease                                                                                    |    19
Symphyotrichum fendleri (A. Gray) G.L. Nesom                                                           |    12
Carex alma L.H. Bailey                                                                                 |    20
Ardisia Sw.                                                                                            |    13
Morquio Syndrome                                                                                       |    15
Emphysema                                                                                              |    14
Heterotheca oregona (Nutt.) Shinners var. oregona                                                      |    15
Hillebrandia Oliv.                                                                                     |    21
Xyris floridana (Kral) E.L. Bridges & Orzell                                                           |    12
Plagiobothrys chorisianus (Cham.) I.M. Johnst. var. chorisianus                                        |    14
Anemia wrightii Baker                                                                                  |    16
Vitiligo                                                                                               |    15
Castilleja raupii Pennell                                                                              |    16
Dicerandra frutescens Shinners ssp. modesta R.B. Huck                                                  |    12
Dyschoriste schiedeana (Nees) Kuntze var. cinerascens Henrickson & Hilsenb.                            |    19
Entada phaseoloides (L.) Merr.                                                                         |    15
Fraxinus mandshurica Rupr.                                                                             |     7
Lessingia nemaclada Greene var. mendocina (Greene) J.T. Howell                                         |    19
Baptisia albescens Small                                                                               |    23
Sesuvium portulacastrum (L.) L. var. portulacastrum                                                    |    17
Platanthera ×bicolor (Raf.) Luer (pro sp.)                                                            |    10
Viola palustris L. var. brevipes (M.S. Baker) R.J. Davis                                               |    13
Urticaria                                                                                              |    14
Lupinus polycarpus Greene                                                                              |    13
Primula borealis Duby                                                                                  |    20
Impatiens aurella Rydb.                                                                                |    16
Sphaeralcea bonariensis (Cav.) Griseb.                                                                 |    13
Townsendia grandiflora Nutt.                                                                           |    19
Tiarella cordifolia L. var. cordifolia                                                                 |    12
Lice                                                                                                   |    14
Cryptantha atwoodii Higgins                                                                            |    23
Penstemon cyananthus Hook.                                                                             |    14
Leucobryum albidum (Brid. ex P. Beauv.) Lindb.                                                         |    18
Cardamine cordifolia A. Gray var. lyallii (S. Watson) A. Nelson & J.F. Macbr.                          |    22
Leptogium juniperinum Tuck.                                                                            |    16
Bulbostylis vestita (Kunth) C.B. Clarke                                                                |    13
Prunus lusitanica L.                                                                                   |    10
Strabismus                                                                                             |    17
Prostatitis                                                                                            |    16
Nicolletia occidentalis A. Gray                                                                        |    21
Scleroderma                                                                                            |    17
Pelvic inflammatory disease                                                                            |    17
Cryptantha albida (Kunth) I.M. Johnst.                                                                 |     8
Migraine                                                                                               |    11
Hypericum fasciculatum Lam.                                                                            |    12
Myxedema                                                                                               |    15
Meximalva filipes (A. Gray) Fryxell                                                                    |     8
Leukemia                                                                                               |     8
Iritis                                                                                                 |    13
Spergularia bocconii (Scheele) Foucaud ex Merino                                                       |    14
Pseudocryphaea E. Britton ex Broth.                                                                    |    12
Eutrema R. Br.                                                                                         |    12
Silicosis                                                                                              |    20
Flacourtia Comm. ex L'Hér.                                                                            |    23
Astigmatism                                                                                            |    16
Sepsis                                                                                                 |    17
Forsstroemia Lindb.                                                                                    |     7
Melicope degeneri (B.C. Stone) T.G. Hartley & B.C. Stone                                               |    14
Cylindropuntia ×kelvinensis (V.E. Grant & K.A. Grant) P.V. Heath                                      |    17
Ficus lyrata Warb.                                                                                     |    21
Brachythecium oedipodium (Mitt.) A. Jaeger                                                             |    16
Cistanthe parryi (A. Gray) Hershkovitz var. hesseae (J.H. Thomas) Kartesz & Gandhi                     |    14
Mitella diphylla L.                                                                                    |    18
Psychilis monensis Sauleda                                                                             |    17
Euphorbia resinifera Berg                                                                              |    22
Jaundice                                                                                               |    22
Peperomia pellucida (L.) Kunth                                                                         |    15
Datisca glomerata (C. Presl) Baill.                                                                    |    18
Stomach ulcers                                                                                         |    20
Cholera                                                                                                |     8
Pistacia terebinthus L.                                                                                |    16
Gastroenteritis                                                                                        |    14
Potentilla bimundorum Soják                                                                           |    15
Luculia Sweet                                                                                          |    25
Helianthella castanea Greene                                                                           |    10
Poliomyelitis                                                                                          |    18
Leishmaniasis                                                                                          |    19
Matelea baldwyniana (Sweet) Woodson                                                                    |     9
Selaginella umbrosa Lem. ex Hieron.                                                                    |    12
Ranunculus macauleyi A. Gray var. macauleyi                                                            |    14
Gratiola viscidula Pennell                                                                             |     9
Bacidia polychroa (Th. Fr.) Körb.                                                                     |    15
Juncus effusus L. var. conglomeratus (L.) Engelm.                                                      |    14
Coptis laciniata A. Gray                                                                               |    13
Stephanomeria exigua Nutt. ssp. carotifera (Hoover) Gottlieb                                           |    16
Encephalitis                                                                                           |    20
Nolina georgiana Michx.                                                                                |    28
Hibiscus tiliaceus L.                                                                                  |    13
Clerodendrum glabrum E. Mey.                                                                           |    16
Chelidonium L.                                                                                         |    15
Quercus geminata Small                                                                                 |    19
Cestrum aurantiacum Lindl.                                                                             |    12
HIV                                                                                                    |    17
Cypripedium montanum Douglas ex Lindl.                                                                 |    17
Saccharum ravennae (L.) L.                                                                             |    25
Coeliac disease                                                                                        |    16
Galeopsis tetrahit L.                                                                                  |    13
Triphora amazonica Schltr.                                                                             |     9
Agrostis elliottiana Schult.                                                                           |    22
Chrysothamnus humilis Greene                                                                           |    12
Hyperthyroidism                                                                                        |    18
Cladonia didyma (Fée) Vain. var. vulcanica (Zoll. & Moritzi) Vain.                                    |    14
Eucalyptus crebra F. Muell.                                                                            |     7
Juglans microcarpa Berl.                                                                               |    11
Caragana korshinskii Kom.                                                                              |    10
Chrysoma pauciflosculosa (Michx.) Greene                                                               |    18
Symphyotrichum hallii (A. Gray) G.L. Nesom                                                             |    15
Pseudostellaria jamesiana (Torr.) W.A. Weber & R.L. Hartm.                                             |    18
Chenopodium ×variabile Aellen                                                                         |    18
Sarracenia leucophylla Raf.                                                                            |    14
Carex tonsa (Fernald) E.P. Bicknell var. tonsa                                                         |    17
Hepatitis C                                                                                            |    17
Centaurium glanduliferum (Correll) B.L. Turner                                                         |     8
Actinomycetomas                                                                                        |    17
Dysphania graveolens (Willd.) Mosyakin & Clemants                                                      |    14
Tortella rigens Alb.                                                                                   |    13
Cedrela P. Br.                                                                                         |    15
Sanicula peckiana J.F. Macbr.                                                                          |    25
Brucellosis                                                                                            |    17
Polypogon maritimus Willd.                                                                             |    16
Gayophytum diffusum Torr. & A. Gray ssp. diffusum                                                      |    20
Cusickiella Rollins                                                                                    |    15
Heterotheca sessiliflora (Nutt.) Shinners                                                              |     5
Asplenium ×flagrum W.H. Wagner & D.D. Palmer                                                          |    22
Senna durangensis (Rose) Irwin & Barneby var. durangensis                                              |    12
Veratrum hybridum (Walter) J.H. Zimmerman ex Zomlefer                                                  |    15
Bryocaulon divergens (Ach.) Karnefelt                                                                  |    12
Arenaria kingii (S. Watson) M.E. Jones ssp. compacta (Coville) Maguire                                 |     9
Androsace chamaejasme Wulfen ssp. carinata (Torr.) Hultén                                             |    19
Ques fever                                                                                             |    18
Calochortus lyallii Baker                                                                              |    20
Pseudopanax K. Koch                                                                                    |    22
Oxalis rugeliana Urb.                                                                                  |    22
Lupinus excubitus M.E. Jones var. excubitus                                                            |    14
Salix athabascensis Raup                                                                               |     9
Roystonea regia (Kunth) O.F. Cook, nom. cons.                                                          |    15
Paronychia fastigiata (Raf.) Fernald var. fastigiata                                                   |    22
Scarlet fever                                                                                          |    14
Phyllanthus tenellus Roxb.                                                                             |    12
Crohn's Disease                                                                                        |    13
Portulaca umbraticola Kunth ssp. coronata (Small) Matthews & Ketron                                    |    13
Lasthenia ferrisiae Ornduff                                                                            |    18
Siderosis                                                                                              |    14
Eucalyptus ×mortoniana Kinney (pro sp.)                                                               |    17
Lecanora microbola H. Magn.                                                                            |    23
Hybanthus linearifolius (Vahl) Urb.                                                                    |    13
Carex concinnoides Mack.                                                                               |    16
Necrotizing Fasciitis                                                                                  |    13
Pelargonium panduriforme Eckl. & Zeyh.                                                                 |    14
Solidago flexicaulis L.                                                                                |    12
Usnea merrillii Mot.                                                                                   |     8
Streptanthus tortuosus Kellogg var. flavescens Jeps.                                                   |    11
Graphis intricata Fée                                                                                 |    13
Graphina acharii (Fée) Müll. Arg.                                                                    |    13
Halimolobos diffusa (A. Gray) O.E. Schulz                                                              |    12
Arthritis                                                                                              |     9
Streptanthus albidus Greene ssp. peramoenus (Greene) Kruckeb.                                          |     9
Polyctenium fremontii (S. Watson) Greene                                                               |    18
Hesperocyparis goveniana (Gordon) Bartel                                                               |    22
Xyris panacea L.C. Anderson & Kral                                                                     |    19
Ditrichum schimperi (Lesq.) Kuntze                                                                     |    18
Sphaeralcea pedatifida (A. Gray) A. Gray                                                               |    16
Human papillomavirus                                                                                   |    12
Lupinus croceus Eastw.                                                                                 |    17
Stipulicida Michx.                                                                                     |    16
Encalypta affinis R. Hedw. var. macounii (Austin) H.A. Crum & L.E. Anderson                            |    11
Bactrospora dryina (Ach.) A. Massal.                                                                   |    16
Gloriosa L.                                                                                            |    14
Physocarpus capitatus (Pursh) Kuntze                                                                   |    16
Sarracenia flava L.                                                                                    |    16
Pisonia capitata (S. Watson) Standl.                                                                   |    15
Allium dichlamydeum Greene                                                                             |    11
Sphaeralcea fendleri A. Gray                                                                           |    23
Cyrtandra heinrichii H. St. John                                                                       |    13
Labordia pumila (Hillebr.) Skottsb.                                                                    |    11
Shigellosis                                                                                            |    17
Stenaria nigricans (Lam.) Terrell var. floridana (Standl.) Terrell                                     |    14
Jacquinia berteroi Spreng.                                                                             |    21
Chimaphila umbellata (L.) W.P.C. Barton ssp. occidentalis (Rydb.) Hultén                              |    13
Lymphogranuloma venereum                                                                               |    10
Eragrostis elliottii S. Watson                                                                         |    19
Multiple sclerosis                                                                                     |     9
Verbena bracteata Cav. ex Lag. & Rodr.                                                                 |     9
Ivesia callida (H.M. Hall) Rydb.                                                                       |    17
Diploicia A. Massal.                                                                                   |    15
Muhlenbergia emersleyi Vasey                                                                           |    15
Diphtheria                                                                                             |    21
Cheirodendron Nutt. ex Seem.                                                                           |    21
Drepanocladus aduncus (Hedw.) Warnst. var. polycarpus (Bland. ex Voit) G. Roth                         |    20
Pluchea carolinensis (Jacq.) G. Don                                                                    |     9
Erigeron philadelphicus L.                                                                             |    14
GERD                                                                                                   |    14
Senecio cannabinifolius Hook. & Arn.                                                                   |    17
Eriogonum crosbyae Reveal                                                                              |    17
Fritillaria striata Eastw.                                                                             |    18
Loiseleuria Desv.                                                                                      |    15
Arenaria fendleri A. Gray var. porteri Rydb.                                                           |     8
Monarda russeliana Nutt. ex Sims                                                                       |    10
Carex sprengelii Dewey ex Spreng.                                                                      |    16
Hypoxis juncea Sm.                                                                                     |    19
Romneya Harv.                                                                                          |    26
Holozonia Greene                                                                                       |    19
Cenchrus brownii Roem. & Schult.                                                                       |    15
Cynodon aethiopicus W.D. Clayton & Harlan                                                              |    26
Taraxacum californicum Munz & I.M. Johnst.                                                             |    15
Rubus lawrencei L.H. Bailey                                                                            |    18
Calystegia malacophylla (Greene) Munz ssp. malacophylla var. malacophylla                              |    15
Ajuga pyramidalis L.                                                                                   |    20
Thelypteris noveboracensis (L.) Nieuwl.                                                                |    19
Cyanea glabra (E. Wimm.) H. St. John                                                                   |    14
Sericocarpus rigidus Lindl.                                                                            |    15
Arabis furcata S. Watson var. furcata                                                                  |    18
Delphinium ×burkei Greene (pro sp.)                                                                   |    14
Oncosiphon suffruticosum (L.) Källersjö                                                              |    18
Psora luridella (Tuck.) Fink                                                                           |    13
Chlamydia                                                                                              |    23
Draba oreibata J.F. Macbr. & Payson ex Payson var. serpentina Tiehm & P.K. Holmgren                    |    12
Apluda mutica L.                                                                                       |    15
Paratyphoid fever                                                                                      |    14
Camissonia claviformis (Torr. & Frém.) P.H. Raven ssp. aurantiaca (Munz) P.H. Raven                   |    19
Lespedeza thunbergii (DC.) Nakai                                                                       |    11
Salvia reflexa Hornem.                                                                                 |    14
Lonicera albiflora Torr. & A. Gray                                                                     |    14
Rickets                                                                                                |    18
Synthlipsis greggii A. Gray                                                                            |    16
Cladonia atlantica A. Evans                                                                            |    15
Listeriosis                                                                                            |    15
Astragalus nuttallianus DC.                                                                            |    13
Chaenotheca chrysocephala (Turner ex Ach.) Th. Fr.                                                     |    19
Matelea maritima (Jacq.) Woodson                                                                       |    17
Carbon monoxide poisoning                                                                              |    14
Mycoglaena meridionalis (Zahlbr.) Szat.                                                                |     9
Plumbago scandens L.                                                                                   |    14
Acrocomia Mart.                                                                                        |    14
Arabis lemmonii S. Watson var. drepanoloba (Greene) Rollins                                            |    11
Smallpox                                                                                               |    14
Pterocarpus macrocarpus Kurz                                                                           |    10
Ravenala madagascariensis Sonnerat                                                                     |    12
Phaeosporobolus usneae D. Hawksw. & Hafellner                                                          |    22
Anoda crenatiflora Ortega                                                                              |    12
Sickle-cell anemia                                                                                     |    18
Sporobolus vaginiflorus (Torr. ex A. Gray) Alph. Wood var. vaginiflorus                                |    20
Actaea rubra (Aiton) Willd.                                                                            |     9
Beriberi                                                                                               |    12
Myelitis                                                                                               |    12
Asplenium ×gravesii Maxon (pro sp.)                                                                   |     9
Thalassaemia                                                                                           |    17
Malaria                                                                                                |    21
Cheilanthes parryi (D.C. Eaton) Domin                                                                  |    15
Chaenomeles ×superba (Frahm) Rehder                                                                   |    17
Aloe ferox Mill.                                                                                       |    19
Phaseolus filiformis Benth.                                                                            |    12
Ignious Syndrome                                                                                       |    14
Arceuthobium littorum Hawksw., Wiens & Nickrent                                                        |    16
Aphanostephus ramosissimus DC. var. ramosissimus                                                       |    14
Buellia ocellata (Flotow) Körb.                                                                       |    17
Rosa nutkana C. Presl                                                                                  |    11
Stereocaulon Hoffm.                                                                                    |    11
Biatorella rappii Zahlbr.                                                                              |    11
Stomach flu                                                                                            |    15
Knautia arvensis (L.) J.M. Coult.                                                                      |    24
Eulophia alta (L.) Fawc. & Rendle                                                                      |    17
Entodon concinnus (De Not.) Par.                                                                       |    16
Carex hitchcockiana Dewey                                                                              |    25
Astragalus sabulosus M.E. Jones var. vehiculus S.L. Welsh                                              |    14
Lellingeria suspensa (L.) A.R. Sm. & R.C. Moran                                                        |    17
Peltigera polydactylon (Neck.) Hoffm.                                                                  |    17
Psoralidium tenuiflorum (Pursh) Rydb.                                                                  |    15
Rosa ×odorata (Andrews) Sweet (pro sp.)                                                               |    18
Crataegus coleae Sarg.                                                                                 |    18
Poa douglasii Nees                                                                                     |    15
Passiflora ×colvillii Sweet                                                                           |    19
Echinochloa crus-pavonis (Kunth) Schult. var. crus-pavonis                                             |    18
Pyrrocoma liatriformis Greene                                                                          |    11
Cosmos Cav.                                                                                            |    12
Machaeranthera asteroides (Torr.) Greene var. lagunensis (D.D. Keck) B.L. Turner                       |    14
Smelowskia borealis (Greene) Drury & Rollins var. villosa Drury & Rollins                              |     9
Claytonia megarhiza (A. Gray) Parry ex S. Watson var. megarhiza                                        |    12
Scaevola sericea Vahl var. sericea                                                                     |    15
Mycoblastus marginatus Degel.                                                                          |    11
Neomacounia Irel.                                                                                      |    13
Lupinus diffusus Nutt.                                                                                 |    10
Coronary heart disease                                                                                 |    21
Eriogonum palmerianum Reveal                                                                           |     9
Macroptilium atropurpureum (Moc. & Sessé ex DC.) Urb.                                                 |    11
Allium macropetalum Rydb.                                                                              |    19
Common cold                                                                                            |    13
Peperomia rockii C. DC.                                                                                |    18
Quercus laevis Walter                                                                                  |    14
Carex occidentalis L.H. Bailey                                                                         |    11
Begonia foliosa Kunth var. miniata (Planch.) L.B. Sm. & B.G. Schub.                                    |    12
Psoriasis                                                                                              |    15
Isachne distichophylla Munro ex Hillebr.                                                               |    21
Boscia senegalensis (Pers.) Lam. ex Poir.                                                              |    20
Poa cusickii Vasey ssp. purpurascens (Vasey) Soreng                                                    |    11
Myopia                                                                                                 |    15
Polygonella Michx.                                                                                     |    11
Draba oreibata J.F. Macbr. & Payson ex Payson var. oreibata                                            |    10
Potentilla concinna Richardson var. proxima (Rydb.) S.L. Welsh & B.C. Johnst.                          |     8
Erigeron strigosus Muhl. ex Willd. var. dolomiticola J. Allison                                        |    16
Salvia potus Epling                                                                                    |    21
Caloplaca discolor (Willey) Fink                                                                       |     6
Astragalus eurekensis M.E. Jones                                                                       |    20
Xylosma crenata (H. St. John) H. St. John                                                              |     7
Coccocarpia palmicola (Spreng.) Arv. & D.J. Galloway                                                   |    18
Night blindness                                                                                        |     6
Penstemon ammophilus N.H. Holmgren & L.M. Shultz                                                       |    12
Lomatium congdonii J.M. Coult. & Rose                                                                  |    12
Colitis                                                                                                |    14
Bromus biebersteinii Roem. & Schult. [excluded]                                                        |    12
Legionellosis                                                                                          |    16
Erigeron serpentinus G.L. Nesom                                                                        |    24
Rheumatic heart                                                                                        |    16
Erythronium L.                                                                                         |    16
Fissidens adianthoides Hedw.                                                                           |    19
Loiasis                                                                                                |    20
Carphephorus carnosus (Small) C.W. James                                                               |    21
Carex socialis Mohlenbr. & Schwegm.                                                                    |    17
Potentilla fissa Nutt.                                                                                 |    18
Echinochloa pyramidalis (Lam.) Hitchc. & Chase                                                         |    18
Muhlenbergia capillaris (Lam.) Trin.                                                                   |    10
Styphnolobium affine (Torr. & A. Gray) Walp.                                                           |    20
Verrucaria iovensis Servit                                                                             |    19
Eustoma exaltatum (L.) Salisb. ex G. Don ssp. exaltatum                                                |    16
Triteleia Douglas ex Lindl.                                                                            |    16
Caloplaca pollinii (A. Massal.) Jatta                                                                  |     9
Thelotrema subtile Tuck.                                                                               |    13
Hypotonia                                                                                              |    13
Rochefortia acanthophora (DC.) Griseb.                                                                 |    18
Castilleja occidentalis Torr.                                                                          |    17
Tetanus                                                                                                |    16
Flavoparmelia concreta (Stizenb.) ?, ined.?                                                            |    18
Bryum algovicum Sendtn. ex Müll. Hal. var. rutheanum (Warnst.) Crundw.                                |    20
Echinocereus pentalophus (DC.) Lem.                                                                    |    20
Lewisia kelloggii K. Brandegee ssp. kelloggii                                                          |    13
Plantago princeps Cham. & Schltdl.                                                                     |    15
Erigeron arisolius G.L. Nesom                                                                          |    14
Sphagnum fimbriatum Wilson var. concinnum (Berggr.) Warnst.                                            |    13
Pouzolzia Gaudich.                                                                                     |    20
Fibromyalgia                                                                                           |    11
Honckenya peploides (L.) Ehrh. ssp. peploides (L.) Ehrh. [excluded]                                    |    16
Lilium rubescens S. Watson                                                                             |    21
Senecio lyonii A. Gray                                                                                 |    19
Digitaria patens (Swallen) Henr.                                                                       |    22
Dermatocarpon arnoldianum Degel.                                                                       |    15
Rubus arenicola Blanch.                                                                                |    16
Periodontal disease                                                                                    |    14
Chamaesyce albomarginata (Torr. & A. Gray) Small                                                       |    17
Interstitial cystitis                                                                                  |    10
Crumia latifolia (Kindb.) Schof.                                                                       |    14
Ferocactus eastwoodiae (L.D. Benson) L.D. Benson                                                       |    13
Dichanthelium acuminatum (Sw.) Gould & C.A. Clark var. fasciculatum (Torr.) Freckmann                  |    15
Erectile dysfunction                                                                                   |    17
Abutilon palmeri A. Gray                                                                               |    18
Eczema                                                                                                 |    19
Cordyla Lour.                                                                                          |    18
Tilia platyphyllos Scop.                                                                               |     9
Dorema ammoniacum D. Don                                                                               |    13
Cordia angustifolia (West ex Willd.) Roem. & Schult.                                                   |    18
Achillea ptarmica L.                                                                                   |    21
Heuchera merriamii Eastw.                                                                              |    14
Muscular dystrophy                                                                                     |    12
Meniere's disease                                                                                      |    14
Elymus sajanensis (Nevski) Tzvelev                                                                     |    14
Histiocytosis (childhood cancer)                                                                       |    19
Heart disease                                                                                          |    17
Horkelia truncata Rydb.                                                                                |    11
Vitis rotundifolia Michx. var. rotundifolia                                                            |    22
Progeria                                                                                               |    16
Alpinia Roxb.                                                                                          |    10
Picrasma excelsa (Sw.) Planch.                                                                         |    17
Cyanea procera Hillebr.                                                                                |    10
Sagittaria papillosa Buchenau                                                                          |    14
Carex platyphylla Carey                                                                                |    13
Scutellaria floridana Chapm.                                                                           |    15
Gyalideopsis athalloides (Nyl.) Vezda                                                                  |    13
Congestive heart disease                                                                               |    17
Danthonia decumbens (L.) DC.                                                                           |    18
Smelowskia borealis (Greene) Drury & Rollins var. jordalii Drury & Rollins                             |    13
Kidney stone disease                                                                                   |    13
Leucolepis Lindb.                                                                                      |    16
Balsamorhiza incana Nutt.                                                                              |    13
Hymenothrix wislizeni A. Gray                                                                          |    20
Draba stenoloba Ledeb. var. stenoloba                                                                  |    10
Blighia sapida K.D. Koenig                                                                             |    16
Viburnum acerifolium L.                                                                                |    12
Panicum turgidum Forssk.                                                                               |    16
Campylobacter infection                                                                                |    12
Camptotheca acuminata Decne.                                                                           |    23
Astragalus tricarinatus A. Gray                                                                        |    10
Hepatitis B                                                                                            |    12
Rubella                                                                                                |    14
Penstemon australis Small                                                                              |    14
Atriplex elegans (Moq.) D. Dietr. var. fasciculata (S. Watson) M.E. Jones                              |    15
Ambrosia ambrosioides (Cav.) Payne                                                                     |    15
Agropyron cristatum (L.) Gaertn. ssp. cristatum                                                        |    19
Leptospirosis                                                                                          |    14
Pleodendron v. Tiegh.                                                                                  |    19
Metastatic cancer                                                                                      |    24
Bryum reedii H. Rob.                                                                                   |    17
Eichhornia crassipes (Mart.) Solms                                                                     |    18
Actaea pachypoda Elliott                                                                               |    15
Cladonia didyma (Fée) Vain.                                                                           |    18
Geum canadense Jacq. var. canadense                                                                    |    17
Cynanchum monense (Britton) Alain                                                                      |    16
Bunion                                                                                                 |    15
Rubus permixtus Blanch.                                                                                |    16
Heterotheca oregona (Nutt.) Shinners                                                                   |    16
Eleocharis minima Kunth                                                                                |    11
Lomatium utriculatum (Nutt. ex Torr. & A. Gray) J.M. Coult. & Rose                                     |    14
Pedicularis lapponica L.                                                                               |    18
Impetigo                                                                                               |    20
Mattticular syndrome                                                                                   |    17
Gyalectidium Müll. Arg.                                                                               |    17
Lupinus longifolius (S. Watson) Abrams                                                                 |    10
Syphilis                                                                                               |     6
Chlorogalum pomeridianum (DC.) Kunth var. pomeridianum                                                 |    21
Spiranthes vernalis Engelm. & A. Gray                                                                  |    16
Laryngitis                                                                                             |     8
Nemophila menziesii Hook. & Arn. var. integrifolia Parish                                              |    13
Cnidoscolus aconitifolius (Mill.) I.M. Johnst.                                                         |    19
Hypothyroid                                                                                            |    11
Townsendia condensata Parry ex A. Gray                                                                 |    17
Eriophorum callitrix Cham. ex C.A. Mey. var. callitrix                                                 |    15
Botulism                                                                                               |     9
Epilepsy                                                                                               |     7
Aseptic meningitis                                                                                     |    15
Festuca saximontana Rydb.                                                                              |    13
Ipomopsis tenuituba (Rydb.) V.E. Grant ssp. latiloba V.E. Grant & Wilken                               |     9
Diabetes mellitus                                                                                      |     7
Blennosperma bakeri Heiser                                                                             |    16
Chagas disease                                                                                         |    20
Paronychia canadensis (L.) Alph. Wood                                                                  |    26
Oenothera deltoides Torr. & Frém. ssp. howellii (Munz) W. Klein                                       |    19
Pterostegia drymarioides Fisch. & C.A. Mey.                                                            |     9
Pellagra                                                                                               |    13
Ranunculus sceleratus L. var. sceleratus                                                               |    18
Pseudognaphalium sandwicensium (Gaudich.) Anderb. var. kilaueanum (O. Deg. & Sherff) W.L. Wagner       |    15
Schiedea kaalae Wawra                                                                                  |    18
Lupinus evermannii Rydb.                                                                               |    10
Thymophylla pentachaeta (DC.) Small                                                                    |    10
Caulanthus cooperi (S. Watson) Payson                                                                  |    18
Carex brunnescens (Pers.) Poir. ssp. pacifica Kalela                                                   |    15
Cyathea borinquena (Maxon) Domin                                                                       |    17
Croton californicus Müll. Arg.                                                                        |     8
Amphicarpum purshii Kunth                                                                              |    14
Erigeron gracilis Rydb.                                                                                |    12
Astragalus wetherillii M.E. Jones                                                                      |    18
Gastridium phleoides (Nees & Meyen) C.E. Hubbard                                                       |    16
Stereophyllum Mitt.                                                                                    |    14
Monolepis pusilla Torr. ex S. Watson                                                                   |    16
Blepharoneuron Nash                                                                                    |    13
Adiantum tricholepis Fée                                                                              |    19
Cyathea cooperi (Hook. ex F. Muell.) Domin                                                             |    18
Dehydration                                                                                            |    23
Acarospora thelococcoides (Nyl.) Zahlbr.                                                               |    12
Chamaesyce geyeri (Engelm. & A. Gray) Small var. wheeleriana (Warnock & M.C. Johnst.) Mayfield         |    15
Helianthemum canadense (L.) Michx.                                                                     |    12
Piptochaetium avenaceum (L.) Parodi                                                                    |    14
Schizophrenia                                                                                          |    17
Pinzona Mart. & Zucc.                                                                                  |    15
Lipochaeta remyi A. Gray                                                                               |    22
Halenia deflexa (Sm.) Griseb.                                                                          |    22
Astragalus mollissimus Torr. var. earlei (Greene ex Rydb.) Tidestr.                                    |    15
Cakile lanceolata (Willd.) O.E. Schulz ssp. lanceolata                                                 |     4
Guatteria Ruiz & Pav.                                                                                  |    19
Ageratina lemmonii (B.L. Rob.) R.M. King & H. Rob.                                                     |    13
Polemonium micranthum Benth.                                                                           |     7
Carex debilis Michx. var. pubera A. Gray                                                               |    14
Kwashiorkor                                                                                            |    23
Lawsonia inermis L.                                                                                    |     8
Symphyotrichum bahamense (Britton) G.L. Nesom                                                          |    10
Alectoria nigricans (Ach.) Nyl.                                                                        |    12
Phacelia congdonii Greene                                                                              |    18
Mad cow disease                                                                                        |    17
Alyssum obovatum (C.A. Mey.) Turcz.                                                                    |    21
Arrhenatherum elatius (L.) P. Beauv. ex J. Presl & C. Presl                                            |    16
Hedyotis schlechtendahliana Steud.                                                                     |    17
Hydnophytum Jack.                                                                                      |    14
Pilia                                                                                                  |    20
Oligoneuron riddellii (Frank ex Riddell) Rydb.                                                         |    12
Lonicera involucrata (Richardson) Banks ex Spreng.                                                     |    21
Rheumatoid arthritis                                                                                   |     5
Lyrocarpa coulteri Hook. & Harv. ex Harv. var. palmeri (S. Watson) Rollins                             |    16
Boil                                                                                                   |    13
Septicemia                                                                                             |    15
Monardella odoratissima Benth.                                                                         |    16
Carex vestita Willd.                                                                                   |    19
Emex australis Steinh.                                                                                 |    15
Dendriscocaulon intricatulum (Nyl.) Henssen                                                            |    14
Phenylketonuria                                                                                        |    14
Cowpox                                                                                                 |    11
Abies lasiocarpa (Hook.) Nutt. var. arizonica (Merriam) Lemmon                                         |    19
Sagraea DC.                                                                                            |    17
Corydalis scouleri Hook.                                                                               |    11
Ipomoea quamoclit L.                                                                                   |    21
Synthyris pinnatifida S. Watson                                                                        |    16
Phlox glabriflora (Brand) Whitehouse                                                                   |    17
Fabronia ciliaris (Brid.) Brid. var. wrightii (Sull.) W.R. Buck                                        |    16
Holmgrenanthe petrophila (Coville & Morton) Elisens                                                    |    18
Sorbus groenlandica (C.K. Schneid.) Á. Löve & D. Löve                                               |    16
Gilia angelensis V.E. Grant                                                                            |    15
Plagiobothrys torreyi (A. Gray) A. Gray var. torreyi                                                   |    13
Rosa stellata Wooton ssp. stellata                                                                     |    15
Lead poisoning                                                                                         |    11
Polygonum segetum Kunth                                                                                |    13
Erucastrum gallicum (Willd.) O.E. Schulz                                                               |    12
Chaenactis douglasii (Hook.) Hook. & Arn. var. douglasii                                               |    14
Rocky Mountain spotted fever                                                                           |    23
Cyperus grayi Torr.                                                                                    |    15
Rosa arvensis Huds.                                                                                    |    14
Viola ×malteana House                                                                                 |    14
Anisacanthus thurberi (Torr.) A. Gray                                                                  |    12
Eriogonum ammophilum Reveal                                                                            |    16
Juncus secundus P. Beauv. ex Poir.                                                                     |    11
Draba asterophora Payson                                                                               |    15
Marburg fever                                                                                          |    18
Quercus engelmannii Greene                                                                             |    16
Cancer                                                                                                 |    20
Calystegia subacaulis Hook. & Arn. ssp. subacaulis                                                     |    13
Hordeum L.                                                                                             |    15
Breast cancer                                                                                          |    11
Corylus colurna L.                                                                                     |    16
Castilleja nervata Eastw.                                                                              |    19
Epimedium L.                                                                                           |    20
Phyllostegia bracteata Sherff                                                                          |    22
Ipomoea rupicola House                                                                                 |    14
Selaginella ludoviciana A. Braun                                                                       |    14
Elaphoglossum alatum Gaudich. var. parvisquamaeum (Skottsb.) W.R. Anderson & Crosby                    |    14
Cleome viscosa L.                                                                                      |    18
Lomariopsis amydrophlebia (Slosson ex Maxon) Holttum                                                   |    11
Ceratopteris thalictroides (L.) Brongn.                                                                |    26
Genital herpes                                                                                         |    14
Chimaphila menziesii (R. Br. ex D. Don) Spreng.                                                        |    14
Foodborne illness                                                                                      |     7
Pogogyne Benth.                                                                                        |    13
Caulanthus anceps Payson                                                                               |    11
Sagraea domingensis DC.                                                                                |    14
Pyrenocollema caesium (Nyl.) R.C. Harris                                                               |    13
Osteoarthritis                                                                                         |    20
Potentilla diversifolia Lehm. var. diversifolia                                                        |    18
Striga asiatica (L.) Kuntze                                                                            |    17
Obesity                                                                                                |    10
Cheilanthes villosa Davenport ex Maxon                                                                 |    14
Duboisia leichhardtii (F. Muell.) F. Muell.                                                            |    13
Balsamorhiza sagittata (Pursh) Nutt.                                                                   |    17
Prunus alleghaniensis Porter var. davisii (W. Wight) Sarg.                                             |    11
pneumonia                                                                                              |    19
Dichanthelium sabulorum (Lam.) Gould & C.A. Clark                                                      |    14
Symplocarpus Salisb. ex W.P.C. Barton                                                                  |    24
Monolopia stricta Crum                                                                                 |    15
Neoplasm                                                                                               |    17
Dengue Fever                                                                                           |    20
Gangrene                                                                                               |    12
Claytonia tuberosa Pall. ex Schult. var. czukczorum (Volkova) Hultén                                  |    11
Scolosanthus Vahl                                                                                      |    15
Buxbaumia viridis (DC.) Moug. & Nestl.                                                                 |    19
Palindromic rheumatism                                                                                 |    11
Euphrasia L.                                                                                           |    12
SIDS                                                                                                   |    13
Packera neomexicana (A. Gray) W.A. Weber & Á. Löve var. metcalfei (Greene) D.K. Trock & T.M. Barkley |    14
Tagetes lemmonii A. Gray                                                                               |    11
Impatiens balfourii Hook. f.                                                                           |     8
Convolvulus nodiflorus Desv.                                                                           |    21
Thevetia peruviana (Pers.) K. Schum.                                                                   |    13
Cerebral palsy                                                                                         |    18
Lecidea katahdinensis Degel.                                                                           |    16
Plague                                                                                                 |    11
Phacelia rotundifolia Torr. ex S. Watson                                                               |    19
Cladonia acuminata (Ach.) Norrlin                                                                      |    16
Astragalus brauntonii Parish                                                                           |    16
Commelina tuberosa L.                                                                                  |    14
Microsorum spectrum (Kaulf.) Copeland                                                                  |    17
Odontosoria chinensis (L.) J. Sm.                                                                      |    10
Selenia jonesii Cory var. jonesii                                                                      |    12
Prosopis laevigata (Humb. & Bonpl. ex Willd.) M.C. Johnst.                                             |    13
Strep throat                                                                                           |     8
Measles                                                                                                |    15
Centaurea virgata Lam.                                                                                 |    13
Conocarpus L.                                                                                          |    15
Alvaradoa Liebm.                                                                                       |    15
Oxalis drummondii A. Gray                                                                              |    12
Lithospermum ruderale Douglas ex Lehm.                                                                 |    18
Infertility                                                                                            |    13
Ribes californicum Hook. & Arn.                                                                        |    13
Otitis                                                                                                 |    17
Sagittaria graminea Michx. var. weatherbiana (Fernald) Bogin                                           |    20
(1000 rows)
*/

--What's the doctor with the most patients?
SELECT first_name, last_name, count(*) AS num
FROM appointments, doctors
WHERE doctor_id = id
GROUP BY first_name, last_name
ORDER BY num DESC LIMIT 1;
/*
first_name | last_name | num
------------+-----------+-----
Claiborne  | Mordue    | 329
(1 row)
*/

--Which doctor is treating the largest number of unique illnesses?
SELECT first_name, last_name, count(DISTINCT illness_id) AS num
FROM appointments a, doctors d, diagnoses di
WHERE a.doctor_id = d.id AND a.patient_id = di.patient_id
GROUP BY first_name, last_name
ORDER BY num DESC LIMIT 1;
--output:
/*
first_name | last_name | num
------------+-----------+-----
Aggie      | McGroarty | 399
(1 row)
*/

--What illness is being treated with the largest number of unique treatments?
SELECT i.name, count(DISTINCT treatment_id) AS num
FROM illnesses i, treatment_plans tp, diagnoses di
WHERE di.illness_id = i.id AND tp.patient_id = di.patient_id
GROUP BY i.name
ORDER BY num DESC LIMIT 1;
--output:
/*
name     | num
-------------+-----
Kwashiorkor |  85
(1 row)
*/
