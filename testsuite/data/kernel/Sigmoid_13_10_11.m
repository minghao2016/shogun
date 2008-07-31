accuracy = 1e-09;
kernel_arg2_coef0 = 1.3;
kernel_arg0_size = 10;
init_random = 42;
kernel_arg1_gamma = 1.1;
name = 'Sigmoid';
data_type = 'double';
km_train = [0.999867016, 0.999417328, 0.999768656, 0.999872535, 0.999474068, 0.999892589, 0.999288741, 0.996699884, 0.99955862, 0.999726124, 0.999671225;0.999417328, 0.999935786, 0.999203168, 0.999852951, 0.999758954, 0.999938348, 0.998709698, 0.998456351, 0.999588502, 0.999808208, 0.999640321;0.999768656, 0.999203168, 0.999990615, 0.999938621, 0.999595855, 0.999953566, 0.999675933, 0.998547928, 0.999543734, 0.999904547, 0.999761394;0.999872535, 0.999852951, 0.999938621, 0.999990863, 0.999948709, 0.999987369, 0.999628129, 0.999474131, 0.999852171, 0.999932575, 0.9999022;0.999474068, 0.999758954, 0.999595855, 0.999948709, 0.999960119, 0.999926058, 0.996896927, 0.998848726, 0.99969583, 0.99934065, 0.999658641;0.999892589, 0.999938348, 0.999953566, 0.999987369, 0.999926058, 0.999999391, 0.999751343, 0.999258072, 0.999873569, 0.999958603, 0.999860086;0.999288741, 0.998709698, 0.999675933, 0.999628129, 0.996896927, 0.999751343, 0.999445018, 0.99663635, 0.998505739, 0.999780036, 0.999049036;0.996699884, 0.998456351, 0.998547928, 0.999474131, 0.998848726, 0.999258072, 0.99663635, 0.998953214, 0.996598669, 0.9989666, 0.999126557;0.99955862, 0.999588502, 0.999543734, 0.999852171, 0.99969583, 0.999873569, 0.998505739, 0.996598669, 0.999855073, 0.99970424, 0.999323403;0.999726124, 0.999808208, 0.999904547, 0.999932575, 0.99934065, 0.999958603, 0.999780036, 0.9989666, 0.99970424, 0.999978591, 0.999842027;0.999671225, 0.999640321, 0.999761394, 0.9999022, 0.999658641, 0.999860086, 0.999049036, 0.999126557, 0.999323403, 0.999842027, 0.999853865];
data_train = [0.649807286, 0.1639892, 0.987133009, 0.539696639, 0.557808138, 0.921124783, 0.360147054, 0.061591568, 0.478584349, 0.200313702, 0.268141651;0.260435648, 0.719236939, 0.94608732, 0.352625699, 0.00956585553, 0.992858812, 0.713925675, 0.469202972, 0.187033236, 0.820509276, 0.428645097;0.195168709, 0.936906849, 0.0587132344, 0.387396069, 0.766865038, 0.168198597, 0.218124876, 0.66341017, 0.673242002, 0.402456752, 0.461526833;0.426970978, 0.251190134, 0.25077858, 0.872379703, 0.463783719, 0.795620536, 0.433243149, 0.837802246, 0.1677085, 0.354721475, 0.642537168;0.518938144, 0.553354475, 0.331876467, 0.479591836, 0.389504568, 0.550604295, 0.0841794782, 0.143260764, 0.734582447, 0.552221819, 0.643920993;0.114936434, 0.545018825, 0.69834593, 0.970859772, 0.884431433, 0.788461368, 0.285592483, 0.484051839, 0.368156244, 0.777281893, 0.551282704;0.595323783, 0.11737322, 0.853555889, 0.678602672, 0.196732645, 0.425015142, 0.846939182, 0.307916559, 0.904223626, 0.944948437, 0.376614375;0.787848996, 0.789120168, 0.519268141, 0.9431184, 0.965815237, 0.748753589, 0.365448384, 0.180708281, 0.71663358, 0.228855415, 0.422597893;0.295276697, 0.411569653, 0.0961175136, 0.32008565, 0.660638037, 0.963074714, 0.0685383895, 0.339769592, 0.491674884, 0.24348578, 0.285322304;0.719397126, 0.724965849, 0.0109450612, 0.414559968, 0.0902110526, 0.740629756, 0.67327959, 0.0503255765, 0.330625472, 0.851442734, 0.457934082;0.785716175, 0.318294948, 0.924131565, 0.532730278, 0.522663291, 0.0268868531, 0.518142633, 0.62118506, 0.219714301, 0.616900294, 0.967322847];
feature_class = 'simple';
data_test = [0.17531088, 0.935396475, 0.013313455, 0.676474303, 0.479568895, 0.252440169, 0.244507802, 0.700054058, 0.945088, 0.312053482, 0.207639379, 0.0447296942, 0.326255873, 0.641124008, 0.717200229, 0.701411819, 0.335752438;0.581777565, 0.366137385, 0.687859861, 0.471234257, 0.0444145989, 0.516945859, 0.946376974, 0.311012238, 0.315782705, 0.710627053, 0.16391138, 0.661550193, 0.34892085, 0.365167064, 0.600421689, 0.219462296, 0.382066631;0.04741067, 0.352977371, 0.257485372, 0.752051882, 0.311691801, 0.076730295, 0.872630385, 0.793096044, 0.6336215, 0.955796247, 0.768301141, 0.796606113, 0.998724513, 0.306664013, 0.761698836, 0.0584160102, 0.592036005;0.134561488, 0.419614163, 0.781833833, 0.823057426, 0.517443789, 0.219583576, 0.23352486, 0.350917366, 0.641468916, 0.0346871731, 0.924894741, 0.60329286, 0.118715565, 0.540245933, 0.449273766, 0.681772887, 0.46183746;0.780953533, 0.575366733, 0.219016613, 0.252173656, 0.309208294, 0.0583499238, 0.359158759, 0.427318369, 0.885283267, 0.420005974, 0.391111662, 0.335096735, 0.0204881712, 0.886829871, 0.606959377, 0.200556124, 0.464317461;0.200736203, 0.852107351, 0.312437397, 0.985366241, 0.537830301, 0.681072431, 0.808189891, 0.978195213, 0.339099919, 0.397233094, 0.134444977, 0.63838246, 0.976342115, 0.0638991541, 0.299824273, 0.0192020438, 0.911778114;0.718411058, 0.650629129, 0.0619232157, 0.377676929, 0.659367927, 0.976804697, 0.998095652, 0.398793082, 0.342893286, 0.381099617, 0.620599361, 0.875909997, 0.936762219, 0.692665051, 0.92146512, 0.887857671, 0.982304067;0.528212729, 0.925206379, 0.136926047, 0.358306882, 0.151523562, 0.584888108, 0.488643775, 0.54429678, 0.213255151, 0.893319866, 0.496669379, 0.647092945, 0.0908647345, 0.234321629, 0.521137815, 0.102166918, 0.0693036669;0.71675202, 0.817263198, 0.50043892, 0.580687064, 0.348664339, 0.364326591, 0.196506214, 0.278711636, 0.722382723, 0.75737485, 0.365297197, 0.929381066, 0.106817437, 0.609719774, 0.292591349, 0.610310931, 0.684236679;0.71405868, 0.851959697, 0.174883241, 0.452900847, 0.720235346, 0.0673393502, 0.23675272, 0.703124907, 0.235181921, 0.418691235, 0.234693828, 0.5743297, 0.0582528956, 0.97121059, 0.959084545, 0.87874054, 0.636523913;0.587790616, 0.293021639, 0.0918957532, 0.763202695, 0.295777748, 0.305297719, 0.345612349, 0.416597092, 0.133910793, 0.811942983, 0.740258173, 0.0589915721, 0.520603112, 0.950341641, 0.184391191, 0.273320064, 0.941968126];
km_test = [0.99968035, 0.999939538, 0.989727761, 0.999752994, 0.99880696, 0.997984825, 0.999297847, 0.999654691, 0.999325762, 0.9997726, 0.999468103, 0.999540903, 0.997065214, 0.999931568, 0.999867761, 0.999465672, 0.999804769;0.99947724, 0.999931145, 0.996503378, 0.999862543, 0.997982154, 0.997269142, 0.999838371, 0.999861797, 0.999432526, 0.999938233, 0.999267835, 0.999905505, 0.998941389, 0.999712761, 0.999888199, 0.99704762, 0.999782869;0.999579437, 0.999943115, 0.993557259, 0.999918094, 0.998530747, 0.999648411, 0.999911766, 0.999792216, 0.999467598, 0.999830118, 0.999192573, 0.99957212, 0.999663383, 0.999848585, 0.999841503, 0.999028676, 0.999925243;0.9997058, 0.999989045, 0.997693402, 0.999977244, 0.999587178, 0.99965033, 0.999924529, 0.999950792, 0.999804133, 0.999907724, 0.999834452, 0.999951053, 0.99968928, 0.999905889, 0.999942876, 0.999504571, 0.999963085;0.99877464, 0.99996202, 0.99422228, 0.999940237, 0.998434394, 0.998521049, 0.999670531, 0.999887313, 0.999686417, 0.999905423, 0.999571228, 0.999841723, 0.999390071, 0.999511308, 0.999657934, 0.996830824, 0.999840802;0.999912065, 0.999997531, 0.999352135, 0.999983256, 0.999696549, 0.999660854, 0.999932196, 0.999961208, 0.999959865, 0.999948115, 0.999627256, 0.999984886, 0.999091731, 0.999963277, 0.999981705, 0.999881244, 0.999961642;0.999070429, 0.999699425, 0.991539576, 0.999506794, 0.997975653, 0.99833421, 0.999602252, 0.999173471, 0.997165305, 0.999236756, 0.998553895, 0.999505734, 0.998400644, 0.999646579, 0.999757289, 0.999066405, 0.999714721;0.995595949, 0.998773694, 0.995724442, 0.99971243, 0.995253693, 0.995149789, 0.9991839, 0.99870098, 0.997919685, 0.999117578, 0.999195783, 0.999354637, 0.998501171, 0.998621367, 0.998471149, 0.994623646, 0.999565709;0.999554494, 0.999941022, 0.989306402, 0.999690025, 0.998657451, 0.998747349, 0.99979142, 0.999732072, 0.999646648, 0.999823049, 0.999360401, 0.999863816, 0.999221055, 0.999784683, 0.999897402, 0.998855409, 0.999829299;0.999841866, 0.99995576, 0.996695786, 0.999926332, 0.999478146, 0.999439764, 0.999946452, 0.999886036, 0.999412773, 0.999866852, 0.999490342, 0.999932006, 0.999730258, 0.999940048, 0.999952908, 0.999553331, 0.99997669;0.999525747, 0.999876373, 0.99585461, 0.999910451, 0.998682025, 0.997846536, 0.999673627, 0.999754603, 0.999410178, 0.999821131, 0.999666467, 0.999691172, 0.999010344, 0.999900335, 0.999756042, 0.998554684, 0.999920243];
data_class = 'rand';
feature_type = 'Real';
