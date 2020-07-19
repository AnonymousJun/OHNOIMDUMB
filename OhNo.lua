-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
----  █████╗ ███████╗███████╗██╗   ██╗██╗  ██╗██╗██╗███████╗     █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗ ----
---- ██╔══██╗██╔════╝██╔════╝██║   ██║██║  ██║██║██║██╔════╝    ██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║ ----
---- ███████║█████╗  ███████╗██║   ██║███████║██║██║███████╗    ███████║██║  ██║██╔████╔██║██║██╔██╗ ██║ ----
---- ██╔══██║██╔══╝  ╚════██║██║   ██║██╔══██║██║██║╚════██║    ██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║ ----
---- ██║  ██║███████╗███████║╚██████╔╝██║  ██║██║██║███████║    ██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║ ----
---- ╚═╝  ╚═╝╚══════╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝╚══════╝    ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝ ----
-------------------------------------------------------------------------------------------------------------
-----------------------------------------xdd#1721--------------------------------------------------------
-------------------------------------------------------------------------------------------------------------

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local char = Player.Character
local work = game.Workspace
local light = game.Lighting
local HTService = game:GetService("HttpService")
 
local gPlayers = game:GetService("Players")
local admin = gPlayers.LocalPlayer.Name
local adminId = gPlayers.LocalPlayer.UserId
 
local services = {}
local cmds = {}
local std = {}
 
local Version = '1'
 
wait(0.1)
 
services.players = gPlayers
services.lighting=game:GetService('Lighting')
services.workspace=game:GetService('Workspace')
services.events = {}
 
local cmdprefix = ''
local split = " "
local loopTo = false
local loopNW = false
local loopNC = false
local loopBG = false
local loopMR = false
local loopCoins = false
local loopBounty = false
local loopGod = false

local locs = {}
local locName
local count = 0
 
--| CMD List |--
 
CMDs = {"fly","admin","eyecolor","mouth","hairtyp","lto","unlto","to","ctp","zoom","names","ramen","dojo","arena","hokchair","hokgate","rpleaf","rpmist","rpsand","rpcloud","rpstone","rpmemstone","rpfod","hfinalv","mfinalv","rnarub","lnarub","rsamb","lsamb","mlgate","tpleaf","tpmist","tpcloud","tpsand","tprock","wzetsu","rpworld","arenax","memstone","sworld","haircolor","band","rlight","bandsymb","eye","lnowep","unlnowep","lnocomp","unlnocomp","level","nocomp","Got","unwep","Got","nomask","smask","csmask","kagehat","ckagehat","nemask","cnemask","hnmask","chnmask","remask","cremask","pemask","cpemask","bmomask","momask","cmomask","god","unlnowep","up","r","t","y","f","g","h","v","b","n","z","c","perm","fix","sz","sc","bgod","unbgod","novill","kgglit2","orbs","kgglit1","clan","treset","vill","noclan","mreset1","unmreset1","mreset","spins","lcoins","unlcoins","coins","bounty","belt","goggles","spiral","akhat","guard","fur","gourd","lbounty","unlbounty","pain","kakashi","itachi","nagato","minato","tail1","tail2","tail3","tail4","tail5","tail6","tail7","tail8","tail9","6pains","oldnar","oldsas","nar","sas","pug","zab","jkakashi","gaara","haku","mad","save","wind","wind2","wind3","wind4","wind5","wind6","fire","fire2","fire3","fire4","fire5","fire6","sand","sand2","sand3","sand4","sand5","sand6","lightning","lightning2","lightning3","lightning4","lightning5","lightning6","dust","dust2","dust3","dust4","dust5","dust6","gold","gold2","gold3","gold4","gold5","gold6","earth","earth2","earth3","earth4","earth5","earth6","water","water2","water3","water4","water5","water6","yin","yin2","yin3","yin4","yin5","yin6","yang","yang2","yang3","yang4","yang5","yang6","sound","sound2","sound3","sound4","sound5","sound6","iron","iron2","iron3","iron4","iron5","iron6","mkook","rkook","tkook","ykook","fkook","gkook","hkook","vkook","bkook","nkook","mdeidara","rdeidara","tdeidara","ydeidara","fdeidara","gdeidara","hdeidara","vdeidara","bdeidara","ndeidara","mbubble","rbubble","tbubble","ybubble","fbubble","gbubble","hbubble","vbubble","bbubble","nbubble","mshisus","rshisus","tshisus","yshisus","fshisus","gshisus","hshisus","vshisus","bshisus","nshisus","mitsus","ritsus","titsus","yitsus","fitsus","gitsus","hitsus","vitsus","bitsus","nitsus","msasems","rsasems","tsasems","ysasems","fsasems","gsasems","hsasems","vsasems","bsasems","nsasems","mboil","rboil","tboil","yboil","fboil","gboil","hboil","vboil","bboil","nboil","mblackflam","rblackflam","tblackflam","yblackflam","fblackflam","gblackflam","hblackflam","vblackflam","bblackflam","nblackflam","mmadrinne","rmadrinne","tmadrinne","ymadrinne","fmadrinne","gmadrinne","hmadrinne","vmadrinne","bmadrinne","nmadrinne","msasfsus","rsasfsus","tsasfsus","ysasfsus","fsasfsus","gsasfsus","hsasfsus","vsasfsus","bsasfsus","nsasfsus","mobrinne","robrinne","tobrinne","yobrinne","fobrinne","gobrinne","hobrinne","vobrinne","bobrinne","nobrinne","mshar","rshar","tshar","yshar","fshar","gshar","hshar","vshar","bshar","nshar","mbyaku","rbyaku","tbyaku","ybyaku","fbyaku","gbyaku","hbyaku","vbyaku","bbyaku","nbyaku","mketsury","rketsury","tketsury","yketsury","fketsury","gketsury","hketsury","vketsury","bketsury","nketsury","mitshar","ritshar","titshar","yitshar","fitshar","gitshar","hitshar","vitshar","bitshar","nitshar","mnagrinne","rnagrinne","tnagrinne","ynagrinne","fnagrinne","gnagrinne","hnagrinne","vnagrinne","bnagrinne","nnagrinne","mshishar","rshishar","tshishar","yshishar","fshishar","gshishar","hshishar","vshishar","bshishar","nshishar","mtensei","rtensei","ttensei","ytensei","ftensei","gtensei","htensei","vtensei","btensei","ntensei","myinyang","ryinyang","tyinyang","yyinyang","fyinyang","gyinyang","hyinyang","vyinyang","byinyang","nyinyang","msasshar","rsasshar","tsasshar","ysasshar","fsasshar","gsasshar","hsasshar","vsasshar","bsasshar","nsasshar","minuzuka","rinuzuka","tinuzuka","yinuzuka","finuzuka","ginuzuka","hinuzuka","vinuzuka","binuzuka","ninuzuka","mmadshar","rmadshar","tmadshar","ymadshar","fmadshar","gmadshar","hmadshar","vmadshar","bmadshar","nmadshar","mkaguya","rkaguya","tkaguya","ykaguya","fkaguya","gkaguya","hkaguya","vkaguya","bkaguya","nkaguya","mobshar","robshar","tobshar","yobshar","fobshar","gobshar","hobshar","vobshar","bobshar","nobshar","mitshar2","ritshar2","titshar2","yitshar2","fitshar2","gitshar2","hitshar2","vitshar2","bitshar2","nitshar2","msasshar2","rsasshar2","tsasshar2","ysasshar2","fsasshar2","gsasshar2","hsasshar2","vsasshar2","bsasshar2","nsasshar2","mblacklightn","rblacklightn","tblacklightn","yblacklightn","fblacklightn","gblacklightn","hblacklightn","vblacklightn","bblacklightn","nblacklightn","mpuppet","rpuppet","tpuppet","ypuppet","fpuppet","gpuppet","hpuppet","vpuppet","bpuppet","npuppet","mdarkrele","rdarkrele","tdarkrele","ydarkrele","fdarkrele","gdarkrele","hdarkrele","vdarkrele","bdarkrele","ndarkrele","mfidgetshar","rfidgetshar","tfidgetshar","yfidgetshar","ffidgetshar","gfidgetshar","hfidgetshar","vfidgetshar","bfidgetshar","nfidgetshar","mbyaku2","rbyaku2","tbyaku2","ybyaku2","fbyaku2","gbyaku2","hbyaku2","vbyaku2","bbyaku2","nbyaku2","mpaper","rpaper","tpaper","ypaper","fpaper","gpaper","hpaper","vpaper","bpaper","npaper","rpapera","tpapera","ypapera","fpapera","gpapera","hpapera","vpapera","bpapera","npapera","rpaperb","tpaperb","ypaperb","fpaperb","gpaperb","hpaperb","vpaperb","bpaperb","npaperb","mbolt","rbolt","tbolt","ybolt","fbolt","gbolt","hbolt","vbolt","bbolt","nbolt","mcaringan","rcaringan","tcaringan","ycaringan","fcaringan","gcaringan","hcaringan","vcaringan","bcaringan","ncaringan","mredhaze","rredhaze","tredhaze","yredhaze","fredhaze","gredhaze","hredhaze","vredhaze","bredhaze","nredhaze","rkooka","tkooka","ykooka","fkooka","gkooka","hkooka","vkooka","bkooka","nkooka","rkookb","tkookb","ykookb","fkookb","gkookb","hkookb","vkookb","bkookb","nkookb","rdeidaraa","tdeidaraa","ydeidaraa","fdeidaraa","gdeidaraa","hdeidaraa","vdeidaraa","bdeidaraa","ndeidaraa","rdeidarab","tdeidarab","ydeidarab","fdeidarab","gdeidarab","hdeidarab","vdeidarab","bdeidarab","ndeidarab","rbubblea","tbubblea","ybubblea","fbubblea","gbubblea","hbubblea","vbubblea","bbubblea","nbubblea","rbubbleb","tbubbleb","ybubbleb","fbubbleb","gbubbleb","hbubbleb","vbubbleb","bbubbleb","nbubbleb","rshisuisusa","tshisuisusa","yshisuisusa","fshisuisusa","gshisuisusa","hshisuisusa","vshisuisusa","bshisuisusa","nshisuisusa","rshisuisusb","tshisuisusb","yshisuisusb","fshisuisusb","gshisuisusb","hshisuisusb","vshisuisusb","bshisuisusb","nshisuisusb","ritsusa","titsusa","yitsusa","fitsusa","gitsusa","hitsusa","vitsusa","bitsusa","nitsusa","ritsusb","titsusb","yitsusb","fitsusb","gitsusb","hitsusb","vitsusb","bitsusb","nitsusb","rsasemsa","tsasemsa","ysasemsa","fsasemsa","gsasemsa","hsasemsa","vsasemsa","bsasemsa","nsasemsa","rsasemsb","tsasemsb","ysasemsb","fsasemsb","gsasemsb","hsasemsb","vsasemsb","bsasemsb","nsasemsb","rboila","tboila","yboila","fboila","gboila","hboila","vboila","bboila","nboila","rboilb","tboilb","yboilb","fboilb","gboilb","hboilb","vboilb","bboilb","nboilb","rblackflama","tblackflama","yblackflama","fblackflama","gblackflama","hblackflama","vblackflama","bblackflama","nblackflama","rblackflamb","tblackflamb","yblackflamb","fblackflamb","gblackflamb","hblackflamb","vblackflamb","bblackflamb","nblackflamb","rmadrinnea","tmadrinnea","ymadrinnea","fmadrinnea","gmadrinnea","hmadrinnea","vmadrinnea","bmadrinnea","nmadrinnea","rmadrinneb","tmadrinneb","ymadrinneb","fmadrinneb","gmadrinneb","hmadrinneb","vmadrinneb","bmadrinneb","nmadrinneb","rsasfsusa","tsasfsusa","ysasfsusa","fsasfsusa","gsasfsusa","hsasfsusa","vsasfsusa","bsasfsusa","nsasfsusa","rsasfsusb","tsasfsusb","ysasfsusb","fsasfsusb","gsasfsusb","hsasfsusb","vsasfsusb","bsasfsusb","nsasfsusb","robrinnea","tobrinnea","yobrinnea","fobrinnea","gobrinnea","hobrinnea","vobrinnea","bobrinnea","nobrinnea","robrinneb","tobrinneb","yobrinneb","fobrinneb","gobrinneb","hobrinneb","vobrinneb","bobrinneb","nobrinneb","rshara","tshara","yshara","fshara","gshara","hshara","vshara","bshara","nshara","rsharb","tsharb","ysharb","fsharb","gsharb","hsharb","vsharb","bsharb","nsharb","rlavaa","tlavaa","ylavaa","flavaa","glavaa","hlavaa","vlavaa","blavaa","nlavaa","rlavab","tlavab","ysharb","flavab","glavab","hlavab","vlavab","blavab","nsharb","rlavac","tlavac","ylavac","flavac","glavac","hlavac","vlavac","blavac","nlavac","rwooda","twooda","ywooda","fwooda","gwooda","hwooda","vwooda","bwooda","nwooda","rwoodb","twoodb","ywoodb","fwoodb","gwoodb","hwoodb","vwoodb","bwoodb","nwoodb","rwoodc","twoodc","ywoodc","fwoodc","gwoodc","hwoodc","vwoodc","bwoodc","nwoodc","rbyaka","tbyaka","ybyaka","fbyaka","gbyaka","hbyaka","vbyaka","bbyaka","nbyaka","rbyakb","tbyakb","ybyakb","fbyakb","gbyakb","hbyakb","vbyakb","bbyakb","nbyakb","rcrystala","tcrystala","ycrystala","fcrystala","gcrystala","hcrystala","vcrystala","bcrystala","ncrystala","rcrystalb","tcrystalb","ycrystalb","fcrystalb","gcrystalb","hcrystalb","vcrystalb","bcrystalb","ncrystalb","rcrystalc","tcrystalc","ycrystalc","fcrystalc","gcrystalc","hcrystalc","vcrystalc","bcrystalc","ncrystalc","rexplosa","texplosa","yexplosa","fexplosa","gexplosa","hexplosa","vexplosa","bexplosa","nexplosa","rexplosb","texplosb","yexplosb","fexplosb","gexplosb","hexplosb","vexplosb","bexplosb","nexplosb","rexplosc","texplosc","yexplosc","fexplosc","gexplosc","hexplosc","vexplosc","bexplosc","nexplosc","rscorcha","tscorcha","yscorcha","fscorcha","gscorcha","hscorcha","vscorcha","bscorcha","nscorcha","rscorchb","tscorchb","yscorchb","fscorchb","gscorchb","hscorchb","vscorchb","bscorchb","nscorchb","rscorchc","tscorchc","yscorchc","fscorchc","gscorchc","hscorchc","vscorchc","bscorchc","nscorchc","rketsurya","tketsurya","yketsurya","fketsurya","gketsurya","hketsurya","vketsurya","bketsurya","nketsurya","rketsuryb","tketsuryb","yketsuryb","fketsuryb","gketsuryb","hketsuryb","vketsuryb","bketsuryb","nketsuryb","ritshara","titshara","yitshara","fitshara","gitshara","hitshara","vitshara","bitshara","nitshara","ritsharb","titsharb","yitsharb","fitsharb","gitsharb","hitsharb","vitsharb","bitsharb","nitsharb","rnagrinnea","tnagrinnea","ynagrinnea","fnagrinnea","gnagrinnea","hnagrinnea","vnagrinnea","bnagrinnea","nnagrinnea","rnagrinneb","tnagrinneb","ynagrinneb","fnagrinneb","gnagrinneb","hnagrinneb","vnagrinneb","bnagrinneb","nnagrinneb","rshisuishara","tshisuishara","yshisuishara","fshisuishara","gshisuishara","hshisuishara","vshisuishara","bshisuishara","nshisuishara","rshisuisharb","tshisuisharb","yshisuisharb","fshisuisharb","gshisuisharb","hshisuisharb","vshisuisharb","bshisuisharb","nshisuisharb","rtenseia","ttenseia","ytenseia","ftenseia","gtenseia","htenseia","vtenseia","btenseia","ntenseia","rtenseib","ttenseib","ytenseib","ftenseib","gtenseib","htenseib","vtenseib","btenseib","ntenseib","ryinyanga","tyinyanga","yyinyanga","fyinyanga","gyinyanga","hyinyanga","vyinyanga","byinyanga","nyinyanga","ryinyangb","tyinyangb","yyinyangb","fyinyangb","gyinyangb","hyinyangb","vyinyangb","byinyangb","nyinyangb","rsasshara","tsasshara","ysasshara","fsasshara","gsasshara","hsasshara","vsasshara","bsasshara","nsasshara","rsassharb","tsassharb","ysassharb","fsassharb","gsassharb","hsassharb","vsassharb","bsassharb","nsassharb","rnaraa","tnaraa","ynaraa","fnaraa","gnaraa","hnaraa","vnaraa","bnaraa","nnaraa","rnarab","tnarab","ynarab","fnarab","gnarab","hnarab","vnarab","bnarab","nnarab","rnarac","tnarac","ynarac","fnarac","gnarac","hnarac","vnarac","bnarac","nnarac","rhozukia","thozukia","yhozukia","fhozukia","ghozukia","hhozukia","vhozukia","bhozukia","nhozukia","rhozukib","thozukib","ysharb","fhozukib","ghozukib","hhozukib","vhozukib","bhozukib","bhozukib","mmads","rmads","tmads","ymads","fmads","gmads","hmads","vmads","bmads","nmads","rmadsa","tmadsa","ymadsa","fmadsa","gmadsa","hmadsa","vmadsa","bmadsa","nmadsa","rmadsb","tmadsb","ymadsb","fmadsb","gmadsb","hmadsb","vmadsb","bmadsb","nmadsb","mnothing","rnothing","tnothing","ynothing","fnothing","gnothing","hnothing","vnothing","bnothing","nnothing","rnothinga","tnothinga","ynothinga","fnothinga","gnothinga","hnothinga","vnothinga","bnothinga","nnothinga","rnothingb","tnothingb","ynothingb","fnothingb","gnothingb","hnothingb","vnothingb","bnothingb","nnothingb","rhozukic","thozukic","yhozukic","fhozukic","ghozukic","hhozukic","vhozukic","bhozukic","nhozukic","rsenjuwooda","tsenjuwooda","ysenjuwooda","fsenjuwooda","gsenjuwooda","hsenjuwooda","vsenjuwooda","bsenjuwooda","nsenjuwooda","rsenjuwoodb","tsenjuwoodb","ysenjuwoodb","fsenjuwoodb","gsenjuwoodb","hsenjuwoodb","vsenjuwoodb","bsenjuwoodb","bsenjuwoodb","rsenjuwoodc","tsenjuwoodc","ysenjuwoodc","fsenjuwoodc","gsenjuwoodc","hsenjuwoodc","vsenjuwoodc","bsenjuwoodc","nsenjuwoodc","rinuzukaa","tinuzukaa","yinuzukaa","finuzukaa","ginuzukaa","hinuzukaa","vinuzukaa","binuzukaa","ninuzukaa","rinuzukab","tinuzukab","yinuzukab","finuzukab","ginuzukab","hinuzukab","vinuzukab","binuzukab","ninuzukab","rmadshara","tmadshara","ymadshara","fmadshara","gmadshara","hmadshara","vmadshara","bmadshara","nmadshara","madsharb","tmadsharb","ymadsharb","fmadsharb","gmadsharb","hmadsharb","vmadsharb","bmadsharb","nmadsharb","rkaguyaa","tkaguyaa","ykaguyaa","fkaguyaa","gkaguyaa","hkaguyaa","vkaguyaa","bkaguyaa","nkaguyaa","rkaguyab","tkaguyab","ykaguyab","fkaguyab","gkaguyab","hkaguyab","vkaguyab","bkaguyab","nkaguyab","robshara","tobshara","yobshara","fobshara","gobshara","hobshara","vobshara","bobshara","nobshara","robsharb","tobsharb","yobsharb","fobsharb","gobsharb","hobsharb","vobsharb","bobsharb","nobsharb","raburamea","taburamea","yaburamea","faburamea","gaburamea","haburamea","vaburamea","baburamea","naburamea","raburameb","taburameb","yaburameb","faburameb","gaburameb","haburameb","vaburameb","baburameb","naburameb","raburamec","taburamec","yaburamec","faburamec","gaburamec","haburamec","vaburamec","baburamec","naburamec","ritshara2","titshara2","yitshara2","fitshara2","gitshara2","hitshara2","vitshara2","bitshara2","nitshara2","ritsharb2","titsharb2","yitsharb2","fitsharb2","gitsharb2","hitsharb2","vitsharb2","bitsharb2","nitsharb2","rsasshara2","tsasshara2","ysasshara2","fsasshara2","gsasshara2","hsasshara2","vsasshara2","bsasshara2","nsasshara2","rsassharb2","tsassharb2","ysassharb2","fsassharb2","gsassharb2","hsassharb2","vsassharb2","bsassharb2","nsassharb2","rblacklightna","tblacklightna","yblacklightna","fblacklightna","gblacklightna","hblacklightna","vblacklightna","bblacklightna","nblacklightna","rblacklightnb","tblacklightnb","yblacklightnb","fblacklightnb","gblacklightnb","hblacklightnb","vblacklightnb","bblacklightnb","nblacklightnb","rpuppeta","tpuppeta","ypuppeta","fpuppeta","gpuppeta","hpuppeta","vpuppeta","bpuppeta","npuppeta","rpuppetb","tpuppetb","ypuppetb","fpuppetb","gpuppetb","hpuppetb","vpuppetb","bpuppetb","npuppetb","rdarkrelea","tdarkrelea","ydarkrelea","fdarkrelea","gdarkrelea","hdarkrelea","vdarkrelea","bdarkrelea","ndarkrelea","rdarkreleb","tdarkreleb","ydarkreleb","fdarkreleb","gdarkreleb","hdarkreleb","vdarkreleb","bdarkreleb","ndarkreleb","rfidgetshara","tfidgetshara","yfidgetshara","ffidgetshara","gfidgetshara","hfidgetshara","vfidgetshara","bfidgetshara","nfidgetshara","rfidgetsharb","tfidgetsharb","yfidgetsharb","ffidgetsharb","gfidgetsharb","hfidgetsharb","vfidgetsharb","bfidgetsharb","nfidgetsharb","rbyakua2","tbyakua2","ybyakua2","fbyakua2","gbyakua2","hbyakua2","vbyakua2","bbyakua2","nbyakua2","rbyakub2","tbyakub2","ybyakub2","fbyakub2","gbyakub2","hbyakub2","vbyakub2","bbyakub2","nbyakub2","rstorma","tstorma","ystorma","fstorma","gstorma","hstorma","vstorma","bstorma","nstorma","rstormb","tstormb","ysharb","fstormb","gstormb","hstormb","vstormb","bstormb","nsharb","rstormc","tstormc","ystormc","fstormc","gstormc","hstormc","vstormc","bstormc","nstormc","ricea","ticea","yicea","ficea","gicea","hicea","vicea","bicea","nicea","riceb","ticeb","ysharb","ficeb","giceb","hiceb","viceb","biceb","nsharb","ricec","ticec","yicec","ficec","gicec","hicec","vicec","bicec","nicec","rpurplea","tpurplea","ypurplea","fpurplea","gpurplea","hpurplea","vpurplea","bpurplea","npurplea","rpurpleb","tpurpleb","ypurpleb","fpurpleb","gpurpleb","hpurpleb","vpurpleb","bpurpleb","npurpleb","rpurplec","tpurplec","ypurplec","fpurplec","gpurplec","hpurplec","vpurplec","bpurplec","npurplec","rcaringana","tcaringana","ycaringana","fcaringana","gcaringana","hcaringana","vcaringana","bcaringana","ncaringana","rcaringanb","tcaringanb","ycaringanb","fcaringanb","gcaringanb","hcaringanb","vcaringanb","bcaringanb","ncaringanb","rredhazea","tredhazea","yredhazea","fredhazea","gredhazea","hredhazea","vredhazea","bredhazea","nredhazea","rredhazeb","tredhazeb","yredhazeb","fredhazeb","gredhazeb","hredhazeb","vredhazeb","bredhazeb","nredhazeb","madsword","staff","srsword","paper","rjin","tjin","yjin","fjin","gjin","hjin","vjin","bjin","njin","rcurse","tcurse","ycurse","fcurse","gcurse","hcurse","vcurse","bcurse","ncurse","rdragon","tdragon","ydragon","fdragon","gdragon","hdragon","vdragon","bdragon","ndragon","rslug","tslug","yslug","fslug","gslug","hslug","vslug","bslug","nslug","rtoad","ttoad","ytoad","ftoad","gtoad","htoad","vtoad","btoad","ntoad","rdynentry","tdynentry","ydynentry","fdynentry","gdynentry","hdynentry","vdynentry","bdynentry","ndynentry","rdynastun","tdynastun","ydynastun","fdynastun","gdynastun","hdynastun","vdynastun","bdynastun","ndynastun","rleafhurr","tleafhurr","yleafhurr","fleafhurr","gleafhurr","hleafhurr","vleafhurr","bleafhurr","nleafhurr","rdragfcom","tdragfcom","ydragfcom","fdragfcom","gdragfcom","hdragfcom","vdragfcom","bdragfcom","ndragfcom","rfinflick","tfinflick","yfinflick","ffinflick","gfinflick","hfinflick","vfinflick","bfinflick","nfinflick","rflamfis","tflamfis","yflamfis","fflamfis","gflamfis","hflamfis","vflamfis","bflamfis","nflamfis","rprimalot","tprimalot","yprimalot","fprimalot","gprimalot","hprimalot","vprimalot","bprimalot","nprimalot","rleafww","tleafww","yleafww","fleafww","gleafww","hleafww","vleafww","bleafww","nleafww","rsevenh","tsevenh","ysevenh","fsevenh","gsevenh","hsevenh","vsevenh","bsevenh","nsevenh","rlightc","tlightc","ylightc","flightc","glightc","hlightc","vlightc","blightc","nlightc","rbijuu","tbijuu","ybijuu","fbijuu","gbijuu","hbijuu","vbijuu","bbijuu","nbijuu","rbijuua","tbijuua","ybijuua","fbijuua","gbijuua","hbijuua","vbijuua","bbijuua","nbijuua","rgates","tgates","ygates","fgates","ggates","hgates","vgates","bgates","ngates","version"}

local hairs = {"hair7","hair6","hair30","hair27","hair25","hair36","hair24","hair23","hair35","hair40","hair32","hair33","hair31","hair34","hair22","hair29","hair28","hair26","hair37","hair38","hair39","hair2","hair20","hair13","hair9","hair5","hair19","hair17","hair18","hair16","hair3","hair15","hair1","hair4","hair12","hair14","hair11","hair10","hair21","hair8","book","blockof","hair16","Haku","Sakura","Tsunade","Ino","Kakashi","Itachi","Sasuke","Naruto","NarutoShip","SasukeGaiden","Shikamaru","Hinata","Gaara","Minato","SasukeLast","TenTen","Shisui","Sai","NarutoPTS","Boruto","Jugo","Karin","Madara","Orochimaru","Suigetsu","23","9","3","15","14","10","4","25","8","5","12","1","11","19","17","6","13","16","7","20","2","18","22","24","21","27","26","28","30","31","29","32","33","34","kakashia","min","hokage","tsuchikage","raikage","mizukage","kazekage","akat","samu"}

adminT = {admin}
modT = {admin}

--| Lib |--

function updateevents()
for i, v in pairs(gPlayers:GetChildren()) do
local c = v.Chatted:connect(function(M)
do_exec(M, v)
end)
table.insert(services.events, c)
end
end

function FindTable(Table, Name)
	for i,v in pairs(Table) do
		if v == Name then
			return true
		end end
	return false
end

function GetInTable(Table, Name)
	for i = 1, #Table do
		if Table[i] == Name then
			return i
		end end
return false end
 
std.inTable=function(tbl,val)
    if tbl==nil then return false end
 
    for _,v in pairs(tbl)do
        if v==val then return true end
    end
    return false
end
 
std.out=function(str)
    print(str)
end
 
std.list=function(tbl)
    local str=''
    for i,v in pairs(tbl)do
        str=str..tostring(v)
        if i~=#tbl then str=str..', ' end
    end
    return str
end

std.endat=function(str,val)
    local z=str:find(val)
    if z then
        return str:sub(0,z-string.len(val)),true
    else
        return str,false
    end
end

std.first=function(str) return str:sub(1,1) end

isStaff = function(plr)
for _, ad in pairs(adminT) do
if type(ad) == "string" and string.lower(ad) == string.lower(plr.Name) then
return true
elseif type(ad) == "number" and ad == plr.UserId then
return true
end
end
for _, mod in pairs(modT) do
if type(ad) == "string" and string.lower(mod) == string.lower(plr.Name) then
return true
elseif type(mod) == "number" and mod == plr.UserId then
return true
end
end
return false
end

isAdmin = function(plr)
for _, ad in pairs(adminT) do
if type(ad) == "string" and string.lower(ad) == string.lower(plr.Name) then
return true
elseif type(ad) == "number" and ad == plr.UserId then
return true
end
end
return false
end

local exec=function(str)
    spawn(function()
        local script, loaderr = loadstring(str)
        if not script then
            error(loaderr)
        else
            script()
        end
    end)
end
 
local findCmd=function(cmd_name)
    for i,v in pairs(cmds)do
        if v.NAME:lower()==cmd_name:lower() or std.inTable(v.ALIAS,cmd_name:lower()) then
            return v
        end
    end
end
 
local getCmd=function(msg)
    local cmd,hassplit=std.endat(msg:lower(),split)
    if hassplit then
        return {cmd,true}
    else
        return {cmd,false}
    end
end
 
local getprfx=function(strn)
    if strn:sub(1,string.len(cmdprefix))==cmdprefix then return{'cmd',string.len(cmdprefix)+1}
	end return
end
 
local getArgs=function(str)
    local args = {}
    local new_arg = nil
    local hassplit = nil
    local s = str
    repeat
        new_arg, hassplit = std.endat(s, split)
        if new_arg ~= '' then
            args[#args+1]=new_arg
            s=s:sub(string.len(new_arg) + string.len(split) +1)
        end
    until hassplit == false
    return args
end
 
local function execCmd(str, plr)
    local s_cmd
    local a
    local cmd
    s_cmd = getCmd(str)
    cmd = findCmd(s_cmd[1])
    if cmd == nil then return end
    a = str:sub(string.len(s_cmd[1]) + string.len(split) + 1)
    local args = getArgs(a)
 
    pcall(function()
		cmd.FUNC(args, plr)
    end)
end

function do_exec(str, plr)

	if not isStaff(plr) then return end
   
    str = str:gsub('/e ','')
 
    local t = getprfx(str)
    if t == nil then return end
    str = str:sub(t[2])
    if t[1] == 'cmd' then
        execCmd(str, plr)
    end
end
 
updateevents()
_G.exec_cmd = execCmd
--game.Players.LocalPlayer.Chatted:connect(doexec)
 
local _char = function(plr_name)
    for i, v in pairs(game.Players:GetChildren())do
        if v:IsA'Player'then
            if v.Name == plr_name then return v.Character end
        end
    end
    return
end
 
local _plr=function(plr_name)
    for i,v in pairs(game.Players:GetChildren())do
        if v:IsA'Player'then
            if v.Name==plr_name then return v end
        end
    end
    return
end
 
function Command(name,desc,alias,func)
    cmds[#cmds +1] =
    {
        NAME=name;
        DESC=desc;
        ALIAS=alias;
        FUNC=func;
    }
end
 
local function getPlayer(name, plr)
    local nameTable = {}
    name=name:lower()
    if name == "me" then
        nameTable[#nameTable+1]=plr.Name
    elseif name == "others" then
        for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then
                if v.Name~=plr.Name and v.Name ~= admin then
                    nameTable[#nameTable+1]=v.Name
                end
            end
        end
    elseif name == "all" then
        for i,v in pairs(gPlayers:GetChildren()) do
            if v:IsA'Player'then
                nameTable[#nameTable+1]=v.Name
            end
        end
    else
        for i,v in pairs(gPlayers:GetChildren()) do
            local lname = v.Name:lower()
            local i,j = lname:find(name)
            if i == 1 then
                return {v.Name}
            end
        end
    end
    return nameTable
end

game.Lighting.Outlines = false

--| Commands |--

Command('nohb', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.Head.hb:Destroy()
end)

Command('anim1', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
local startlook = game.Players.LocalPlayer:FindFirstChild(game.Players.LocalPlayer.Name.."look")
local wep = startlook.weapon
local get = game.Lighting.weapon:FindFirstChild(wep.Value)
if get then
get.idl.Value = 824435775
end
end)

Command('anim2', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
local startlook = game.Players.LocalPlayer:FindFirstChild(game.Players.LocalPlayer.Name.."look")
local wep = startlook.weapon
local get = game.Lighting.weapon:FindFirstChild(wep.Value)
if get then
get.idl.Value = 554254016
end
end)

Command('anim3', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
local startlook = game.Players.LocalPlayer:FindFirstChild(game.Players.LocalPlayer.Name.."look")
local wep = startlook.weapon
local get = game.Lighting.weapon:FindFirstChild(wep.Value)
if get then
get.idl.Value = 714166983
end
end)

Command('anim4', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
local startlook = game.Players.LocalPlayer:FindFirstChild(game.Players.LocalPlayer.Name.."look")
local wep = startlook.weapon
local get = game.Lighting.weapon:FindFirstChild(wep.Value)
if get then
get.idl.Value = 1341385908
end
end)

Command('anim5', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
local startlook = game.Players.LocalPlayer:FindFirstChild(game.Players.LocalPlayer.Name.."look")
local wep = startlook.weapon
local get = game.Lighting.weapon:FindFirstChild(wep.Value)
if get then
get.idl.Value = 555531312
end
end)

Command('anim6', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
local startlook = game.Players.LocalPlayer:FindFirstChild(game.Players.LocalPlayer.Name.."look")
local wep = startlook.weapon
local get = game.Lighting.weapon:FindFirstChild(wep.Value)
if get then
get.idl.Value = 555511003
end
end)

Command('anim7', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
local startlook = game.Players.LocalPlayer:FindFirstChild(game.Players.LocalPlayer.Name.."look")
local wep = startlook.weapon
local get = game.Lighting.weapon:FindFirstChild(wep.Value)
if get then
get.idl.Value = 544079696
end
end)

Command('rejoin', 'rejoin the game', {},
function(args, plr)
if plr.Name ~= admin then return end
game:GetService('TeleportService'):Teleport(game.PlaceId)
end)

Command('heal', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
	local players = getPlayer(args[1], plr)
	for i,v in pairs(players) do
	local r = gPlayers[v].Backpack.keyinput
	while wait() do
		r:FireServer("canheal", true)
		end
	end
end)

Command('dmg', '???', {},
function(args, plr)
if plr.Name ~= admin then return end
	local players = getPlayer(args[1], plr)
	for i,v in pairs(players) do
	local r = gPlayers[v].Backpack.keyinput
	while wait() do
		r:FireServer("candamage", true)
		end
	end
end)

Command('view', 'watch someone', {},
function(args, plr)
if plr.Name ~= admin then return end
	local players = getPlayer(args[1], plr)
	for i,v in pairs(players) do
		game.Workspace.CurrentCamera.CameraSubject = gPlayers[v].Character
	end
end)

Command('unview', 'unwatch', {},
function(args, plr)
if plr.Name ~= admin then return end
	game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end)

Command('fly', ';fly', {},
function(args, plr)
if plr.Name ~= admin then return end

local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
if humanoid.RigType == Enum.HumanoidRigType.R15 then
   game:GetService('Players').LocalPlayer.Character.Humanoid.Name = "Humanoida"
repeat wait()
   until game:GetService"Players".LocalPlayer and game:GetService"Players".LocalPlayer.Character and game:GetService"Players".LocalPlayer.Character:findFirstChild("UpperTorso") and game:GetService"Players".LocalPlayer.Character:findFirstChild("Humanoida")
local mouse = game:GetService"Players".LocalPlayer:GetMouse()
repeat wait() until mouse
   local plr   = game:GetService"Players".LocalPlayer
   local torso = plr.Character.UpperTorso
local flying   = true
local deb      = true
local ctrl     = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 350
local speed    = 0
function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
   plr.Character.Humanoida.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game:GetService("Workspace").CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game:GetService("Workspace").CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game:GetService("Workspace").CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game:GetService("Workspace").CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoida.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "p" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()  
else
 repeat wait()
  until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "p" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end

end)

--// DECALS \\--

Command('eyecolor', ';eyedec plr numbersHere',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players) do
local r = gPlayers[v].Backpack.keyinput
local startlook = gPlayers[v]:FindFirstChild(players[1].."look")

startlook.eyecolor.Value = "http://www.roblox.com/asset/?id="..args[2]

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

r:FireServer("custo", svtabl)
r:FireServer("save")
end
end)

Command('mouth', ';mouthdec plr numbersHere',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players) do
local r = gPlayers[v].Backpack.keyinput
local startlook = gPlayers[v]:FindFirstChild(players[1].."look")

startlook.mouth.Value = "http://www.roblox.com/asset/?id="..args[2]

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

r:FireServer("custo", svtabl)
r:FireServer("save")
end
end)

Command('hairtyp', ';hairtyp plr nameHere',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players) do
local r = gPlayers[v].Backpack.keyinput
local startlook = gPlayers[v]:FindFirstChild(players[1].."look")

startlook.hair.Value = args[2]

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

r:FireServer("custo", svtabl)
r:FireServer("save")
end
end)

Command('follow', 'loop go to a player',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
	loopTo = true
	while wait(0.05) do
    if players ~= nil and _char(players[1]):FindFirstChild("HumanoidRootPart") then
		_char(admin).HumanoidRootPart.CFrame = _char(players[1]).HumanoidRootPart.CFrame
		if loopTo == false then
		break
		end
	end
	end
end)

Command('noclip', 'no clip',{},
function(args, plr)
if plr.Name ~= admin then return end

game:getService("RunService"):BindToRenderStep("",0,function()
if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
if game:getService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then
game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
end
end)
end)

Command('unfollow', 'unloop go to a player',{},
function(args, plr)
if plr.Name ~= admin then return end

	Notify("unlooped")
	loopTo = false
end)

Command('mod', '???',{},
function(args, plr)
if not isAdmin(plr) then return end

	local players = getPlayer(args[1], plr)
for i,v in pairs(players) do
	modT[#modT +1] = players[1]
		Notify("moded "..players[1])
	end
end)

Command('unmod', '???',{},
function(args, plr)
if not isAdmin(plr) then return end

    local players = getPlayer(args[1], plr)
for i,v in pairs(players) do
	table.remove(modT, GetInTable(modT, players[1]))
		Notify("unadmined "..players[1])
	end
end)

Command('admin', '???',{},
function(args, plr)
if plr.Name ~= admin then return end

	local players = getPlayer(args[1], plr)
for i,v in pairs(players) do
	adminT[#adminT +1] = players[1]
		Notify("admined "..players[1])
	end
end)

speedLoop = false
Command('speed', '???',{},
function(args, plr)
if plr.Name ~= admin then return end
speedLoop = true
while wait() do
game.Players[admin].Character.Humanoid.WalkSpeed = args[1]
if speedLoop == false then
break
end
end
end)

Command('unspeed', '???',{},
function(args, plr)
if plr.Name ~= admin then return end
speedLoop = false
game.Players[admin].Character.Humanoid.WalkSpeed = 35
end)

Command('unadmin', '???',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
for i,v in pairs(players) do
	table.remove(adminT, GetInTable(adminT, tostring(players[1])))
		Notify("unadmined "..tostring(players[1]))
	end
end)

Command('to', 'go to a player',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    if players ~= nil and _char(players[1]):FindFirstChild("HumanoidRootPart") then
        _char(admin).HumanoidRootPart.CFrame = _char(players[1]).HumanoidRootPart.CFrame
		Notify("Teleported to "..players[1])
    end
end)

Command('ctp','click to tp',{''},
function(args, plr)
if plr.Name ~= admin then return end

-- << K1LL0X >> --
 
 
local UIS = game:GetService("UserInputService")
 
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
 
 
function GetCharacter()
    return game.Players.LocalPlayer.Character
end
 
function Teleport(pos)
    local Char = GetCharacter()
    if Char then
        Char:MoveTo(pos)
    end
end

UIS.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
        Teleport(Mouse.Hit.p)
    end
end)
end)

Command('makelist', 'add stuff to a list xd',{},
function(args, plr)
if plr.Name ~= admin then return end
if args[2] then
writefile(args[1]..".txt", args[2])
if args[3] then
writefile(args[1]..".txt", args[2].."\n"..args[3])
if args[4] then
writefile(args[1]..".txt", args[2].."\n"..args[3].."\n"..args[4])
if args[5] then
writefile(args[1]..".txt", args[2].."\n"..args[3].."\n"..args[4].."\n"..args[5])
if args[6] then
writefile(args[1]..".txt", args[2].."\n"..args[3].."\n"..args[4].."\n"..args[5].."\n"..args[6])
if args[7] then
writefile(args[1]..".txt", args[2].."\n"..args[3].."\n"..args[4].."\n"..args[5].."\n"..args[6].."\n"..args[7])
if args[8] then
writefile(args[1]..".txt", args[2].."\n"..args[3].."\n"..args[4].."\n"..args[5].."\n"..args[6].."\n"..args[7].."\n"..args[8])
if args[9] then
writefile(args[1]..".txt", args[2].."\n"..args[3].."\n"..args[4].."\n"..args[5].."\n"..args[6].."\n"..args[7].."\n"..args[8].."\n"..args[9])
if args[10] then
writefile(args[1]..".txt", args[2].."\n"..args[3].."\n"..args[4].."\n"..args[5].."\n"..args[6].."\n"..args[7].."\n"..args[8].."\n"..args[9].."\n"..args[10])
end
end
end
end
end
end
end
end
end
end)

Command('zoom', '???',{},
function(args, plr)
if plr.Name ~= admin then return end

game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
end)

Command('names', 'name esp',{},
function(args, plr)
if plr.Name ~= admin then return end

print("Key to toggle esp is 0.")

ENABLED = false
ENABLED = false
PLAYER = game.Players.LocalPlayer
MOUSE = PLAYER:GetMouse()
CC = game.Workspace.CurrentCamera
local player = game.Players.LocalPlayer
local esp = false
local track = false

function Create(base, team)
local bb = Instance.new("BillboardGui",player.PlayerGui)
bb.Adornee = base
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 1
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = (string.upper(base.Parent.Name))
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-45)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5

local fold = base.Parent.cfolder
local txtlbl2 = Instance.new("TextLabel",bb)
txtlbl2.ZIndex = 10
txtlbl2.Text = "Chakra: "..fold.chakra.Value
txtlbl2.BackgroundTransparency = 1
txtlbl2.Position = UDim2.new(0,0,0,-35)
txtlbl2.Size = UDim2.new(1,0,10,0)
txtlbl2.Font = "SourceSansBold"
txtlbl2.FontSize = "Size14"
txtlbl2.TextStrokeTransparency = 0.5

local txtlbl5 = Instance.new("TextLabel",bb)
txtlbl5.ZIndex = 10
txtlbl5.Text = "Health: "..fold.fakehealth.Value
txtlbl5.BackgroundTransparency = 1
txtlbl5.Position = UDim2.new(0,0,0,-25)
txtlbl5.Size = UDim2.new(1,0,10,0)
txtlbl5.Font = "SourceSansBold"
txtlbl5.FontSize = "Size14"
txtlbl5.TextStrokeTransparency = 0.5

local txtlbl4 = Instance.new("TextLabel",bb)
txtlbl4.ZIndex = 10
txtlbl4.Text = "Stam: "..fold.mode.Value
txtlbl4.BackgroundTransparency = 1
txtlbl4.Position = UDim2.new(0,0,0,-15)
txtlbl4.Size = UDim2.new(1,0,10,0)
txtlbl4.Font = "SourceSansBold"
txtlbl4.FontSize = "Size14"
txtlbl4.TextStrokeTransparency = 0.5

if team then
txtlbl.TextColor3 = Color3.new(255,255,255)
txtlbl2.TextColor3 = Color3.new(255,255,255)
txtlbl4.TextColor3 = Color3.new(255,255,255)
txtlbl5.TextColor3 = Color3.new(255,255,255)
frame.BackgroundColor3 = Color3.new(255,255,255)

elseif base.Parent.Name == "whielist kid" or base.Parent.Name == "second whitelist kid here"  then
txtlbl.TextColor3 = Color3.new(255,255,255)
txtlbl2.TextColor3 = Color3.new(255,255,255)
txtlbl4.TextColor3 = Color3.new(255,255,255)
txtlbl5.TextColor3 = Color3.new(255,255,255)
frame.BackgroundColor3 = Color3.new(255,255,255)
txtlbl.Text = "FRIEND"
txtlbl.FontSize = "Size14"
txtlbl2.FontSize = "Size14"

elseif base.Parent.Name == game.Players.LocalPlayer.Name then
txtlbl.Transparency = 1
txtlbl2.Transparency = 1
txtlbl4.Transparency = 1
txtlbl5.Transparency = 1
frame.Transparency = 1
else
txtlbl.TextColor3 = Color3.new(255,255,255)
txtlbl2.TextColor3 = Color3.new(255,255,255)
txtlbl4.TextColor3 = Color3.new(255,255,255)
txtlbl5.TextColor3 = Color3.new(255,255,255)
frame.BackgroundColor3 = Color3.new(255,255,255)
end
end

function Find()
Clear()
track = true
spawn(function()
while wait() do
if track then
Clear()
for _,v in pairs(game.Players:players()) do

if v.Character and v.Character.Head then
Create(v.Character.Head, false)
end
end
end
end
wait(1)
end)
end
function Clear()
for _,v in pairs(player.PlayerGui:children()) do
if v.Name == "tracker" and v:isA("BillboardGui") then
v:Destroy()
end
end
end

mouse=game.Players.LocalPlayer:GetMouse()
mouse.keyDown:connect(function(key)
if key == "0" then
if not esp then
Find()
print("ESP ENABLED")
esp = true
else
Clear()
track = false
print("ESP DISABLED")
esp = false
end
end
end)
end)

--// RP MODE STUFF \\--

Command('ramen', 'ramen shop',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(374.445831, 74.8133621, 48.1744003, -0.999764383, -2.85884578e-08, -0.0217137039, -2.7867328e-08, 1, -3.35132277e-08, 0.0217137039, -3.29002212e-08, -0.999764383)
end)

Command('dojo', 'dojo',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2172.51587, 311.450256, 247.562149, 0.317753285, 6.99667382e-08, -0.948173404, -3.81147158e-09, 1, 7.25137639e-08, 0.948173404, -1.94275511e-08, 0.317753285)
end)

Command('arena', 'arena',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(169.529556, 75.3133621, -52.3688469, 0.377092689, -8.40877163e-08, 0.926175594, -9.198037e-09, 1, 9.45352028e-08, -0.926175594, -4.41675851e-08, 0.377092689)
end)

Command('hokchair', 'hokage mansion',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(797.437256, 148.24353, -7.89632988, -0.865380824, 4.61938434e-08, 0.501114488, 3.15700781e-08, 1, -3.76634475e-08, -0.501114488, -1.67730398e-08, -0.865380824)
end)

Command('hokgate', 'hokage mansion gate',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(665.962097, 96.8133774, 15.7320681, 0.0217452198, -6.8645778e-09, -0.999763548, 8.03993316e-08, 1, -5.11748688e-09, 0.999763548, -8.02690394e-08, 0.0217452198)
end)

Command('rpleaf', 'leaf mansion',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(844.658386, 221.271439, 26.4665604, 0.612922072, 4.81813629e-08, 0.790143371, -9.28534547e-08, 1, 1.10493472e-08, -0.790143371, -8.01399267e-08, 0.612922072)
end)

Command('rpmist', 'mist mansion',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2528.6084, 185.761307, 2686.81567, -0.992122889, -6.32954595e-08, 0.125268564, -6.10818418e-08, 1, 2.15118803e-08, -0.125268564, 1.36907952e-08, -0.992122889)
end)

Command('rpsand', 'sand mansion',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1457.65833, 263.014221, -2212.92944, -0.99046433, 2.01858441e-08, -0.137768075, 2.88578619e-08, 1, -6.09491693e-08, 0.137768075, -6.43436735e-08, -0.99046433)
end)

Command('rpcloud', 'cloud village',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2054.23535, 186.530884, 2649.22949, 0.904833019, 3.10583808e-08, -0.425766379, -5.49711174e-08, 1, -4.38768879e-08, 0.425766379, 6.31061354e-08, 0.904833019)
end)

Command('rpstone', 'stone village',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1711.19629, 427.590149, -1757.77026, -0.899425328, -9.87155545e-06, -0.437074155, 1.22384554e-05, 1, -4.77701833e-05, 0.437074155, -4.83148142e-05, -0.899425328)
end)

Command('rpmemstone', 'memorial stone',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-697.489807, 93.1185074, 1140.68872, 0.500681043, -5.10301561e-08, -0.865631521, 2.07456434e-08, 1, -4.69520778e-08, 0.865631521, 5.54994672e-09, 0.500681043)
end)

Command('rpfod', 'forest of death',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(674.81604, 81.7983627, 1188.04749, -0.299822718, 1.56532991e-08, 0.953995049, 7.77616138e-10, 1, -1.61637654e-08, -0.953995049, -4.10442302e-09, -0.299822718)
end)

Command('hfinalv', 'hashirama final valley',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(267.698303, 137.719559, 2034.67786, 0.0536211208, -4.14073931e-08, 0.998561859, -3.27831167e-08, 1, 4.32274447e-08, -0.998561859, -3.50538656e-08, 0.0536211208)
end)

Command('mfinalv', 'madara final valley',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.462631, 133.299667, 2031.30615, -0.0348153412, 1.82387492e-08, -0.999394059, -1.18310384e-09, 1, 1.82910291e-08, 0.999394059, 1.81920057e-09, -0.0348153412)
end)

Command('rnarub', 'right side of naruto bridge',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1484.70789, 110.360008, 386.411285, -0.997841537, 2.43239722e-08, -0.0656764284, 2.65719358e-08, 1, -3.33544179e-08, 0.0656764284, -3.50275577e-08, -0.997841537)
end)

Command('lnarub', 'left side of naruto bridge',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1467.08606, 109.410027, 1380.93396, 0.990855157, 5.05643172e-08, -0.134929806, -4.73597339e-08, 1, 2.69598051e-08, 0.134929806, -2.03230215e-08, 0.990855157)
end)

Command('rsamb', 'right side of samurai bridge',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1511.06909, 171.729477, 322.057617, 0.109526411, -3.85480342e-10, -0.993983865, -7.50582174e-08, 1, -8.65842775e-09, 0.993983865, 7.55549863e-08, 0.109526411)
end)

Command('lsamb', 'left side of samurai bridge',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1831.96497, 171.729416, 314.266541, 0.196890742, -8.84284788e-08, 0.980425417, 9.70918066e-08, 1, 7.06958403e-08, -0.980425417, 8.12719207e-08, 0.196890742)
end)

Command('mlgate', 'main leaf gate',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-432.074554, 86.1883621, 4.82217741, -0.330048531, 5.14031022e-08, -0.943963945, 7.58388907e-08, 1, 2.793813e-08, 0.943963945, -6.23682439e-08, -0.330048531)
end)

--// TELEPORTS \\--

Command('tpleaf', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Leaf", "851453769")
end)

Command('tpmist', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Mist", "851454472")
end)

Command('tpcloud', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Cloud", "851455061")
end)

Command('tpsand', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Sand", "851456092")
end)

Command('tprock', 'god player',{},
function(args)
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Rock", "851456664")
end)

Command('wzetsu', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "White Zetsu", "673963083")
end)

Command('rpworld', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Roleplay World", "813633556")
end)

Command('arenax', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Arena X", "834744929")
end)

Command('memstone', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Memorial Stone", "559417195")
end)

Command('sworld', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
game.Players.LocalPlayer.Backpack.keyinput:FireServer("teleport", "Shinobi World", "405854262")
end)

Command('haircolor', ';facedec plr numbersHere',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players) do
local r = gPlayers[v].Backpack.keyinput
local startlook = gPlayers[v]:FindFirstChild(players[1].."look")

if args[2] then
startlook.haircolor.Value = args[2]
if args[3] then
startlook.haircolor.Value = args[2]..' '..args[3]

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

r:FireServer("custo", svtabl)
r:FireServer("save")
end
end
end
end)

Command('band', ';facedec plr numbersHere',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players) do
local r = gPlayers[v].Backpack.keyinput
local startlook = gPlayers[v]:FindFirstChild(players[1].."look")

startlook.band.Value = args[2]

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

r:FireServer("custo", svtabl)
r:FireServer("save")
end
end)

Command('bandsymb', ';bandsdec plr numbersHere',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players) do
local r = gPlayers[v].Backpack.keyinput
local startlook = gPlayers[v]:FindFirstChild(players[1].."look")

startlook.bandsymbol.Value = "http://www.roblox.com/asset/?id="..args[2]

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

r:FireServer("custo", svtabl)
r:FireServer("save")
end
end)

Command('eye', ';facedec plr numbersHere',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players) do
local r = gPlayers[v].Backpack.keyinput
local startlook = gPlayers[v]:FindFirstChild(players[1].."look")

startlook.face.Value = "http://www.roblox.com/asset/?id="..args[2]

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

r:FireServer("custo", svtabl)
r:FireServer("save")
end
end)

--// END DECALS \\--

Command('sarc', '???',{},
function(args, plr)
if not isAdmin(plr) then return end
local r = game.Players.LocalPlayer.Backpack.keyinput
local startlook = game.Players.LocalPlayer:FindFirstChild(game.Players.LocalPlayer.Name.."look")

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

startlook.bandsymbol.Value = "http://www.roblox.com/asset/?id=21557995"
r:FireServer("changeelement", "", "lighting")
r:FireServer("changeelement", "2", "earth")
r:FireServer("equipkey", "weapon", "nuibari")
r:FireServer("equipkey", "r", "purplea")
r:FireServer("equipkey", "t", "ftg")
r:FireServer("equipkey", "y", "leafww")
r:FireServer("equipkey", "f", "nagringana")
r:FireServer("equipkey", "g", "icea")
r:FireServer("equipkey", "h", "tenseigan")
r:FireServer("equipkey", "v", "")
r:FireServer("equipkey", "comp", "gaara2")
r:FireServer("equipkey", "b", "aburamec")
r:FireServer("equipkey", "n", "itachi21")
r:FireServer("equipkey", "mode", "itachisharingan2")
r:FireServer("equipkey", "powerup", "sevenheaven")
r:FireServer("equipkey", "lvl", "3000")
r:FireServer("equipkey", "spins", "299")
r:FireServer("equipkey", "clan", "Lord Sarcae")
r:FireServer("equipkey", "village", "Kimura Clan Leader")

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

wait(.5)
r:FireServer("custo", svtabl)
r:FireServer("save")
end)

Command('lnowep', 'Looped gets rid of the targets weapon',{},
function(args, plr)
if not isAdmin(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
loopNW = true
Notify('(Looped) Got rid of '..players[1]..' weapon')
while wait() do
r:FireServer("equipkey", "weapon", "")
if loopNW == false then 
break
end
end
end
end)

Command('unlnowep', 'unloop go to a player',{},
function(args, plr)
if not isAdmin(plr) then return end

	Notify("unlooped")
	loopNW = false
end)

Command('lnocomp', 'gets rid of the targets compnaion',{},
function(args, plr)
if not isAdmin(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('(Looped) Got rid of '..players[1]..' comp')
loopNC = true
while wait() do
r:FireServer("equipkey", "comp", "")
if loopNC == false then 
break
end
end
end
end)

Command('unlnocomp', 'unloop go to a player',{},
function(args, plr)
if not isAdmin(plr) then return end

	Notify("unlooped")
	loopNC = false
end)

Command('level', 'gets rid of the targets compnaion',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "lvl", "3000")
end
end)

Command('nocomp', 'gets rid of the targets compnaion',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Got rid of '..players[1]..' comp')
r:FireServer("equipkey", "comp", "")
end
end)

Command('wep', '???',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[2], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('gave '..players[1]..' a new weapon')
r:FireServer("equipkey", "weapon", args[1])
end
end)

Command('unwep', 'gets rid of the targets weapon',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Got rid of '..players[1]..' weapon')
r:FireServer("equipkey", "weapon", "")
end
end)

Command('nomask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("rcustommask")
end
end)

Command('smask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.e
r:FireServer("custommask", currentmask)
end
end)

Command('csmask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.e
game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text = args[2]
if currentmask then
		aaa = 0
		if tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text) then
			aaa = tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text)
			aaa = aaa - 1
		end
r:FireServer("custommask", currentmask, "rbxassetid://" .. aaa)
end
end
end)

Command('kagehat', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.g
r:FireServer("custommask", currentmask)
end
end)

Command('ckagehat', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.g
game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text = args[2]
if currentmask then
		aaa = 0
		if tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text) then
			aaa = tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text)
			aaa = aaa - 1
		end
r:FireServer("custommask", currentmask, "rbxassetid://" .. aaa)
end
end
end)

Command('nemask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.d
r:FireServer("custommask", currentmask)
end
end)

Command('cnemask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.d
game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text = args[2]
if currentmask then
		aaa = 0
		if tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text) then
			aaa = tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text)
			aaa = aaa - 1
		end
r:FireServer("custommask", currentmask, "rbxassetid://" .. aaa)
end
end
end)

Command('hnmask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.c
r:FireServer("custommask", currentmask)
end
end)

Command('chnmask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.c
game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text = args[2]
if currentmask then
		aaa = 0
		if tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text) then
			aaa = tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text)
			aaa = aaa - 1
		end
r:FireServer("custommask", currentmask, "rbxassetid://" .. aaa)
end
end
end)

Command('remask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.b
r:FireServer("custommask", currentmask)
end
end)

Command('cremask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.b
game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text = args[2]
if currentmask then
		aaa = 0
		if tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text) then
			aaa = tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text)
			aaa = aaa - 1
		end
r:FireServer("custommask", currentmask, "rbxassetid://" .. aaa)
end
end
end)

Command('pemask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.a
r:FireServer("custommask", currentmask)
end
end)

Command('cpemask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.a
game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text = args[2]
if currentmask then
		aaa = 0
		if tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text) then
			aaa = tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text)
			aaa = aaa - 1
		end
r:FireServer("custommask", currentmask, "rbxassetid://" .. aaa)
end
end
end)

Command('bmomask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.f
game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text = 65372938
if currentmask then
		aaa = 0
		if tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text) then
			aaa = tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text)
			aaa = aaa - 1
		end
r:FireServer("custommask", currentmask, "rbxassetid://" .. aaa)
end
end
end)

Command('momask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.f
r:FireServer("custommask", currentmask)
end
end)

Command('cmomask', 'god player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
currentmask = game.Lighting.mask.f
game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text = args[2]
if currentmask then
		aaa = 0
		if tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text) then
			aaa = tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.MainMenu.TheHud.CustomTab.id.Text)
			aaa = aaa - 1
		end
r:FireServer("custommask", currentmask, "rbxassetid://" .. aaa)
end
end
end)

Command('god', 'god player',{},
function(args, plr)
if not isAdmin(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
loopGod = true
while wait() do
r:FireServer("standup")
if loopGod == false then 
break
end
end
end
end)

Command('ungod', 'unloop go to a player',{},
function(args, plr)
if not isAdmin(plr) then return end

	Notify("unlooped")
	loopGod = false
end)

Command('up', 'rise player',{},
function(args, plr)
if not isAdmin(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("standup")
end
end)

Command('noblock', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("eend")
end
end
end)

--PRESS KEYS

Command('notensei', 'god player',{},
function(args, plr)
if plr.Name ~= admin then return end
while wait() do
if game.Players.LocalPlayer.Character:FindFirstChild("tenseigan") then
game.Players.LocalPlayer.Character.tenseigan:Destroy()
end
end
end)

Command('rkey', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[2], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
if args[1] == "all" then 
r:FireServer("equipkey", "r", "")
r:FireServer("equipkey", "t", "")
r:FireServer("equipkey", "y", "")
r:FireServer("equipkey", "f", "")
r:FireServer("equipkey", "g", "")
r:FireServer("equipkey", "h", "")
r:FireServer("equipkey", "v", "")
r:FireServer("equipkey", "b", "")
r:FireServer("equipkey", "n", "")
r:FireServer("equipkey", "comp", "")
else
r:FireServer("equipkey", args[1], "")
end
end
end)

Command('lr', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("r")
end
end
end)

Command('lt', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("t")
end
end
end)

Command('ly', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("y")
end
end
end)

Command('lf', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("f")
end
end
end)

Command('lg', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("g")
end
end
end)

Command('lh', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("h")
end
end
end)

Command('lv', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("v")
end
end
end)

Command('lb', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("r")
end
end
end)

Command('ln', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("r")
end
end
end)

Command('dash1', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("abcdef")
end
end)

Command('dash2', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("abcdef2")
end
end)

Command('dash3', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("abcdef3")
end
end)

Command('r', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("r")
end
end)

Command('t', 'presses the players t key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("t")
end
end)

Command('y', 'presses the players y key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("y")
end
end)

Command('f', 'presses the players f key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("f")
end
end)

Command('g', 'presses the players g key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("g")
end
end)

Command('h', 'presses the players h key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("h")
end
end)

Command('v', 'presses the players v key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("v")
end
end)

Command('b', 'presses the players b key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("b")
end
end)

Command('n', 'presses the players n key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("n")
end
end)

Command('z', 'holds the players z key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("z")
end
end)

Command('c', 'holds the players c key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("c")
end
end)

--END PRESS KEYS

Command('nofreap', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

local fir = game.Players.LocalPlayer.Character.RightHand.weapon.wep.Model:GetChildren()
for i = 1, #fir do
if fir[i]:FindFirstChild("fire") then
fir[i].fire:Destroy()
fir[i].Trail:Destroy()
end
end
end)

Command('rwcurse', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

local fir = game.Players.LocalPlayer.Character:GetChildren()
for i = 1, #fir do
if fir[i]:FindFirstChild("wing1") then
fir[i].wing1:Destroy()
if fir[i]:FindFirstChild("wing2") then
fir[i].wing2:Destroy()
end
end
end
end)

Command('triperm', ';triperm plr nameHere',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players) do
local r = gPlayers[v].Backpack.keyinput
local startlook = gPlayers[v]:FindFirstChild(players[1].."look")

startlook.hair.Value = "Wedge"
startlook.face.Value = ""
startlook.eyecolor.Value = ""
startlook.mouth.Value = ""

local currenthair = startlook.hair.Value
local currenthaircolor = startlook.haircolor.Value
local currentface = startlook.face.Value
local currentmouth = startlook.mouth.Value
local currenteyecolor = startlook.eyecolor.Value
local currentband = startlook.band.Value
local currentbandsymbol = startlook.bandsymbol.Value

svtabl = {
        currenthair,
        currenthaircolor,
        currentface,
        currentmouth,
        currenteyecolor,
        currentband,
        currentbandsymbol
}

r:FireServer("custo", svtabl)
r:FireServer("equipkey", "weapon", "rajinnpc")
r:FireServer("changeelement", "", "")
r:FireServer("changeelement", "element2", "")
r:FireServer("changeelement", "element3", "")
r:FireServer("changeelement", "element4", "")
r:FireServer("changeelement", "element5", "")
r:FireServer("changeelement", "element6", "")
r:FireServer("save")
end
end)

Command('notri','resets a moveset',{''},
function(args, plr)
if not isAdmin(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify("notri "..players[1].."'actived")
r:FireServer("equipkey", "r", "")
r:FireServer("equipkey", "t", "")
r:FireServer("equipkey", "y", "")
r:FireServer("equipkey", "f", "")
r:FireServer("equipkey", "g", "")
r:FireServer("equipkey", "h", "")
r:FireServer("equipkey", "b", "")
r:FireServer("equipkey", "n", "")
r:FireServer("equipkey", "v", "")
r:FireServer("equipkey", "comp", "")
r:FireServer("equipkey", "weapon", "")
r:FireServer("save")
r:FireServer("changeelement", "", "fire")
r:FireServer("changeelement", "2", "sound")
r:FireServer("changeelement", "3", "")
r:FireServer("changeelement", "4", "")
r:FireServer("changeelement", "5", "")
r:FireServer("changeelement", "6", "")
r:FireServer("save")
end
end)

Command('fix','fix player',{''},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('fixed '..players[1])
wait()
r:FireServer("changeelement", "", "fire")
r:FireServer("changeelement", "2", "sound")
r:FireServer("changeelement", "3", "")
r:FireServer("changeelement", "4", "")
r:FireServer("changeelement", "5", "")
r:FireServer("changeelement", "6", "")
r:FireServer("save")
end
end)

Command('antlag','antlag localplayer',{''},
function(args)
local nomedacoisa = 'Message'

local function DeletarCoisa()

for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
if v.Name == nomedacoisa then
v:Destroy()
end
end
end

game.Players.LocalPlayer.PlayerGui.ChildAdded:connect(DeletarCoisa)
end)

--STOP KEYS

Command('sz', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("zend")
end
end
end)

Command('sc', 'presses the players r key',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("cend")
end
end
end)

--END STOP KEYS

Command('bgod', 'bgod player',{},
function(args, plr)
if not isAdmin(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
loopBG = true
while wait() do
r:FireServer("standup")
wait(1)
r:FireServer("equipkey", "bounty", "1000000")
if loopBG == false then 
break
end
end
end
end)

Command('unbgod', 'unloop go to a player',{},
function(args, plr)
if not isAdmin(plr) then return end

	Notify("unlooped")
	loopBG = false
end)

Command('novill', 'bgod player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "village", "")
end
end)

Command('kgglit2', '',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", args[2], args[3])
r:FireServer("equipkey", args[4], args[5])
wait(.25)
r:FireServer(args[2])
wait(.50)
r:FireServer("c")
wait(.65)
r:FireServer(args[4])
end
end)

Command('orbs', '',{},
function(args, plr)
if plr.Name ~= admin then return end
    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "yinyang")
wait(.25)
r:FireServer("h")
wait(.50)
r:FireServer("c")
wait(.65)
r:FireServer("h")
wait(.75)
r:FireServer("c")
end
end)

Command('kgglit1', '',{},
function(args, plr)
if plr.Name ~= admin then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", args[2], args[3])
wait(.25)
r:FireServer(args[2])
wait(.50)
r:FireServer("c")
wait(.65)
r:FireServer(args[2])
wait(.75)
r:FireServer("c")
end
end)

Command('clan', 'clan player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
		local s1 = args[2]
		local s2 = args[3]
		local s3 = args[4]
		local s4 = args[5]
		local s5 = args[6]
		local s6 = args[7]
		local s7 = args[8]
		local s8 = args[9]
		local s9 = args[10]
		local s10 = args[11]
		local s11 = args[12]
		local s12 = args[13]
		local s13 = args[14]
		local s14 = args[15]
		local s15 = args[16]
		local s16 = args[17]
		local s17 = args[18]
		local s18 = args[19]
		local s19 = args[20]
		local s20 = args[21]
		local s21 = args[22]
		local s22 = args[23]
		local s23 = args[24]
		local s24 = args[25]
		local s25 = args[26]
		local s26 = args[27]
		local s27 = args[28]
		local s28 = args[29]
		local s29 = args[30]
		local s30 = args[31]
				if s1 then
		r:FireServer("equipkey", "clan", s1)
		r:FireServer("save")
				if s2 then
		r:FireServer("equipkey", "clan", s1..' '..s2)
		r:FireServer("save")
				if s3 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3)
		r:FireServer("save")
				if s4 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4)
		r:FireServer("save")
				if s5 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5)
		r:FireServer("save")
				if s6 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6)
		r:FireServer("save")
						if s7 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7)
		r:FireServer("save")
						if s8 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8)
		r:FireServer("save")
						if s9 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9)
		r:FireServer("save")				
						if s10 then
		r:FireServer("equipkey", "clan",s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10)
		r:FireServer("save")
						if s11 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11)
		r:FireServer("save")				
						if s12 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12)
		r:FireServer("save")
						if s13 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13)
		r:FireServer("save")
						if s14 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14)
		r:FireServer("save")
						if s15 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15)
		r:FireServer("save")
						if s16 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16)
		r:FireServer("save")
						if s17 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17)
		r:FireServer("save")
						if s18 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18)
		r:FireServer("save")
						if s19 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19)
		r:FireServer("save")
						if s20 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20)
		r:FireServer("save")
						if s21 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21)
		r:FireServer("save")
						if s22 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22)
		r:FireServer("save")
						if s23 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23)
		r:FireServer("save")
						if s24 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24)
		r:FireServer("save")
						if s25 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25)
		r:FireServer("save")
						if s26 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26)
		r:FireServer("save")
						if s27 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26..' '..s27)
		r:FireServer("save")
						if s28 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26..' '..s27..' '..s28)
		r:FireServer("save")
						if s29 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26..' '..s27..' '..s28..' '..s29)
		r:FireServer("save")
						if s30 then
		r:FireServer("equipkey", "clan", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26..' '..s27..' '..s28..' '..s29..' '..s30)
		r:FireServer("save")
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
end
end)

Command('treset', 'resets a player',{''},
function(args, plr)
if not isAdmin(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("reset1fstats", 456345234534565.000000)
r:FireServer("save")
writefile("Reset.txt", players[1].."\n")
end
end)

Command('vill', 'village player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
		local s1 = args[2]
		local s2 = args[3]
		local s3 = args[4]
		local s4 = args[5]
		local s5 = args[6]
		local s6 = args[7]
		local s7 = args[8]
		local s8 = args[9]
		local s9 = args[10]
		local s10 = args[11]
		local s11 = args[12]
		local s12 = args[13]
		local s13 = args[14]
		local s14 = args[15]
		local s15 = args[16]
		local s16 = args[17]
		local s17 = args[18]
		local s18 = args[19]
		local s19 = args[20]
		local s20 = args[21]
		local s21 = args[22]
		local s22 = args[23]
		local s23 = args[24]
		local s24 = args[25]
		local s25 = args[26]
		local s26 = args[27]
		local s27 = args[28]
		local s28 = args[29]
		local s29 = args[30]
		local s30 = args[31]
				if s1 then
		r:FireServer("equipkey", "village", s1)
		r:FireServer("save")
				if s2 then
		r:FireServer("equipkey", "village", s1..' '..s2)
		r:FireServer("save")
				if s3 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3)
		r:FireServer("save")
				if s4 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4)
		r:FireServer("save")
				if s5 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5)
		r:FireServer("save")
				if s6 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6)
		r:FireServer("save")
						if s7 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7)
		r:FireServer("save")
						if s8 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8)
		r:FireServer("save")
						if s9 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9)
		r:FireServer("save")				
						if s10 then
		r:FireServer("equipkey", "village",s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10)
		r:FireServer("save")
						if s11 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11)
		r:FireServer("save")				
						if s12 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12)
		r:FireServer("save")
						if s13 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13)
		r:FireServer("save")
						if s14 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14)
		r:FireServer("save")
						if s15 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15)
		r:FireServer("save")
						if s16 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16)
		r:FireServer("save")
						if s17 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17)
		r:FireServer("save")
						if s18 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18)
		r:FireServer("save")
						if s19 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19)
		r:FireServer("save")
						if s20 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20)
		r:FireServer("save")
						if s21 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21)
		r:FireServer("save")
						if s22 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22)
		r:FireServer("save")
						if s23 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23)
		r:FireServer("save")
						if s24 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24)
		r:FireServer("save")
						if s25 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25)
		r:FireServer("save")
						if s26 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26)
		r:FireServer("save")
						if s27 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26..' '..s27)
		r:FireServer("save")
						if s28 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26..' '..s27..' '..s28)
		r:FireServer("save")
						if s29 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26..' '..s27..' '..s28..' '..s29)
		r:FireServer("save")
						if s30 then
		r:FireServer("equipkey", "village", s1..' '..s2..' '..s3..' '..s4..' '..s5..' '..s6..' '..s7..' '..s8..' '..s9..' '..s10..' '..s11..' '..s12..' '..s13..' '..s14..' '..s15..' '..s16..' '..s17..' '..s18..' '..s19..' '..s20..' '..s21..' '..s22..' '..s23..' '..s24..' '..s25..' '..s26..' '..s27..' '..s28..' '..s29..' '..s30)
		r:FireServer("save")
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
						end
end
end)

Command('noclan', 'bgod player',{},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "clan", "")
end
end)

Command('mreset1','resets a moveset',{''},
function(args, plr)
if not isAdmin(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify("Loop Reset "..players[1].."'s moveset")
while wait(0.25) do
r:FireServer("equipkey", "r", "")
r:FireServer("equipkey", "mode", "")
r:FireServer("equipkey", "powerup", "")
r:FireServer("equipkey", "t", "")
r:FireServer("equipkey", "y", "")
r:FireServer("equipkey", "f", "")
r:FireServer("equipkey", "g", "")
r:FireServer("equipkey", "h", "")
r:FireServer("equipkey", "b", "")
r:FireServer("equipkey", "n", "")
r:FireServer("equipkey", "v", "")
r:FireServer("equipkey", "weapon", "")
r:FireServer("save")
if loopMR == false then 
break
end
end
end
end)

Command("sfx", "Better Leaf",{''},
function(args, plr)
if plr.Name ~= admin then return end
    loadstring(game:HttpGet(('https://pastebin.com/raw/vB1fr2w1'),true))()
    Player.PlayerGui.MainGui.CharHud.music:Destroy()
end)

Command('pp','???',{''},
function(args, plr)
if not plr.Name == admin then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify(players[1].." is now in the Time Seal")
local r = gPlayers[v].Backpack.keyinput
loopLag = true
while wait() do
r:FireServer("teleport", [[
































▒█░▒█ █▀▀ █▀▀▄ ▀▀█▀▀ █▀▀█ ▀█▀ 　 ▒█░▒█ █▀▀█ ▀█░█▀ █▀▀ ▒█▄░▒█
▒█▀▀█ █▀▀ █░░█ ░░█░░ █▄▄█ ▒█░ 　 ▒█▀▀█ █▄▄█ ░█▄█░ █▀▀ ▒█▒█▒█
▒█░▒█ ▀▀▀ ▀░░▀ ░░▀░░ ▀░░▀ ▄█▄ 　 ▒█░▒█ ▀░░▀ ░░▀░░ ▀▀▀ ▒█░░▀█
                                                                                                                     
                                                                                                                                                            
…………………...„„-~^^~„-„„_
………………„-^*'' : : „'' : : : : *-„
…………..„-* : : :„„--/ : : : : : : : '\
…………./ : : „-* . .| : : : : : : : : '|
……….../ : „-* . . . | : : : : : : : : |
………...\„-* . . . . .| : : : : : : : :'|
……….../ . . . . . . '| : : : : : : : :|
……..../ . . . . . . . .'\ : : : : : : : |
……../ . . . . . . . . . .\ : : : : : : :|
……./ . . . . . . . . . . . '\ : : : : : /
….../ . . . . . . . . . . . . . *-„„„„-*'
….'/ . . . . . . . . . . . . . . '|
…/ . . . . . . . ./ . . . . . . .|
../ . . . . . . . .'/ . . . . . . .'|
./ . . . . . . . . / . . . . . . .'|
																																																																																																																																																																																																																															| . . . . . . .| . . / ./ ./ . .|                                                                                                                
                                                               
▒█░▒█ █▀▀ █▀▀▄ ▀▀█▀▀ █▀▀█ ▀█▀ 　 ▒█░▒█ █▀▀█ ▀█░█▀ █▀▀ ▒█▄░▒█
▒█▀▀█ █▀▀ █░░█ ░░█░░ █▄▄█ ▒█░ 　 ▒█▀▀█ █▄▄█ ░█▄█░ █▀▀ ▒█▒█▒█
▒█░▒█ ▀▀▀ ▀░░▀ ░░▀░░ ▀░░▀ ▄█▄ 　 ▒█░▒█ ▀░░▀ ░░▀░░ ▀▀▀ ▒█░░▀█




































]])
if loopLag == false then 
break
end
end
end
end)

loopLag = false

Command('timeseal','???',{''},
function(args, plr)
if not plr.Name == admin then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify(players[1].." is now in the Time Seal")
local r = gPlayers[v].Backpack.keyinput
loopLag = true
while wait() do
r:FireServer("teleport", "\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111\n1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111")
r:FireServer("teleport", "\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"..players[1]..", Look into my eyes! \n\n\n                                 You're now in my genjutsu! \n\n\nTime Seal!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nnNigga ☺ Stop Fucking Annoying Me.\nNigga ☺ Stop Fucking Annoying Me.\n\n\n\nnNigga ☺ Stop Fucking Annoying Me.\n")
if loopLag == false then 
break
end
end
end
end)

Command('set','set of raiken fr',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "earthf")
r:FireServer("equipkey", "y", "lightninga")
r:FireServer("equipkey", "r", "icea")
r:FireServer("equipkey", "t", "leafww")
r:FireServer("equipkey", "mode", "itachisharingan2")
r:FireServer("equipkey", "powerup", "slugsage")
r:FireServer("equipkey", "b", "itachi21")
r:FireServer("equipkey", "g", "ftg")
r:FireServer("equipkey", "h", "earthb")
r:FireServer("equipkey", "f", "aburamec")
r:FireServer("equipkey", "comp", "gaara2")
r:FireServer("equipkey", "weapon", "nuibari")
r:FireServer("equipkey", "clan", "<3")
r:FireServer("equipkey", "village", "Baby No.")
r:FireServer("save")
     end
end)

Command('nopstaff','resets a moveset',{''},
function(args, plr)
if not plr.Name == admin then return end
local fir = game.Players.LocalPlayer.Character.RightHand.weapon.wep.Model:GetChildren()
for i = 1, #fir do
if fir[i]:FindFirstChild("blackflames") then
fir[i]:Destroy()
if fir[i]:FindFirstChild("Trail") then
fir[i].Trail:Destroy()
fir[i]:Destroy()
end
end
end
end)

Command('unlag','resets a moveset',{''},
function(args, plr)
if not plr.Name == admin then return end
loopLag = false
end)

Command('fv', '???',{},
function(args, plr)
if plr.Name ~= admin then return end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(134.306366, -91.5000229, 1949.45911, 0.996852815, -3.18059428e-08, -0.0792744607, 3.47410172e-08, 1, 3.564498743-08, 0.0792744607, -3.82868848e-08, 0.996852815)
end)

Command('unmreset1', 'unloop go to a player',{},
function(args, plr)
if not isAdmin(plr) then return end

	Notify("unlooped")
	loopMR = false
end)

Command('mreset','resets a moveset',{''},
function(args, plr)
if not isAdmin(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify("Reset "..players[1].."'s moveset")
r:FireServer("equipkey", "r", "")
r:FireServer("equipkey", "t", "")
r:FireServer("equipkey", "y", "")
r:FireServer("equipkey", "f", "")
r:FireServer("equipkey", "g", "")
r:FireServer("equipkey", "h", "")
r:FireServer("equipkey", "b", "")
r:FireServer("equipkey", "n", "")
r:FireServer("equipkey", "v", "")
r:FireServer("equipkey", "comp", "")
r:FireServer("equipkey", "weapon", "")
r:FireServer("save")
end
end)

Command('spins','spins player',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "spins" , "299")
r:FireServer("save")
    end
end)

Command('lcoins','coins player',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
loopCoins = true
while wait(1.2) do
r:FireServer("equipkey", "ryo1" , "1000000000")
r:FireServer("equipkey", "ryo2" , "1000000000")
if loopCoins == false then 
break
end
end
    end
end)

Command('unlcoins', 'unloop go to a player',{},
function(args, plr)
if not isStaff(plr) then return end

	Notify("unlooped")
	loopCoins = false
end)

Command('coins','coins player',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "ryo1" , "1000000000")
r:FireServer("equipkey", "ryo2" , "1000000000")
    end
end)

Command('bounty','infinitebounty player',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait(1) do
r:FireServer("equipkey", "bounty", "1000000")
end
    end
end)

--cosmetics
 
Command('belt','sasukebelt someone',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("cosmetic", "sasukebelt")
Notify('Gave '..players[1]..' sasuke belt')
     end
end)
 
Command('goggles','goggles someone',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("cosmetic", "goggles")
Notify('Gave '..players[1]..' goggles')
     end
end)
 
Command('spiral','spiralmask someone',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("cosmetic", "spiralmask")
Notify('Gave '..players[1]..' obito mask')
     end
end)
 
Command('akathat','akathat someone',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("cosmetic", "akatsuki")
Notify('Gave '..players[1]..' akat hat')
     end
end)
 
Command('guard','faceguard someone',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("cosmetic", "faceguard")
Notify('Gave '..players[1]..' face gaurd')
     end
end)
 
Command('fur','furcoat someone',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("cosmetic", "furcoat")
Notify('Gave '..players[1]..' fur coat')
     end
end)
 
Command('gourd','sandgourd someone',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("cosmetic", "sandgourd")
Notify('Gave '..players[1]..' sandgourd')
     end
end)

Command('lbounty','',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
loopBounty = true
while wait() do
r:FireServer("equipkey", "bounty", "600000")
r:FireServer("save")
if loopBounty == false then
break
end
end
end
end)

Command('unlbounty', 'unloop go to a player',{},
function(args, plr)
if not isStaff(plr) then return end

	Notify("unlooped")
	loopBounty = false
end)
 
--finish cosmetic
 
--companions
 
Command('pain','pain',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "pain")
Notify('Gave '..players[1]..' pain')
     end
end)
 
Command('kakashi','kakashi',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "kakashi")
Notify('Gave '..players[1]..' kakashi')
     end
end)
 
Command('itachi','itachi',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "itachi")
Notify('Gave '..players[1]..' itachi')
     end
end)
 
Command('nagato','nagato',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "nagato")
Notify('Gave '..players[1]..' nagato')
     end
end)
 
Command('minato','minato',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "minato")
Notify('Gave '..players[1]..' minato')
     end
end)
 
Command('tail1','tail1',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail1")
Notify('Gave '..players[1]..' 1st tail beast')
     end
end)
 
Command('tail2','tail2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail2")
Notify('Gave '..players[1]..' 2nd tail beast')
     end
end)
 
Command('tail3','tail3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail3")
Notify('Gave '..players[1]..' 3rd tail beast')
     end
end)
 
Command('tail4','tail4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail4")
Notify('Gave '..players[1]..' 4th tail beast')
     end
end)
 
Command('tail5','tail5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail5")
Notify('Gave '..players[1]..' 5th tail beast')
     end
end)
 
Command('tail6','tail6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail6")
Notify('Gave '..players[1]..' 6th tail beast')
     end
end)
 
Command('tail7','tail7',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail7")
Notify('Gave '..players[1]..' 7th tail beast')
     end
end)
 
Command('tail8','tail8',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail8")
Notify('Gave '..players[1]..' 8th tail beast')
     end
end)
 
Command('tail9','tail9',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "tail9")
Notify('Gave '..players[1]..' 9th tail beast')
     end
end)
 
Command('6pains','paths6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "paths6")
Notify('Gave '..players[1]..' 6 paths of pain')
     end
end)
 
Command('oldnar','narutothelast',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "narutothelast")
Notify('Gave '..players[1]..' naruto the last')
     end
end)
 
Command('oldsas','sasukethelast',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "sasukethelast")
Notify('Gave '..players[1]..' sasuke the last')
     end
end)
 
Command('nar','narutopts',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "narutopts")
Notify('Gave '..players[1]..' young naruto')
     end
end)
 
Command('sas','sasukepts',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "sasukepts")
Notify('Gave '..players[1]..' young sasuke')
     end
end)
 
Command('pug','pug',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "pug")
Notify('Gave '..players[1]..' pug')
     end
end)
 
Command('zab','zabuza2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "zabuza2")
Notify('Gave '..players[1]..' zabuza')
     end
end)
 
Command('jkakashi','kakashi2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "kakashi2")
Notify('Gave '..players[1]..' jonin kakashi')
     end
end)
 
Command('gaara','gaara2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "gaara2")
Notify('Gave '..players[1]..' gaara')
     end
end)
 
Command('haku','haku2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "haku2")
Notify('Gave '..players[1]..' haku')
     end
end)

Command('mad','madara2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "comp", "madara2")
Notify('Gave '..players[1]..' madara')
     end
end)
 
--end comps

Command('save','forcesave someone',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("save")
     end
end)

--Elements

Command('wind','fire',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire1')
r:FireServer("changeelement", "", "wind")
     end
end)
 
Command('wind2','fire2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire2')
r:FireServer("changeelement", "2", "wind")
     end
end)
 
Command('wind3','fire3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire3')
r:FireServer("changeelement", "3", "wind")
     end
end)
 
Command('wind4','fire4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire4')
r:FireServer("changeelement", "4", "wind")
     end
end)
 
Command('wind5','fire5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire5')
r:FireServer("changeelement", "5", "wind")
     end
end)
 
Command('wind6','fire6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire6')
r:FireServer("changeelement", "6", "wind")
     end
end)
 
Command('fire','fire',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire1')
r:FireServer("changeelement", "", "fire")
     end
end)
 
Command('fire2','fire2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire2')
r:FireServer("changeelement", "2", "fire")
     end
end)
 
Command('fire3','fire3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire3')
r:FireServer("changeelement", "3", "fire")
     end
end)
 
Command('fire4','fire4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire4')
r:FireServer("changeelement", "4", "fire")
     end
end)
 
Command('fire5','fire5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire5')
r:FireServer("changeelement", "5", "fire")
     end
end)
 
Command('fire6','fire6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
Notify('Gave '..players[1]..' fire6')
r:FireServer("changeelement", "6", "fire")
     end
end)

Command('sand','fire',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "sand")
     end
end)
 
Command('sand2','sand2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "sand")
     end
end)
 
Command('sand3','sand3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "sand")
     end
end)
 
Command('sand4','sand4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "sand")
     end
end)
 
Command('sand5','sand5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "sand")
     end
end)
 
Command('sand6','sand6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "sand")
     end
end)
 
Command('lightning','lightning',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "lightning")
     end
end)
 
Command('lightning2','lightning2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "lightning")
     end
end)
 
Command('lightning3','lightning3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "lightning")
     end
end)
 
Command('lightning4','lightning4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "lightning")
     end
end)
 
Command('lightning5','lightning5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "lightning")
     end
end)
 
Command('lightning6','lightning6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "lightning")
     end
end)
 
Command('dust','dust',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "dust")
     end
end)
 
Command('dust2','dust2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "dust")
     end
end)
 
Command('dust3','dust3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "dust")
     end
end)
 
Command('dust4','dust4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "dust")
     end
end)
 
Command('dust5','dust5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "dust")
     end
end)
 
Command('dust6','dust6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "dust")
     end
end)
 
Command('gold','gold',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "gold")
     end
end)
 
Command('gold2','gold2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "gold")
     end
end)
 
Command('gold3','gold3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "gold")
     end
end)
 
Command('gold4','gold4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "gold")
     end
end)
 
Command('gold5','gold5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "gold")
     end
end)
 
Command('gold6','gold6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "gold")
     end
end)
 
Command('earth','earth',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "earth")
     end
end)
 
Command('earth2','earth2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "earth")
     end
end)
 
Command('earth3','earth3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "earth")
     end
end)
 
Command('earth4','earth4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "earth")
     end
end)
 
Command('earth5','earth5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "earth")
     end
end)
 
Command('earth6','earth6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "earth")
     end
end)
 
Command('water','water',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "water")
     end
end)
 
Command('water2','water2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "water")
     end
end)
 
Command('water3','water3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "water")
     end
end)
 
Command('water4','water4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "water")
     end
end)
 
Command('water5','water5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "water")
     end
end)
 
Command('water6','water6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "water")
     end
end)
 
Command('yin','yin',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "yin")
     end
end)
 
Command('yin2','yin2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "yin")
     end
end)
 
Command('yin3','yin3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "yin")
     end
end)
 
Command('yin4','yin4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "yin")
     end
end)
 
Command('yin5','yin5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "yin")
     end
end)
 
Command('yin6','yin6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "yin")
     end
end)
 
Command('yang','yang',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "yang")
     end
end)
 
Command('yang2','yang2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "yang")
     end
end)
 
Command('yang3','yang3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "yang")
     end
end)
 
Command('yang4','yang4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "yang")
     end
end)
 
Command('yang5','yang5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "yang")
     end
end)
 
Command('yang6','yang6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "yang")
     end
end)
 
Command('sound','sound',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "sound")
     end
end)
 
Command('sound2','sound2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "sound")
     end
end)
 
Command('sound3','sound3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "sound")
     end
end)
 
Command('sound4','sound4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "sound")
     end
end)
 
Command('sound5','sound5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "sound")
     end
end)
 
Command('sound6','sound6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "sound")
     end
end)
 
Command('iron','iron',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "", "iron")
     end
end)
 
Command('iron2','iron2',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "2", "iron")
     end
end)
 
Command('iron3','iron3',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "3", "iron")
     end
end)
 
Command('iron4','iron4',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "4", "iron")
     end
end)
 
Command('iron5','iron5',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "5", "iron")
     end
end)
 
Command('iron6','iron6',{''},
function(args, plr)
if not isStaff(plr) then return end

    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("changeelement", "6", "iron")
     end
end)

--end elements

--kg activations

--kakashi sus

Command('mksus','hold c adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "kooksauce")
     end
end)

Command('rksus','on r adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "kooksauce")
     end
end)

Command('tksus','on t adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "kooksauce")
     end
end)

Command('yksus','on y adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "kooksauce")
     end
end)

Command('fksus','on f adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "kooksauce")
     end
end)

Command('gksus','on g adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "kooksauce")
     end
end)

Command('hksus','on h adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "kooksauce")
     end
end)

Command('vksus','on v adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "kooksauce")
     end
end)

Command('bksus','on b adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "kooksauce")
     end
end)

Command('nksus','on n adds kakashis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "kooksauce")
     end
end)

--end kakashi susanoo

--deidara

Command('mdeidara','hold c adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "deidara")
     end
end)

Command('rdeidara','on r adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "deidara")
     end
end)

Command('tdeidara','on t adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "deidara")
     end
end)

Command('ydeidara','on y adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "deidara")
     end
end)

Command('fdeidara','on f adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "deidara")
     end
end)

Command('gdeidara','on g adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "deidara")
     end
end)

Command('hdeidara','on h adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "deidara")
     end
end)

Command('vdeidara','on v adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "deidara")
     end
end)

Command('bdeidara','on b adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "deidara")
     end
end)

Command('ndeidara','on n adds deidara kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "deidara")
     end
end)

--end deidara

--bubble

Command('mbubble','hold c adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "bobble")
     end
end)

Command('rbubble','on r adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bobble")
     end
end)

Command('tbubble','on t adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bobble")
     end
end)

Command('ybubble','on y adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bobble")
     end
end)

Command('fbubble','on f adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bobble")
     end
end)

Command('gbubble','on g adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bobble")
     end
end)

Command('hbubble','on h adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bobble")
     end
end)

Command('vbubble','on v adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bobble")
     end
end)

Command('bbubble','on b adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bobble")
     end
end)

Command('nbubble','on n adds bubble kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bobble")
     end
end)

--end bubble

--shisui susanoo

Command('mshisus','hold c adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "shisauce")
     end
end)

Command('rshisus','on r adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "shisauce")
     end
end)

Command('tshisus','on t adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "shisauce")
     end
end)

Command('yshisus','on y adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "shisauce")
     end
end)

Command('fshisus','on f adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "shisauce")
     end
end)

Command('gshisus','on g adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "shisauce")
     end
end)

Command('hshisus','on h adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "shisauce")
     end
end)

Command('vshisus','on v adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "shisauce")
     end
end)

Command('bshisus','on b adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "shisauce")
     end
end)

Command('nshisus','on n adds shisui susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "shisauce")
     end
end)

--end shisui susanoo

--redsauce

Command('mitsus','hold c adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "redsauce")
     end
end)

Command('ritsus','on r adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "redsauce")
     end
end)

Command('titsus','on t adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "redsauce")
     end
end)

Command('yitsus','on y adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "redsauce")
     end
end)

Command('fitsus','on f adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "redsauce")
     end
end)

Command('gitsus','on g adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "redsauce")
     end
end)

Command('hitsus','on h adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "redsauce")
     end
end)

Command('vitsus','on v adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "redsauce")
     end
end)

Command('bitsus','on b adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "redsauce")
     end
end)

Command('nitsus','on n adds itachis susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "redsauce")
     end
end)

--end itachis susanoo

--sasukes ems

Command('msasems','hold c adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "halfsauce")
     end
end)

Command('rsasems','on r adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "halfsauce")
     end
end)

Command('tsasems','on t adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "halfsauce")
     end
end)

Command('ysasems','on y adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "halfsauce")
     end
end)

Command('fsasems','on f adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "halfsauce")
     end
end)

Command('gsasems','on g adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "halfsauce")
     end
end)

Command('hsasems','on h adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "halfsauce")
     end
end)

Command('vsasems','on v adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "halfsauce")
     end
end)

Command('bsasems','on b adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "halfsauce")
     end
end)

Command('nsasems','on n adds sasukes ems on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "halfsauce")
     end
end)

--end sasukes ems

--boil

Command('mboil','hold c adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "boil")
     end
end)

Command('rboil','on r adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "boil")
     end
end)

Command('tboil','on t adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "boil")
     end
end)

Command('yboil','on y adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "boil")
     end
end)

Command('fboil','on f adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "boil")
     end
end)

Command('gboil','on g adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "boil")
     end
end)

Command('hboil','on h adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "boil")
     end
end)

Command('vboil','on v adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "boil")
     end
end)

Command('bboil','on b adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "boil")
     end
end)

Command('nboil','on n adds boil kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "boil")
     end
end)

--end boil

--black flame

Command('mbflame','hold c adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "bflame")
     end
end)

Command('rbflame','on r adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bflame")
     end
end)

Command('tbflame','on t adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bflame")
     end
end)

Command('ybflame','on y adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bflame")
     end
end)

Command('fbflame','on f adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bflame")
     end
end)

Command('gbflame','on g adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bflame")
     end
end)

Command('hbflame','on h adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bflame")
     end
end)

Command('vbflame','on v adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bflame")
     end
end)

Command('bbflame','on b adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bflame")
     end
end)

Command('nbflame','on n adds black flame kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bflame")
     end
end)

--end black flame

--madara rinnegan

Command('mmadrinne','hold c adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "madrin")
     end
end)

Command('rmadrinne','on r adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "madrin")
     end
end)

Command('tmadrinne','on t adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "madrin")
     end
end)

Command('ymadrinne','on y adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "madrin")
     end
end)

Command('fmadrinne','on f adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "madrin")
     end
end)

Command('gmadrinne','on g adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "madrin")
     end
end)

Command('hmadrinne','on h adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "madrin")
     end
end)

Command('vmadrinne','on v adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "madrin")
     end
end)

Command('bmadrinne','on b adds madara rinnegan kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "madrin")
     end
end)

Command('nmadrinne','on n adds madara rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "madrin")
     end
end)

--end madara rinnegan

--sasukes susanoo

Command('mfsus','hold c adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "fullsauce")
     end
end)

Command('rfsus','on r adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "fullsauce")
     end
end)

Command('tfsus','on t adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "fullsauce")
     end
end)

Command('yfsus','on y adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "fullsauce")
     end
end)

Command('ffsus','on f adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "fullsauce")
     end
end)

Command('gfsus','on g adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "fullsauce")
     end
end)

Command('hfsus','on h adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "fullsauce")
     end
end)

Command('vfsus','on v adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "fullsauce")
     end
end)

Command('bfsus','on b adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "fullsauce")
     end
end)

Command('nfsus','on n adds sasukes susanoo on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "fullsauce")
     end
end)

--end sasukes susanoo

--obito rinnegan

Command('mobrinne','hold c adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "obitorinne")
     end
end)

Command('robrinne','on r adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "obitorinne")
     end
end)

Command('tobrinne','on t adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "obitorinne")
     end
end)

Command('yobrinne','on y adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "obitorinne")
     end
end)

Command('fobrinne','on f adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "obitorinne")
     end
end)

Command('gobrinne','on g adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "obitorinne")
     end
end)

Command('hobrinne','on h adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "obitorinne")
     end
end)

Command('vobrinne','on v adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "obitorinne")
     end
end)

Command('bobrinne','on b adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "obitorinne")
     end
end)

Command('nobrinne','on n adds obito rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "obitorinne")
     end
end)

--end obito rinnegan

--regular sharingan

Command('mshar','hold c adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "sharingan")
     end
end)

Command('rshar','on r adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sharingan")
     end
end)

Command('tshar','on t adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sharingan")
     end
end)

Command('yshar','on y adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sharingan")
     end
end)

Command('fshar','on f adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sharingan")
     end
end)

Command('gshar','on g adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sharingan")
     end
end)

Command('hshar','on h adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sharingan")
     end
end)

Command('vshar','on v adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sharingan")
     end
end)

Command('bshar','on b adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sharingan")
     end
end)

Command('nshar','on n adds sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sharingan")
     end
end)

--end regular sharingan

--regular byakugan

Command('mbyaku','hold c adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "byakugan")
     end
end)

Command('rbyaku','on r adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "byakugan")
     end
end)

Command('tbyaku','on t adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "byakugan")
     end
end)

Command('ybyaku','on y adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "byakugan")
     end
end)

Command('fbyaku','on f adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "byakugan")
     end
end)

Command('gbyaku','on g adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "byakugan")
     end
end)

Command('hbyaku','on h adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "byakugan")
     end
end)

Command('vbyaku','on v adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "byakugan")
     end
end)

Command('bbyaku','on b adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "byakugan")
     end
end)

Command('nbyaku','on n adds byakugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "byakugan")
     end
end)

--end regular byakugan

--ketsuryugan

Command('mketsu','hold c adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "ketsuryugan")
     end
end)

Command('rketsu','on r adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "ketsuryugan")
     end
end)

Command('tketsu','on t adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "ketsuryugan")
     end
end)

Command('yketsu','on y adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "ketsuryugan")
     end
end)

Command('fketsu','on f adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "ketsuryugan")
     end
end)

Command('gketsu','on g adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "ketsuryugan")
     end
end)

Command('hketsu','on h adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "ketsuryugan")
     end
end)

Command('vketsu','on v adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "ketsuryugan")
     end
end)

Command('bketsu','on b adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "ketsuryugan")
     end
end)

Command('nketsu','on n adds ketsuryugan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "ketsuryugan")
     end
end)

--end ketsuryugan

--itachi sharingan

Command('mitshar','hold c adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "itachisharingan")
     end
end)

Command('ritshar','on r adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "itachisharingan")
     end
end)

Command('titshar','on t adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "itachisharingan")
     end
end)

Command('yitshar','on y adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "itachisharingan")
     end
end)

Command('fitshar','on f adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "itachisharingan")
     end
end)

Command('gitshar','on g adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "itachisharingan")
     end
end)

Command('hitshar','on h adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "itachisharingan")
     end
end)

Command('vitshar','on v adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "itachisharingan")
     end
end)

Command('bitshar','on b adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "itachisharingan")
     end
end)

Command('nitshar','on n adds itachis sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "itachisharingan")
     end
end)

--end itachi sharingan

--nagatos rinnegan

Command('mnagrinne','hold c adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "nagringan")
     end
end)

Command('rnagrinne','on r adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "nagringan")
     end
end)

Command('tnagrinne','on t adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "nagringan")
     end
end)

Command('ynagrinne','on y adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "nagringan")
     end
end)

Command('fnagrinne','on f adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "nagringan")
     end
end)

Command('gnagrinne','on g adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "nagringan")
     end
end)

Command('hnagrinne','on h adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "nagringan")
     end
end)

Command('vnagrinne','on v adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "nagringan")
     end
end)

Command('bnagrinne','on b adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "nagringan")
     end
end)

Command('nnagrinne','on n adds nagatos rinnegan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "nagringan")
     end
end)

--end nagatos rinnegan

--shisui sharingan

Command('mshishar','hold c adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "shisuisharingan")
     end
end)

Command('rshishar','on r adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "shisuisharingan")
     end
end)

Command('tshishar','on t adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "shisuisharingan")
     end
end)

Command('yshishar','on y adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "shisuisharingan")
     end
end)

Command('fshishar','on f adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "shisuisharingan")
     end
end)

Command('gshishar','on g adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "shisuisharingan")
     end
end)

Command('hshishar','on h adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "shisuisharingan")
     end
end)

Command('vshishar','on v adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "shisuisharingan")
     end
end)

Command('bshishar','on b adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "shisuisharingan")
     end
end)

Command('nshishar','on n adds shisui sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "shisuisharingan")
     end
end)

--end shisui sharingan

--tenseigan

Command('mtensei','hold c adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "tenseigan")
Notify('Gave '..players[1]..' tensei on c')
     end
end)

Command('rtensei','on r adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "tenseigan")
     end
end)

Command('ttensei','on t adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "tenseigan")
     end
end)

Command('ytensei','on y adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "tenseigan")
     end
end)

Command('ftensei','on f adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "tenseigan")
     end
end)

Command('gtensei','on g adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "tenseigan")
     end
end)

Command('htensei','on h adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "tenseigan")
     end
end)

Command('vtensei','on v adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "tenseigan")
     end
end)

Command('btensei','on b adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "tenseigan")
     end
end)

Command('ntensei','on n adds tenseigan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "tenseigan")
     end
end)

--end tenseigan

--yinyang

Command('myinyan','hold c adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "yinyang")
     end
end)

Command('ryinyan','on r adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "yinyang")
     end
end)

Command('tyinyan','on t adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "yinyang")
     end
end)

Command('yyinyan','on y adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "yinyang")
     end
end)

Command('fyinyan','on f adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "yinyang")
     end
end)

Command('gyinyan','on g adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "yinyang")
     end
end)

Command('hyinyan','on h adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "yinyang")
     end
end)

Command('vyinyan','on v adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "yinyang")
     end
end)

Command('byinyan','on b adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "yinyang")
     end
end)

Command('nyinyan','on n adds yinyang on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "yinyang")
     end
end)

--end yinyang

--sasuke sharingan

Command('msasshar','hold c adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "sasukesharingan")
     end
end)

Command('rsasshar','on r adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sasukesharingan")
     end
end)

Command('tsasshar','on t adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sasukesharingan")
     end
end)

Command('ysasshar','on y adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sasukesharingan")
     end
end)

Command('fsasshar','on f adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sasukesharingan")
     end
end)

Command('gsasshar','on g adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sasukesharingan")
     end
end)

Command('hsasshar','on h adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sasukesharingan")
     end
end)

Command('vsasshar','on v adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sasukesharingan")
     end
end)

Command('bsasshar','on b adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sasukesharingan")
     end
end)

Command('nsasshar','on n adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sasukesharingan")
     end
end)

--end sasuke sharingan

--inuzuka

Command('minuzuka','hold c adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "inuzuka")
     end
end)

Command('rinuzuka','on r adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "inuzuka")
     end
end)

Command('tinuzuka','on t adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "inuzuka")
     end
end)

Command('yinuzuka','on y adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "inuzuka")
     end
end)

Command('finuzuka','on f adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "inuzuka")
     end
end)

Command('ginuzuka','on g adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "inuzuka")
     end
end)

Command('hinuzuka','on h adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "inuzuka")
     end
end)

Command('vinuzuka','on v adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "inuzuka")
     end
end)

Command('binuzuka','on b adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "inuzuka")
     end
end)

Command('ninuzuka','on n adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "inuzuka")
     end
end)

--end inuzuka

--madara sharingan

Command('mmadems','hold c adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "madarasharingan")
     end
end)

Command('rmadems','on r adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "madarasharingan")
     end
end)

Command('tmadems','on t adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "madarasharingan")
     end
end)

Command('ymadems','on y adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "madarasharingan")
     end
end)

Command('fmadems','on f adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "madarasharingan")
     end
end)

Command('gmadems','on g adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "madarasharingan")
     end
end)

Command('hmadems','on h adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "madarasharingan")
     end
end)

Command('vmadems','on v adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "madarasharingan")
     end
end)

Command('bmadems','on b adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "madarasharingan")
     end
end)

Command('nmadems','on n adds madara sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "madarasharingan")
     end
end)

--end madara sharingan

--kaguya

Command('mkaguya','hold c adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "kaguya")
     end
end)

Command('rkaguya','on r adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "kaguya")
     end
end)

Command('tkaguya','on t adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "kaguya")
     end
end)

Command('ykaguya','on y adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "kaguya")
     end
end)

Command('fkaguya','on f adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "kaguya")
     end
end)

Command('gkaguya','on g adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "kaguya")
     end
end)

Command('hkaguya','on h adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "kaguya")
     end
end)

Command('vkaguya','on v adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "kaguya")
     end
end)

Command('bkaguya','on b adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "kaguya")
     end
end)

Command('nkaguya','on n adds kaguya kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "kaguya")
     end
end)

--end kaguya

--obito sharingan

Command('mobshar','hold c adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "obitosharingan")
     end
end)

Command('robshar','on r adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "obitosharingan")
     end
end)

Command('tobshar','on t adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "obitosharingan")
     end
end)

Command('yobshar','on y adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "obitosharingan")
     end
end)

Command('fobshar','on f adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "obitosharingan")
     end
end)

Command('gobshar','on g adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "obitosharingan")
     end
end)

Command('hobshar','on h adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "obitosharingan")
     end
end)

Command('vobshar','on v adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "obitosharingan")
     end
end)

Command('bobshar','on b adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "obitosharingan")
     end
end)

Command('nobshar','on n adds obito sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "obitosharingan")
     end
end)

--end obito sharingan

--itachi sharingan2

Command('mitshar2','hold c adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "itachisharingan2")
     end
end)

Command('ritshar2','on r adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "itachisharingan2")
     end
end)

Command('titshar2','on t adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "itachisharingan2")
     end
end)

Command('yitshar2','on y adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "itachisharingan2")
     end
end)

Command('fitshar2','on f adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "itachisharingan2")
     end
end)

Command('gitshar2','on g adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "itachisharingan2")
     end
end)

Command('hitshar2','on h adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "itachisharingan2")
     end
end)

Command('vitshar2','on v adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "itachisharingan2")
     end
end)

Command('bitshar2','on b adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "itachisharingan2")
     end
end)

Command('nitshar2','on n adds itachi sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "itachisharingan2")
     end
end)

--end itachi sharingan

--sasukes sharingan2

Command('msasrinne','hold c adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "sasukesharingan2")
     end
end)

Command('rsasrinne','on r adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sasukesharingan2")
     end
end)

Command('tsasrinne','on t adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sasukesharingan2")
     end
end)

Command('ysasrinne','on y adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sasukesharingan2")
     end
end)

Command('fsasrinne','on f adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sasukesharingan2")
     end
end)

Command('gsasrinne','on g adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sasukesharingan2")
     end
end)

Command('hsasrinne','on h adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sasukesharingan2")
     end
end)

Command('vsasrinne','on v adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sasukesharingan2")
     end
end)

Command('bsasrinne','on b adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sasukesharingan2")
     end
end)

Command('nsasrinne','on n adds sasuke sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sasukesharingan2")
     end
end)

--end sasukes sharingan2

--black lightning

Command('mblight','hold c adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "blacklightning")
     end
end)

Command('rblight','on r adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "blacklightning")
     end
end)

Command('tblight','on t adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "blacklightning")
     end
end)

Command('yblight','on y adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "blacklightning")
     end
end)

Command('fblight','on f adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "blacklightning")
     end
end)

Command('gblight','on g adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "blacklightning")
     end
end)

Command('hblight','on h adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "blacklightning")
     end
end)

Command('vblight','on v adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "blacklightning")
     end
end)

Command('bblight','on b adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "blacklightning")
     end
end)

Command('nblight','on n adds black lightning on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "blacklightning")
     end
end)

--end black lightning

--puppet

Command('mpuppet','hold c adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "puppet")
     end
end)

Command('rpuppet','on r adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "puppet")
     end
end)

Command('tpuppet','on t adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "puppet")
     end
end)

Command('ypuppet','on y adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "puppet")
     end
end)

Command('fpuppet','on f adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "puppet")
     end
end)

Command('gpuppet','on g adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "puppet")
     end
end)

Command('hpuppet','on h adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "puppet")
     end
end)

Command('vpuppet','on v adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "puppet")
     end
end)

Command('bpuppet','on b adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "puppet")
     end
end)

Command('npuppet','on n adds puppet on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "puppet")
     end
end)

--end puppet

--dark release

Command('mdark','hold c adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "darkrelease")
     end
end)

Command('rdark','on r adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "darkrelease")
     end
end)

Command('tdark','on t adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "darkrelease")
     end
end)

Command('ydark','on y adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "darkrelease")
     end
end)

Command('fdark','on f adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "darkrelease")
     end
end)

Command('gdark','on g adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "darkrelease")
     end
end)

Command('hdark','on h adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "darkrelease")
     end
end)

Command('vdark','on v adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "darkrelease")
     end
end)

Command('bdark','on b adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "darkrelease")
     end
end)

Command('ndark','on n adds dark release on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "darkrelease")
     end
end)

--end dark release

--fidget sharingan

Command('mfidgetshar','hold c adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "fidget")
     end
end)

Command('rfidgetshar','on r adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "fidget")
     end
end)

Command('tfidgetshar','on t adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "fidget")
     end
end)

Command('yfidgetshar','on y adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "fidget")
     end
end)

Command('ffidgetshar','on f adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "fidget")
     end
end)

Command('gfidgetshar','on g adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "fidget")
     end
end)

Command('hfidgetshar','on h adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "fidget")
     end
end)

Command('vfidgetshar','on v adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "fidget")
     end
end)

Command('bfidgetshar','on b adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "fidget")
     end
end)

Command('nfidgetshar','on n adds fidget sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "fidget")
     end
end)

--end fidget sharingan

--byakugan2

Command('mbyaku2','hold c adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "byakugan2")
     end
end)

Command('rbyaku2','on r adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "byakugan2")
     end
end)

Command('tbyaku2','on t adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "byakugan2")
     end
end)

Command('ybyaku2','on y adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "byakugan2")
     end
end)

Command('fbyaku2','on f adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "byakugan2")
     end
end)

Command('gbyaku2','on g adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "byakugan2")
     end
end)

Command('hbyaku2','on h adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "byakugan2")
     end
end)

Command('vbyaku2','on v adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "byakugan2")
     end
end)

Command('bbyaku2','on b adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "byakugan2")
     end
end)

Command('nbyaku2','on n adds byakugan2 sharingan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "byakugan2")
     end
end)

--end byakugan2

--paper

Command('mpaper','hold c adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "paper")
     end
end)

Command('rpaper','on r adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "paper")
     end
end)

Command('tpaper','on t adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "paper")
     end
end)

Command('ypaper','on y adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "paper")
     end
end)

Command('fpaper','on f adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "paper")
     end
end)

Command('gpaper','on g adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "paper")
     end
end)

Command('hpaper','on h adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "paper")
     end
end)

Command('vpaper','on v adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "paper")
     end
end)

Command('bpaper','on b adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "paper")
     end
end)

Command('npaper','on n adds paper kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "paper")
     end
end)

Command('rpapera','on r adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "papera")
     end
end)

Command('tpapera','on t adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "papera")
     end
end)

Command('ypapera','on y adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "papera")
     end
end)

Command('fpapera','on f adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "papera")
     end
end)

Command('gpapera','on g adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "papera")
     end
end)

Command('hpapera','on h adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "papera")
     end
end)

Command('vpapera','on v adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "papera")
     end
end)

Command('bpapera','on b adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "papera")
     end
end)

Command('npapera','on n adds papera kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "papera")
     end
end)

Command('rpaperb','on r adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "paperb")
     end
end)

Command('tpaperb','on t adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "paperb")
     end
end)

Command('ypaperb','on y adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "paperb")
     end
end)

Command('fpaperb','on f adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "paperb")
     end
end)

Command('gpaperb','on g adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "paperb")
     end
end)

Command('hpaperb','on h adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "paperb")
     end
end)

Command('vpaperb','on v adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "paperb")
     end
end)

Command('bpaperb','on b adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "paperb")
     end
end)

Command('npaperb','on n adds paperb kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "paperb")
     end
end)

--end paper

--bolt

Command('mbolt','hold c adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "bolt")
     end
end)

Command('rbolt','on r adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bolt")
     end
end)

Command('tbolt','on t adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bolt")
     end
end)

Command('ybolt','on y adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bolt")
     end
end)

Command('fbolt','on f adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bolt")
     end
end)

Command('gbolt','on g adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bolt")
     end
end)

Command('hbolt','on h adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bolt")
     end
end)

Command('vbolt','on v adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bolt")
     end
end)

Command('bbolt','on b adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bolt")
     end
end)

Command('nbolt','on n adds bolt kg on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bolt")
     end
end)

--end bolt

--caringan

Command('mcari','hold c adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "cari")
     end
end)

Command('rcari','on r adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "cari")
     end
end)

Command('tcari','on t adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "cari")
     end
end)

Command('ycari','on y adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "cari")
     end
end)

Command('fcari','on f adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "cari")
     end
end)

Command('gcari','on g adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "cari")
     end
end)

Command('hcari','on h adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "cari")
     end
end)

Command('vcari','on v adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "cari")
     end
end)

Command('bcari','on b adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "cari")
     end
end)

Command('ncari','on n adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "cari")
     end
end)

--end caringan

--red haze

Command('mhaze','hold c adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "haze")
     end
end)

Command('rhaze','on r adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "haze")
     end
end)

Command('thaze','on t adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "haze")
     end
end)

Command('yhaze','on y adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "haze")
     end
end)

Command('fhaze','on f adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "haze")
     end
end)

Command('ghaze','on g adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "haze")
     end
end)

Command('hhaze','on h adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "haze")
     end
end)

Command('vhaze','on v adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "haze")
     end
end)

Command('bhaze','on b adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "haze")
     end
end)

Command('nhaze','on n adds red haze on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "haze")
     end
end)

--end red haze

------------------------

--kg moves

--kooksauce moves

--kooksauce first move

Command('rkooka','on r adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "kooksaucea")
     end
end)

Command('tkooka','on t adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "kooksaucea")
     end
end)

Command('ykooka','on y adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "kooksaucea")
     end
end)

Command('fkooka','on f adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "kooksaucea")
     end
end)

Command('gkooka','on g adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "kooksaucea")
     end
end)

Command('hkooka','on h adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "kooksaucea")
     end
end)

Command('vkooka','on v adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "kooksaucea")
     end
end)

Command('bkooka','on b adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "kooksaucea")
     end
end)

Command('nkooka','on n adds kakashis susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "kooksaucea")
     end
end)

--kooksauce second move

Command('rklb','on r adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "kooksauceb")
     end
end)

Command('tklb','on t adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "kooksauceb")
     end
end)

Command('yklb','on y adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "kooksauceb")
     end
end)

Command('fklb','on f adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "kooksauceb")
     end
end)

Command('gklb','on g adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "kooksauceb")
     end
end)

Command('hklb','on h adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "kooksauceb")
     end
end)

Command('vklb','on v adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "kooksauceb")
     end
end)

Command('bklb','on b adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "kooksauceb")
     end
end)

Command('nklb','on n adds kakashis susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "kooksauceb")
     end
end)

--end kooksauce moves

--deiadara moves

--diedara first move

Command('rdeidaraa','on r adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "deida")
     end
end)

Command('tdeidaraa','on t adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "deida")
     end
end)

Command('ydeidaraa','on y adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "deida")
     end
end)

Command('fdeidaraa','on f adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "deida")
     end
end)

Command('gdeidaraa','on g adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "deida")
     end
end)

Command('hdeidaraa','on h adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "deida")
     end
end)

Command('vdeidaraa','on v adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "deida")
     end
end)

Command('bdeidaraa','on b adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "deida")
     end
end)

Command('ndeidaraa','on n adds deidara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "deida")
     end
end)

--deidara second move

Command('rdeidarab','on r adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "deidb")
     end
end)

Command('tdeidarab','on t adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "deidb")
     end
end)

Command('ydeidarab','on y adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "deidb")
     end
end)

Command('fdeidarab','on f adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "deidb")
     end
end)

Command('gdeidarab','on g adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "deidb")
     end
end)

Command('hdeidarab','on h adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "deidb")
     end
end)

Command('vdeidarab','on v adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "deidb")
     end
end)

Command('bdeidarab','on b adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "deidb")
     end
end)

Command('ndeidarab','on n adds deidara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "deidb")
     end
end)

--end deidara moves

--bubble moves

--bubble first move

Command('rbubblea','on r adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bobblea")
     end
end)

Command('tbubblea','on t adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bobblea")
     end
end)

Command('ybubblea','on y adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bobblea")
     end
end)

Command('fbubblea','on f adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bobblea")
     end
end)

Command('gbubblea','on g adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bobblea")
     end
end)

Command('hbubblea','on h adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bobblea")
     end
end)

Command('vbubblea','on v adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bobblea")
     end
end)

Command('bbubblea','on b adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bobblea")
     end
end)

Command('nbubblea','on n adds bubble first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bobblea")
     end
end)

--bubble second move

Command('rbubbleb','on r adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bobbleb")
     end
end)

Command('tbubbleb','on t adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bobbleb")
     end
end)

Command('ybubbleb','on y adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bobbleb")
     end
end)

Command('fbubbleb','on f adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bobbleb")
     end
end)

Command('gbubbleb','on g adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bobbleb")
     end
end)

Command('hbubbleb','on h adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bobbleb")
     end
end)

Command('vbubbleb','on v adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bobbleb")
     end
end)

Command('bbubbleb','on b adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bobbleb")
     end
end)

Command('nbubbleb','on n adds bubble second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bobbleb")
     end
end)

--end bubble moves

--shisui susanoo moves

--shisui susanoo first move

Command('rshisusa','on r adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "shisaucea")
     end
end)

Command('tshisusa','on t adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "shisaucea")
     end
end)

Command('yshisusa','on y adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "shisaucea")
     end
end)

Command('fshisusa','on f adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "shisaucea")
     end
end)

Command('gshisusa','on g adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "shisaucea")
     end
end)

Command('hshisusa','on h adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "shisaucea")
     end
end)

Command('vshisusa','on v adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "shisaucea")
     end
end)

Command('bshisusa','on b adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "shisaucea")
     end
end)

Command('nshisusa','on n adds shisui susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "shisaucea")
     end
end)

--shisui susanoo second move

Command('rshisusb','on r adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "shisauceb")
     end
end)

Command('tshisusb','on t adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "shisauceb")
     end
end)

Command('yshisusb','on y adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "shisauceb")
     end
end)

Command('fshisusb','on f adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "shisauceb")
     end
end)

Command('gshisusb','on g adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "shisauceb")
     end
end)

Command('hshisusb','on h adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "shisauceb")
     end
end)

Command('vshisusb','on v adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "shisauceb")
     end
end)

Command('bshisusb','on b adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "shisauceb")
     end
end)

Command('nshisusb','on n adds shisui susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "shisauceb")
     end
end)

--end shisui susanoo moves

--itachi susanoo moves

--itachi susanoo first move

Command('ritsusa','on r adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "redsaucea")
     end
end)

Command('titsusa','on t adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "redsaucea")
     end
end)

Command('yitsusa','on y adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "redsaucea")
     end
end)

Command('fitsusa','on f adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "redsaucea")
     end
end)

Command('gitsusa','on g adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "redsaucea")
     end
end)

Command('hitsusa','on h adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "redsaucea")
     end
end)

Command('vitsusa','on v adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "redsaucea")
     end
end)

Command('bitsusa','on b adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "redsaucea")
     end
end)

Command('nitsusa','on n adds itachi susanoo first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "redsaucea")
     end
end)

--itachi susanoo second move

Command('ritsusb','on r adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "redsauceb")
     end
end)

Command('titsusb','on t adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "redsauceb")
     end
end)

Command('yitsusb','on y adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "redsauceb")
     end
end)

Command('fitsusb','on f adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "redsauceb")
     end
end)

Command('gitsusb','on g adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "redsauceb")
     end
end)

Command('hitsusb','on h adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "redsauceb")
     end
end)

Command('vitsusb','on v adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "redsauceb")
     end
end)

Command('bitsusb','on b adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "redsauceb")
     end
end)

Command('nitsusb','on n adds itachi susanoo second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "redsauceb")
     end
end)

--end itachi susanoo moves

--sasukes ems moves

--sasukes ems first move

Command('rsasemsa','on r adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "halfsaucea")
     end
end)

Command('tsasemsa','on t adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "halfsaucea")
     end
end)

Command('ysasemsa','on y adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "halfsaucea")
     end
end)

Command('fsasemsa','on f adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "halfsaucea")
     end
end)

Command('gsasemsa','on g adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "halfsaucea")
     end
end)

Command('hsasemsa','on h adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "halfsaucea")
     end
end)

Command('vsasemsa','on v adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "halfsaucea")
     end
end)

Command('bsasemsa','on b adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "halfsaucea")
     end
end)

Command('nsasemsa','on n adds sasukes ems first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "halfsaucea")
     end
end)

--sasukes ems second move

Command('rsasemsb','on r adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "halfsauceb")
     end
end)

Command('tsasemsb','on t adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "halfsauceb")
     end
end)

Command('ysasemsb','on y adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "halfsauceb")
     end
end)

Command('fsasemsb','on f adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "halfsauceb")
     end
end)

Command('gsasemsb','on g adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "halfsauceb")
     end
end)

Command('hsasemsb','on h adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "halfsauceb")
     end
end)

Command('vsasemsb','on v adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "halfsauceb")
     end
end)

Command('bsasemsb','on b adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "halfsauceb")
     end
end)

Command('nsasemsb','on n adds sasukes ems second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "halfsauceb")
     end
end)

--end sasukes ems moves

--boil moves

--boil first move

Command('rboila','on r adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "boila")
     end
end)

Command('tboila','on t adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "boila")
     end
end)

Command('yboila','on y adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "boila")
     end
end)

Command('fboila','on f adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "boila")
     end
end)

Command('gboila','on g adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "boila")
     end
end)

Command('hboila','on h adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "boila")
     end
end)

Command('vboila','on v adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "boila")
     end
end)

Command('bboila','on b adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "boila")
     end
end)

Command('nboila','on n adds boil first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "boila")
     end
end)

--boil second move

Command('rboilb','on r adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "boilb")
     end
end)

Command('tboilb','on t adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "boilb")
     end
end)

Command('yboilb','on y adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "boilb")
     end
end)

Command('fboilb','on f adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "boilb")
     end
end)

Command('gboilb','on g adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "boilb")
     end
end)

Command('hboilb','on h adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "boilb")
     end
end)

Command('vboilb','on v adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "boilb")
     end
end)

Command('bboilb','on b adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "boilb")
     end
end)

Command('nboilb','on n adds boil second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "boilb")
     end
end)

--end boil moves

--bflame moves

--bflame first move

Command('rbflamea','on r adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bflamea")
     end
end)

Command('tbflamea','on t adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bflamea")
     end
end)

Command('ybflamea','on y adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bflamea")
     end
end)

Command('fbflamea','on f adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bflamea")
     end
end)

Command('gbflamea','on g adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bflamea")
     end
end)

Command('hbflamea','on h adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bflamea")
     end
end)

Command('vbflamea','on v adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bflamea")
     end
end)

Command('bbflamea','on b adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bflamea")
     end
end)

Command('nbflamea','on n adds black flames first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bflamea")
     end
end)

--bflame second move

Command('rbflameb','on r adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bflameb")
     end
end)

Command('tbflameb','on t adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bflameb")
     end
end)

Command('ybflameb','on y adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bflameb")
     end
end)

Command('fbflameb','on f adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bflameb")
     end
end)

Command('gbflameb','on g adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bflameb")
     end
end)

Command('hbflameb','on h adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bflameb")
     end
end)

Command('vbflameb','on v adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bflameb")
     end
end)

Command('bbflameb','on b adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bflameb")
     end
end)

Command('nbflameb','on n adds black flames second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bflameb")
     end
end)

--end bflame moves

--madara rinnegan moves

--madara rinnegan first move

Command('rmadrinnea','on r adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "madrina")
     end
end)

Command('tmadrinnea','on t adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "madrina")
     end
end)

Command('ymadrinnea','on y adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "madrina")
     end
end)

Command('fmadrinnea','on f adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "madrina")
     end
end)

Command('gmadrinnea','on g adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "madrina")
     end
end)

Command('hmadrinnea','on h adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "madrina")
     end
end)

Command('vmadrinnea','on v adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "madrina")
     end
end)

Command('bmadrinnea','on b adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "madrina")
     end
end)

Command('nmadrinnea','on n adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "madrina")
     end
end)

--madara rinnegan second move

Command('rmadrinneb','on r adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "madrinb")
     end
end)

Command('tmadrinneb','on t adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "madrinb")
     end
end)

Command('ymadrinneb','on y adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "madrinb")
     end
end)

Command('fmadrinneb','on f adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "madrinb")
     end
end)

Command('gmadrinneb','on g adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "madrinb")
     end
end)

Command('hmadrinneb','on h adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "madrinb")
     end
end)

Command('vmadrinneb','on v adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "madrinb")
     end
end)

Command('bmadrinneb','on b adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "madrinb")
     end
end)

Command('nmadrinneb','on n adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "madrinb")
     end
end)

--end madara rinnegan moves

--sasukes susanoo moves

--sasukes susanoo first move

Command('rfsusa','on r adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sasukesusanooa")
     end
end)

Command('tfsusa','on t adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sasukesusanooa")
     end
end)

Command('yfsusa','on y adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sasukesusanooa")
     end
end)

Command('ffsusa','on f adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sasukesusanooa")
     end
end)

Command('gfsusa','on g adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sasukesusanooa")
     end
end)

Command('hfsusa','on h adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sasukesusanooa")
     end
end)

Command('vfsusa','on v adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sasukesusanooa")
     end
end)

Command('bfsusa','on b adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sasukesusanooa")
     end
end)

Command('nfsusa','on n adds madara rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sasukesusanooa")
     end
end)

--sasukes susanoo second move

Command('rfsusb','on r adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sasukesusanoob")
     end
end)

Command('tfsusb','on t adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sasukesusanoob")
     end
end)

Command('yfsusb','on y adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sasukesusanoob")
     end
end)

Command('ffsusb','on f adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sasukesusanoob")
     end
end)

Command('gfsusb','on g adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sasukesusanoob")
     end
end)

Command('hfsusb','on h adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sasukesusanoob")
     end
end)

Command('vfsusb','on v adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sasukesusanoob")
     end
end)

Command('bfsusb','on b adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sasukesusanoob")
     end
end)

Command('nfsusb','on n adds madara rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sasukesusanoob")
     end
end)

--end sasukes susanoo moves

--obito rinnegan moves

--obito rinnegan first move

Command('robrinnea','on r adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "obitora")
     end
end)

Command('tobrinnea','on t adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "obitora")
     end
end)

Command('yobrinnea','on y adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "obitora")
     end
end)

Command('fobrinnea','on f adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "obitora")
     end
end)

Command('gobrinnea','on g adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "obitora")
     end
end)

Command('hobrinnea','on h adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "obitora")
     end
end)

Command('vobrinnea','on v adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "obitora")
     end
end)

Command('bobrinnea','on b adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "obitora")
     end
end)

Command('nobrinnea','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "obitora")
     end
end)

--obito rinnegan second move

Command('robrinneb','on r adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "obitorb")
     end
end)

Command('tobrinneb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "obitorb")
     end
end)

Command('yobrinneb','on y adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "obitorb")
     end
end)

Command('fobrinneb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "obitorb")
     end
end)

Command('gobrinneb','on g adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "obitorb")
     end
end)

Command('hobrinneb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "obitorb")
     end
end)

Command('vobrinneb','on v adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "obitorb")
     end
end)

Command('bobrinneb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "obitorb")
     end
end)

Command('nobrinneb','on n adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "obitorb")
     end
end)

--end obito rinnegan moves

--sharingan moves

--sharingan first move

Command('rshara','on r adds sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "copysharingan")
     end
end)

Command('tshara','on t adds sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "copysharingan")
     end
end)

Command('yshara','on y adds sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "copysharingan")
     end
end)

Command('fshara','on f adds sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "copysharingan")
     end
end)

Command('gshara','on g adds sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "copysharingan")
     end
end)

Command('hshara','on h adds sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "copysharingan")
     end
end)

Command('vshara','on v adds sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "copysharingan")
     end
end)

Command('bshara','on b adds sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "copysharingan")
     end
end)

Command('nshara','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "copysharingan")
     end
end)

--sharingan second move

Command('rsharb','on r adds sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "genjutsusharingan")
     end
end)

Command('tsharb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "genjutsusharingan")
     end
end)

Command('ysharb','on y adds sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "genjutsusharingan")
     end
end)

Command('fsharb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "genjutsusharingan")
     end
end)

Command('gsharb','on g adds sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "genjutsusharingan")
     end
end)

Command('hsharb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "genjutsusharingan")
     end
end)

Command('vsharb','on v adds sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "genjutsusharingan")
     end
end)

Command('bsharb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "genjutsusharingan")
     end
end)

Command('nsharb','on n adds sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "genjutsusharingan")
     end
end)

--end sharingan moves

--lava moves

--lava first move

Command('rlavaa','on r adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "lavaa")
     end
end)

Command('tlavaa','on t adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "lavaa")
     end
end)

Command('ylavaa','on y adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "lavaa")
     end
end)

Command('flavaa','on f adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "lavaa")
     end
end)

Command('glavaa','on g adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "lavaa")
     end
end)

Command('hlavaa','on h adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "lavaa")
     end
end)

Command('vlavaa','on v adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "lavaa")
     end
end)

Command('blavaa','on b adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "lavaa")
     end
end)

Command('nlavaa','on n adds lava first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "lavaa")
     end
end)

--lava second move

Command('rlavab','on r adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "lavab")
     end
end)

Command('tlavab','on t adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "lavab")
     end
end)

Command('ysharb','on y adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "lavab")
     end
end)

Command('flavab','on f adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "lavab")
     end
end)

Command('glavab','on g adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "lavab")
     end
end)

Command('hlavab','on h adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "lavab")
     end
end)

Command('vlavab','on v adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "lavab")
     end
end)

Command('blavab','on b adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "lavab")
     end
end)

Command('nsharb','on n adds lava second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "lavab")
     end
end)

--lava third move

Command('rlavac','on r adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "lavac")
     end
end)

Command('tlavac','on t adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "lavac")
     end
end)

Command('ylavac','on y adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "lavac")
     end
end)

Command('flavac','on f adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "lavac")
     end
end)

Command('glavac','on g adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "lavac")
     end
end)

Command('hlavac','on h adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "lavac")
     end
end)

Command('vlavac','on v adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "lavac")
     end
end)

Command('blavac','on b adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "lavac")
     end
end)

Command('nlavac','on n adds lava third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "lavac")
     end
end)

--end lava moves

--wood moves

--wood first move

Command('rwooda','on r adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "wooda")
     end
end)

Command('twooda','on t adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "wooda")
     end
end)

Command('ywooda','on y adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "wooda")
     end
end)

Command('fwooda','on f adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "wooda")
     end
end)

Command('gwooda','on g adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "wooda")
     end
end)

Command('hwooda','on h adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "wooda")
     end
end)

Command('vwooda','on v adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "wooda")
     end
end)

Command('bwooda','on b adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "wooda")
     end
end)

Command('nwooda','on n adds wood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "wooda")
     end
end)

--wood second move

Command('rwoodb','on r adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "woodb")
     end
end)

Command('twoodb','on t adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "woodb")
     end
end)

Command('ywoodb','on y adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "woodb")
     end
end)

Command('fwoodb','on f adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "woodb")
     end
end)

Command('gwoodb','on g adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "woodb")
     end
end)

Command('hwoodb','on h adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "woodb")
     end
end)

Command('vwoodb','on v adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "woodb")
     end
end)

Command('bwoodb','on b adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "woodb")
     end
end)

Command('nwoodb','on n adds wood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "woodb")
     end
end)

--wood third move

Command('rwoodc','on r adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "woodc")
     end
end)

Command('twoodc','on t adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "woodc")
     end
end)

Command('ywoodc','on y adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "woodc")
     end
end)

Command('fwoodc','on f adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "woodc")
     end
end)

Command('gwoodc','on g adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "woodc")
     end
end)

Command('hwoodc','on h adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "woodc")
     end
end)

Command('vwoodc','on v adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "woodc")
     end
end)

Command('bwoodc','on b adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "woodc")
     end
end)

Command('nwoodc','on n adds wood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "woodc")
     end
end)

--end wood moves

--byakugan moves

--byakugan first move

Command('rtrigrams','on r adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "trigrams")
     end
end)

Command('ttrigrams','on t adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "trigrams")
     end
end)

Command('ytrigrams','on y adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "trigrams")
     end
end)

Command('ftrigrams','on f adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "trigrams")
     end
end)

Command('gtrigrams','on g adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "trigrams")
     end
end)

Command('htrigrams','on h adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "trigrams")
     end
end)

Command('vtrigrams','on v adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "trigrams")
     end
end)

Command('btrigrams','on b adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "trigrams")
     end
end)

Command('ntrigrams','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "trigrams")
     end
end)

--byakugan second move

Command('rrotation','on r adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "rotation")
     end
end)

Command('trotation','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "rotation")
     end
end)

Command('yrotation','on y adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "rotation")
     end
end)

Command('frotation','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "rotation")
     end
end)

Command('grotation','on g adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "rotation")
     end
end)

Command('hrotation','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "rotation")
     end
end)

Command('vrotation','on v adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "rotation")
     end
end)

Command('brotation','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "rotation")
     end
end)

Command('nrotation','on n adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "rotation")
     end
end)

--end byakugan moves

--crystal moves

--crystal first move

Command('rcrystala','on r adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "crystala")
     end
end)

Command('tcrystala','on t adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "crystala")
     end
end)

Command('ycrystala','on y adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "crystala")
     end
end)

Command('fcrystala','on f adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "crystala")
     end
end)

Command('gcrystala','on g adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "crystala")
     end
end)

Command('hcrystala','on h adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "crystala")
     end
end)

Command('vcrystala','on v adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "crystala")
     end
end)

Command('bcrystala','on b adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "crystala")
     end
end)

Command('ncrystala','on n adds crystal first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "crystala")
     end
end)

--crystal second move

Command('rcrystalb','on r adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "crystalb")
     end
end)

Command('tcrystalb','on t adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "crystalb")
     end
end)

Command('ycrystalb','on y adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "crystalb")
     end
end)

Command('fcrystalb','on f adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "crystalb")
     end
end)

Command('gcrystalb','on g adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "crystalb")
     end
end)

Command('hcrystalb','on h adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "crystalb")
     end
end)

Command('vcrystalb','on v adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "crystalb")
     end
end)

Command('bcrystalb','on b adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "crystalb")
     end
end)

Command('ncrystalb','on n adds crystal second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "crystalb")
     end
end)

--crystal third move

Command('rcrystalc','on r adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "crystalc")
     end
end)

Command('tcrystalc','on t adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "crystalc")
     end
end)

Command('ycrystalc','on y adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "crystalc")
     end
end)

Command('fcrystalc','on f adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "crystalc")
     end
end)

Command('gcrystalc','on g adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "crystalc")
     end
end)

Command('hcrystalc','on h adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "crystalc")
     end
end)

Command('vcrystalc','on v adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "crystalc")
     end
end)

Command('bcrystalc','on b adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "crystalc")
     end
end)

Command('ncrystalc','on n adds crystal third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "crystalc")
     end
end)

--end crystal moves

--explosion moves

--explosion first move

Command('rexplosa','on r adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "explosiona")
     end
end)

Command('texplosa','on t adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "explosiona")
     end
end)

Command('yexplosa','on y adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "explosiona")
     end
end)

Command('fexplosa','on f adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "explosiona")
     end
end)

Command('gexplosa','on g adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "explosiona")
     end
end)

Command('hexplosa','on h adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "explosiona")
     end
end)

Command('vexplosa','on v adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "explosiona")
     end
end)

Command('bexplosa','on b adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "explosiona")
     end
end)

Command('nexplosa','on n adds explosion first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "explosiona")
     end
end)

--explosion second move

Command('rexplosb','on r adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "explosionb")
     end
end)

Command('texplosb','on t adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "explosionb")
     end
end)

Command('yexplosb','on y adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "explosionb")
     end
end)

Command('fexplosb','on f adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "explosionb")
     end
end)

Command('gexplosb','on g adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "explosionb")
     end
end)

Command('hexplosb','on h adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "explosionb")
     end
end)

Command('vexplosb','on v adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "explosionb")
     end
end)

Command('bexplosb','on b adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "explosionb")
     end
end)

Command('nexplosb','on n adds explosion second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "explosionb")
     end
end)

--explosion third move

Command('rexplosc','on r adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "explosionc")
     end
end)

Command('texplosc','on t adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "explosionc")
     end
end)

Command('yexplosc','on y adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "explosionc")
     end
end)

Command('fexplosc','on f adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "explosionc")
     end
end)

Command('gexplosc','on g adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "explosionc")
     end
end)

Command('hexplosc','on h adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "explosionc")
     end
end)

Command('vexplosc','on v adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "explosionc")
     end
end)

Command('bexplosc','on b adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "explosionc")
     end
end)

Command('nexplosc','on n adds explosion third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "explosionc")
     end
end)

--end explosion moves

--scorch moves

--scorch first move

Command('rscorcha','on r adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "scorcha")
     end
end)

Command('tscorcha','on t adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "scorcha")
     end
end)

Command('yscorcha','on y adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "scorcha")
     end
end)

Command('fscorcha','on f adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "scorcha")
     end
end)

Command('gscorcha','on g adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "scorcha")
     end
end)

Command('hscorcha','on h adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "scorcha")
     end
end)

Command('vscorcha','on v adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "scorcha")
     end
end)

Command('bscorcha','on b adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "scorcha")
     end
end)

Command('nscorcha','on n adds scorch first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "scorcha")
     end
end)

--scorch second move

Command('rscorchb','on r adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "scorchb")
     end
end)

Command('tscorchb','on t adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "scorchb")
     end
end)

Command('yscorchb','on y adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "scorchb")
     end
end)

Command('fscorchb','on f adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "scorchb")
     end
end)

Command('gscorchb','on g adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "scorchb")
     end
end)

Command('hscorchb','on h adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "scorchb")
     end
end)

Command('vscorchb','on v adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "scorchb")
     end
end)

Command('bscorchb','on b adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "scorchb")
     end
end)

Command('nscorchb','on n adds scorch second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "scorchb")
     end
end)

--scorch third move

Command('rscorchc','on r adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "scorchc")
     end
end)

Command('tscorchc','on t adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "scorchc")
     end
end)

Command('yscorchc','on y adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "scorchc")
     end
end)

Command('fscorchc','on f adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "scorchc")
     end
end)

Command('gscorchc','on g adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "scorchc")
     end
end)

Command('hscorchc','on h adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "scorchc")
     end
end)

Command('vscorchc','on v adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "scorchc")
     end
end)

Command('bscorchc','on b adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "scorchc")
     end
end)

Command('nscorchc','on n adds scorch third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "scorchc")
     end
end)

--end scorch moves

--ketsuryugan moves

--ketsuryugan first move

Command('rketsua','on r adds ketsuryugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "ketsuryugana")
     end
end)

Command('tketsua','on t adds ketsuryugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "ketsuryugana")
     end
end)

Command('yketsua','on y adds ketsuryugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "ketsuryugana")
     end
end)

Command('fketsua','on f adds ketsuryugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "ketsuryugana")
     end
end)

Command('gketsua','on g adds ketsuryugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "ketsuryugana")
     end
end)

Command('hketsua','on h adds ketsuryugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "ketsuryugana")
     end
end)

Command('vketsua','on v adds ketsuryugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "ketsuryugana")
     end
end)

Command('bketsua','on b adds ketsuryugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "ketsuryugana")
     end
end)

Command('nketsua','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "ketsuryugana")
     end
end)

--ketsuryugan second move

Command('rketsub','on r adds ketsuryugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "ketsuryuganb")
     end
end)

Command('tketsub','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "ketsuryuganb")
     end
end)

Command('yketsub','on y adds ketsuryugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "ketsuryuganb")
     end
end)

Command('fketsub','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "ketsuryuganb")
     end
end)

Command('gketsub','on g adds ketsuryugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "ketsuryuganb")
     end
end)

Command('hketsub','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "ketsuryuganb")
     end
end)

Command('vketsub','on v adds ketsuryugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "ketsuryuganb")
     end
end)

Command('bketsub','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "ketsuryuganb")
     end
end)

Command('nketsub','on n adds ketsuryugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "ketsuryuganb")
     end
end)

--end ketsuryugan moves

--itachi sharingan moves

--itachi sharingan first move

Command('ritshara','on r adds itachi sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "susarm")
     end
end)

Command('titshara','on t adds itachi sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "susarm")
     end
end)

Command('yitshara','on y adds itachi sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "susarm")
     end
end)

Command('fitshara','on f adds itachi sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "susarm")
     end
end)

Command('gitshara','on g adds itachi sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "susarm")
     end
end)

Command('hitshara','on h adds itachi sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "susarm")
     end
end)

Command('vitshara','on v adds itachi sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "susarm")
     end
end)

Command('bitshara','on b adds itachi sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "susarm")
     end
end)

Command('nitshara','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "susarm")
     end
end)

--itachi sharingan second move

Command('ritsharb','on r adds itachi sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "blackflames")
     end
end)

Command('titsharb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "blackflames")
     end
end)

Command('yitsharb','on y adds itachi sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "blackflames")
     end
end)

Command('fitsharb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "blackflames")
     end
end)

Command('gitsharb','on g adds itachi sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "blackflames")
     end
end)

Command('hitsharb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "blackflames")
     end
end)

Command('vitsharb','on v adds itachi sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "blackflames")
     end
end)

Command('bitsharb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "blackflames")
     end
end)

Command('nitsharb','on n adds itachi sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "blackflames")
     end
end)

--end itachi sharingan moves

--nagato rinnegan moves

--nagato rinnegan first move

Command('rnagrinnea','on r adds nagato rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "nagringana")
     end
end)

Command('tnagrinnea','on t adds nagato rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "nagringana")
     end
end)

Command('ynagrinnea','on y adds nagato rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "nagringana")
     end
end)

Command('fnagrinnea','on f adds nagato rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "nagringana")
     end
end)

Command('gnagrinnea','on g adds nagato rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "nagringana")
     end
end)

Command('hnagrinnea','on h adds nagato rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "nagringana")
     end
end)

Command('vnagrinnea','on v adds nagato rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "nagringana")
     end
end)

Command('bnagrinnea','on b adds nagato rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "nagringana")
     end
end)

Command('nnagrinnea','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "nagringana")
     end
end)

--nagato rinnegan second move

Command('rnagrinneb','on r adds nagato rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "nagringanb")
     end
end)

Command('tnagrinneb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "nagringanb")
     end
end)

Command('ynagrinneb','on y adds nagato rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "nagringanb")
     end
end)

Command('fnagrinneb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "nagringanb")
     end
end)

Command('gnagrinneb','on g adds nagato rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "nagringanb")
     end
end)

Command('hnagrinneb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "nagringanb")
     end
end)

Command('vnagrinneb','on v adds nagato rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "nagringanb")
     end
end)

Command('bnagrinneb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "nagringanb")
     end
end)

Command('nnagrinneb','on n adds nagato rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "nagringanb")
     end
end)

--end nagato rinnegan moves

--shisui sharingan moves

--shisui sharingan first move

Command('rshishara','on r adds shisui sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "shisuisharingana")
     end
end)

Command('tshishara','on t adds shisui sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "shisuisharingana")
     end
end)

Command('yshishara','on y adds shisui sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "shisuisharingana")
     end
end)

Command('fshishara','on f adds shisui sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "shisuisharingana")
     end
end)

Command('gshishara','on g adds shisui sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "shisuisharingana")
     end
end)

Command('hshishara','on h adds shisui sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "shisuisharingana")
     end
end)

Command('vshishara','on v adds shisui sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "shisuisharingana")
     end
end)

Command('bshishara','on b adds shisui sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "shisuisharingana")
     end
end)

Command('nshishara','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "shisuisharingana")
     end
end)

--shisui sharingan second move

Command('rshisharb','on r adds shisui sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "shisuisharinganb")
     end
end)

Command('tshisharb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "shisuisharinganb")
     end
end)

Command('yshisharb','on y adds shisui sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "shisuisharinganb")
     end
end)

Command('fshisharb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "shisuisharinganb")
     end
end)

Command('gshisharb','on g adds shisui sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "shisuisharinganb")
     end
end)

Command('hshisharb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "shisuisharinganb")
     end
end)

Command('vshisharb','on v adds shisui sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "shisuisharinganb")
     end
end)

Command('bshisharb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "shisuisharinganb")
     end
end)

Command('nshisharb','on n adds shisui sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "shisuisharinganb")
     end
end)

--end shisui sharingan moves

--tenseigan moves

--tenseigan first move

Command('rtenseia','on r adds tenseigan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "tenseigana")
     end
end)

Command('ttenseia','on t adds tenseigan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "tenseigana")
     end
end)

Command('ytenseia','on y adds tenseigan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "tenseigana")
     end
end)

Command('ftenseia','on f adds tenseigan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "tenseigana")
     end
end)

Command('gtenseia','on g adds tenseigan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "tenseigana")
     end
end)

Command('htenseia','on h adds tenseigan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "tenseigana")
     end
end)

Command('vtenseia','on v adds tenseigan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "tenseigana")
     end
end)

Command('btenseia','on b adds tenseigan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "tenseigana")
     end
end)

Command('ntenseia','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "tenseigana")
     end
end)

--tenseigan second move

Command('rtenseib','on r adds tenseigan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "tenseiganb")
     end
end)

Command('ttenseib','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "tenseiganb")
     end
end)

Command('ytenseib','on y adds tenseigan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "tenseiganb")
     end
end)

Command('ftenseib','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "tenseiganb")
     end
end)

Command('gtenseib','on g adds tenseigan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "tenseiganb")
     end
end)

Command('htenseib','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "tenseiganb")
     end
end)

Command('vtenseib','on v adds tenseigan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "tenseiganb")
     end
end)

Command('btenseib','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "tenseiganb")
     end
end)

Command('ntenseib','on n adds tenseigan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "tenseiganb")
     end
end)

--end tenseigan moves

--yinyang moves

--yinyang first move

Command('ryinyanga','on r adds yinyang first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "yinyanga")
     end
end)

Command('tyinyanga','on t adds yinyang first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "yinyanga")
     end
end)

Command('yyinyanga','on y adds yinyang first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "yinyanga")
     end
end)

Command('fyinyanga','on f adds yinyang first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "yinyanga")
     end
end)

Command('gyinyanga','on g adds yinyang first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "yinyanga")
     end
end)

Command('hyinyanga','on h adds yinyang first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "yinyanga")
     end
end)

Command('vyinyanga','on v adds yinyang first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "yinyanga")
     end
end)

Command('byinyanga','on b adds yinyang first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "yinyanga")
     end
end)

Command('nyinyanga','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "yinyanga")
     end
end)

--yinyang second move

Command('ryinyangb','on r adds yinyang second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "yinyangb")
     end
end)

Command('tyinyangb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "yinyangb")
     end
end)

Command('yyinyangb','on y adds yinyang second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "yinyangb")
     end
end)

Command('fyinyangb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "yinyangb")
     end
end)

Command('gyinyangb','on g adds yinyang second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "yinyangb")
     end
end)

Command('hyinyangb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "yinyangb")
     end
end)

Command('vyinyangb','on v adds yinyang second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "yinyangb")
     end
end)

Command('byinyangb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "yinyangb")
     end
end)

Command('nyinyangb','on n adds yinyang second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "yinyangb")
     end
end)

--end yinyang moves

--sasukes sharingan moves

--sasukes sharingan first move

Command('rsasshara','on r adds sasuke sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "blackflames")
     end
end)

Command('tsasshara','on t adds sasuke sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "blackflames")
     end
end)

Command('ysasshara','on y adds sasuke sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "blackflames")
     end
end)

Command('fsasshara','on f adds sasuke sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "blackflames")
     end
end)

Command('gsasshara','on g adds sasuke sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "blackflames")
     end
end)

Command('hsasshara','on h adds sasuke sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "blackflames")
     end
end)

Command('vsasshara','on v adds sasuke sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "blackflames")
     end
end)

Command('bsasshara','on b adds sasuke sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "blackflames")
     end
end)

Command('nsasshara','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "blackflames")
     end
end)

--sasuke sharingan second move

Command('rsassharb','on r adds sasukesharinganb second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sasukesharinganb")
     end
end)

Command('tsassharb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sasukesharinganb")
     end
end)

Command('ysassharb','on y adds sasukesharinganb second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sasukesharinganb")
     end
end)

Command('fsassharb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sasukesharinganb")
     end
end)

Command('gsassharb','on g adds sasukesharinganb second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sasukesharinganb")
     end
end)

Command('hsassharb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sasukesharinganb")
     end
end)

Command('vsassharb','on v adds sasukesharinganb second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sasukesharinganb")
     end
end)

Command('bsassharb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sasukesharinganb")
     end
end)

Command('nsassharb','on n adds sasukesharinganb second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sasukesharinganb")
     end
end)

--end sasuke sharingan moves

--nara moves

--nara first move

Command('rnaraa','on r adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "naraa")
     end
end)

Command('tnaraa','on t adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "naraa")
     end
end)

Command('ynaraa','on y adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "naraa")
     end
end)

Command('fnaraa','on f adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "naraa")
     end
end)

Command('gnaraa','on g adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "naraa")
     end
end)

Command('hnaraa','on h adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "naraa")
     end
end)

Command('vnaraa','on v adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "naraa")
     end
end)

Command('bnaraa','on b adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "naraa")
     end
end)

Command('nnaraa','on n adds nara first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "naraa")
     end
end)

--nara second move

Command('rnarab','on r adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "narab")
     end
end)

Command('tnarab','on t adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "narab")
     end
end)

Command('ynarab','on y adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "narab")
     end
end)

Command('fnarab','on f adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "narab")
     end
end)

Command('gnarab','on g adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "narab")
     end
end)

Command('hnarab','on h adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "narab")
     end
end)

Command('vnarab','on v adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "narab")
     end
end)

Command('bnarab','on b adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "narab")
     end
end)

Command('nnarab','on n adds nara second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "narab")
     end
end)

--nara third move

Command('rnarac','on r adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "narac")
     end
end)

Command('tnarac','on t adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "narac")
     end
end)

Command('ynarac','on y adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "narac")
     end
end)

Command('fnarac','on f adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "narac")
     end
end)

Command('gnarac','on g adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "narac")
     end
end)

Command('hnarac','on h adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "narac")
     end
end)

Command('vnarac','on v adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "narac")
     end
end)

Command('bnarac','on b adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "narac")
     end
end)

Command('nnarac','on n adds nara third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "narac")
     end
end)

--end nara moves

--hozuki moves

--hozuki first move

Command('rhozukia','on r adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "hozukia")
     end
end)

Command('thozukia','on t adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "hozukia")
     end
end)

Command('yhozukia','on y adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "hozukia")
     end
end)

Command('fhozukia','on f adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "hozukia")
     end
end)

Command('ghozukia','on g adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "hozukia")
     end
end)

Command('hhozukia','on h adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "hozukia")
     end
end)

Command('vhozukia','on v adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "hozukia")
     end
end)

Command('bhozukia','on b adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "hozukia")
     end
end)

Command('nhozukia','on n adds hozuki first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "hozukia")
     end
end)

--hozuki second move

Command('rhozukib','on r adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "hozukib")
     end
end)

Command('thozukib','on t adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "hozukib")
     end
end)

Command('ysharb','on y adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "hozukib")
     end
end)

Command('fhozukib','on f adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "hozukib")
     end
end)

Command('ghozukib','on g adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "hozukib")
     end
end)

Command('hhozukib','on h adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "hozukib")
     end
end)

Command('vhozukib','on v adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "hozukib")
     end
end)

Command('bhozukib','on b adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "hozukib")
     end
end)

Command('bhozukib','on n adds hozuki second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "hozukib")
     end
end)

--madara susanoo

Command('mmadsus','hold c adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "madsauce")
     end
end)

Command('rmadsus','on r adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "madsauce")
     end
end)

Command('tmadsus','on t adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "madsauce")
     end
end)

Command('ymadsus','on y adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "madsauce")
     end
end)

Command('fmadsus','on f adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "madsauce")
     end
end)

Command('gmadsus','on g adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "madsauce")
     end
end)

Command('hmadsus','on h adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "madsauce")
     end
end)

Command('vmadsus','on v adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "madsauce")
     end
end)

Command('bmadsus','on b adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "madsauce")
     end
end)

Command('nmadsus','on n adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "madsauce")
     end
end)

--madara susanoo moves

Command('rmadsusa','on r adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "madsaucea")
     end
end)

Command('tmadsusa','on t adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "madsaucea")
     end
end)

Command('ymadsusa','on y adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "madsaucea")
     end
end)

Command('fmadsusa','on f adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "madsaucea")
     end
end)

Command('gmadsusa','on g adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "madsaucea")
     end
end)

Command('hmadsusa','on h adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "madsaucea")
     end
end)

Command('vmadsusa','on v adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "madsaucea")
     end
end)

Command('bmadsusa','on b adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "madsaucea")
     end
end)

Command('nmadsusa','on n adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "madsaucea")
     end
end)


Command('rmadsusb','on r adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "madsauceb")
     end
end)

Command('tmadsusb','on t adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "madsauceb")
     end
end)

Command('ymadsusb','on y adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "madsauceb")
     end
end)

Command('fmadsusb','on f adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "madsauceb")
     end
end)

Command('gmadsusb','on g adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "madsauceb")
     end
end)

Command('hmadsusb','on h adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "madsauceb")
     end
end)

Command('vmadsusb','on v adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "madsauceb")
     end
end)

Command('bmadsusb','on b adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "madsauceb")
     end
end)

Command('nmadsusb','on n adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "madsauceb")
     end
end)

--nothing

Command('mnothing','hold c adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "mode", "nothing")
     end
end)

Command('rnothing','on r adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "nothing")
     end
end)

Command('tnothing','on t adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "nothing")
     end
end)

Command('ynothing','on y adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "nothing")
     end
end)

Command('fnothing','on f adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "nothing")
     end
end)

Command('gnothing','on g adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "nothing")
     end
end)

Command('hnothing','on h adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "nothing")
     end
end)

Command('vnothing','on v adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "nothing")
     end
end)

Command('bnothing','on b adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "nothing")
     end
end)

Command('nnothing','on n adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "nothing")
     end
end)


Command('rnothinga','on r adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "nothinga")
     end
end)

Command('tnothinga','on t adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "nothinga")
     end
end)

Command('ynothinga','on y adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "nothinga")
     end
end)

Command('fnothinga','on f adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "nothinga")
     end
end)

Command('gnothinga','on g adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "nothinga")
     end
end)

Command('hnothinga','on h adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "nothinga")
     end
end)

Command('vnothinga','on v adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "nothinga")
     end
end)

Command('bnothinga','on b adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "nothinga")
     end
end)

Command('nnothinga','on n adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "nothinga")
     end
end)


Command('rnothingb','on r adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "nothingb")
     end
end)

Command('tnothingb','on t adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "nothingb")
     end
end)

Command('ynothingb','on y adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "nothingb")
     end
end)

Command('fnothingb','on f adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "nothingb")
     end
end)

Command('gnothingb','on g adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "nothingb")
     end
end)

Command('hnothingb','on h adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "nothingb")
     end
end)

Command('vnothingb','on v adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "nothingb")
     end
end)

Command('bnothingb','on b adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "nothingb")
     end
end)

Command('nnothingb','on n adds caringan on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "nothingb")
     end
end)

--hozuki third move

Command('rhozukic','on r adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "hozukic")
     end
end)

Command('thozukic','on t adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "hozukic")
     end
end)

Command('yhozukic','on y adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "hozukic")
     end
end)

Command('fhozukic','on f adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "hozukic")
     end
end)

Command('ghozukic','on g adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "hozukic")
     end
end)

Command('hhozukic','on h adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "hozukic")
     end
end)

Command('vhozukic','on v adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "hozukic")
     end
end)

Command('bhozukic','on b adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "hozukic")
     end
end)

Command('nhozukic','on n adds hozuki third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "hozukic")
     end
end)

--end hozuki moves

--senjuwood moves

--senjuwood first move

Command('rsenjuwooda','on r adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "senjuwooda")
     end
end)

Command('tsenjuwooda','on t adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "senjuwooda")
     end
end)

Command('ysenjuwooda','on y adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "senjuwooda")
     end
end)

Command('fsenjuwooda','on f adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "senjuwooda")
     end
end)

Command('gsenjuwooda','on g adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "senjuwooda")
     end
end)

Command('hsenjuwooda','on h adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "senjuwooda")
     end
end)

Command('vsenjuwooda','on v adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "senjuwooda")
     end
end)

Command('bsenjuwooda','on b adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "senjuwooda")
     end
end)

Command('nsenjuwooda','on n adds senjuwood first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "senjuwooda")
     end
end)

--senjuwood second move

Command('rsenjuwoodb','on r adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "senjuwoodb")
     end
end)

Command('tsenjuwoodb','on t adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "senjuwoodb")
     end
end)

Command('ysenjuwoodb','on y adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "senjuwoodb")
     end
end)

Command('fsenjuwoodb','on f adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "senjuwoodb")
     end
end)

Command('gsenjuwoodb','on g adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "senjuwoodb")
     end
end)

Command('hsenjuwoodb','on h adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "senjuwoodb")
     end
end)

Command('vsenjuwoodb','on v adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "senjuwoodb")
     end
end)

Command('bsenjuwoodb','on b adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "senjuwoodb")
     end
end)

Command('bsenjuwoodb','on n adds senjuwood second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "senjuwoodb")
     end
end)

--senjuwood third move

Command('rsenjuwoodc','on r adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "senjuwoodc")
     end
end)

Command('tsenjuwoodc','on t adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "senjuwoodc")
     end
end)

Command('ysenjuwoodc','on y adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "senjuwoodc")
     end
end)

Command('fsenjuwoodc','on f adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "senjuwoodc")
     end
end)

Command('gsenjuwoodc','on g adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "senjuwoodc")
     end
end)

Command('hsenjuwoodc','on h adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "senjuwoodc")
     end
end)

Command('vsenjuwoodc','on v adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "senjuwoodc")
     end
end)

Command('bsenjuwoodc','on b adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "senjuwoodc")
     end
end)

Command('nsenjuwoodc','on n adds senjuwood third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "senjuwoodc")
     end
end)

--end senjuwood moves

--inuzuka moves

--inuzuka first move

Command('rinuzukaa','on r adds inuzuka first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "inuzukaa")
     end
end)

Command('tinuzukaa','on t adds inuzuka first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "inuzukaa")
     end
end)

Command('yinuzukaa','on y adds inuzuka first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "inuzukaa")
     end
end)

Command('finuzukaa','on f adds inuzuka first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "inuzukaa")
     end
end)

Command('ginuzukaa','on g adds inuzuka first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "inuzukaa")
     end
end)

Command('hinuzukaa','on h adds inuzuka first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "inuzukaa")
     end
end)

Command('vinuzukaa','on v adds inuzuka first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "inuzukaa")
     end
end)

Command('binuzukaa','on b adds inuzuka first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "inuzukaa")
     end
end)

Command('ninuzukaa','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "inuzukaa")
     end
end)

--inuzuka second move

Command('rinuzukab','on r adds inuzuka second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "inuzukab")
     end
end)

Command('tinuzukab','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "inuzukab")
     end
end)

Command('yinuzukab','on y adds inuzuka second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "inuzukab")
     end
end)

Command('finuzukab','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "inuzukab")
     end
end)

Command('ginuzukab','on g adds inuzuka second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "inuzukab")
     end
end)

Command('hinuzukab','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "inuzukab")
     end
end)

Command('vinuzukab','on v adds inuzuka second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "inuzukab")
     end
end)

Command('binuzukab','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "inuzukab")
     end
end)

Command('ninuzukab','on n adds inuzuka second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "inuzukab")
     end
end)

--end inuzuka moves

--madara sharingan moves

--madara sharingan first move

Command('rmademsa','on r adds madara sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "izanagi")
     end
end)

Command('tmademsa','on t adds madara sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "izanagi")
     end
end)

Command('ymademsa','on y adds madara sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "izanagi")
     end
end)

Command('fmademsa','on f adds madara sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "izanagi")
     end
end)

Command('gmademsa','on g adds madara sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "izanagi")
     end
end)

Command('hmademsa','on h adds madara sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "izanagi")
     end
end)

Command('vmademsa','on v adds madara sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "izanagi")
     end
end)

Command('bmademsa','on b adds madara sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "izanagi")
     end
end)

Command('nmademsa','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "izanagi")
     end
end)

--madara sharingan second move

Command('mademsb','on r adds madara sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "madsus")
     end
end)

Command('tmademsb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "madsus")
     end
end)

Command('ymademsb','on y adds madara sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "madsus")
     end
end)

Command('fmademsb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "madsus")
     end
end)

Command('gmademsb','on g adds madara sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "madsus")
     end
end)

Command('hmademsb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "madsus")
     end
end)

Command('vmademsb','on v adds madara sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "madsus")
     end
end)

Command('bmademsb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "madsus")
     end
end)

Command('nmademsb','on n adds madara sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "madsus")
     end
end)

--end madara sharingan moves

--kaguya moves

--kaguya first move

Command('rkaguyaa','on r adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "kaguyaa")
     end
end)

Command('tkaguyaa','on t adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "kaguyaa")
     end
end)

Command('ykaguyaa','on y adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "kaguyaa")
     end
end)

Command('fkaguyaa','on f adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "kaguyaa")
     end
end)

Command('gkaguyaa','on g adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "kaguyaa")
     end
end)

Command('hkaguyaa','on h adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "kaguyaa")
     end
end)

Command('vkaguyaa','on v adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "kaguyaa")
     end
end)

Command('bkaguyaa','on b adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "kaguyaa")
     end
end)

Command('nkaguyaa','on n adds kaguya first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "kaguyaa")
     end
end)

--kaguya second move

Command('rkaguyab','on r adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "kaguyab")
     end
end)

Command('tkaguyab','on t adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "kaguyab")
     end
end)

Command('ykaguyab','on y adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "kaguyab")
     end
end)

Command('fkaguyab','on f adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "kaguyab")
     end
end)

Command('gkaguyab','on g adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "kaguyab")
     end
end)

Command('hkaguyab','on h adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "kaguyab")
     end
end)

Command('vkaguyab','on v adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "kaguyab")
     end
end)

Command('bkaguyab','on b adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "kaguyab")
     end
end)

Command('nkaguyab','on n adds kaguya second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "kaguyab")
     end
end)

--end kaguya moves

--obito sharingan moves

--obito sharingan first move

Command('robshara','on r adds obito sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "obitoa")
     end
end)

Command('tobshara','on t adds obito sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "obitoa")
     end
end)

Command('yobshara','on y adds obito sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "obitoa")
     end
end)

Command('fobshara','on f adds obito sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "obitoa")
     end
end)

Command('gobshara','on g adds obito sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "obitoa")
     end
end)

Command('hobshara','on h adds obito sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "obitoa")
     end
end)

Command('vobshara','on v adds obito sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "obitoa")
     end
end)

Command('bobshara','on b adds obito sharingan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "obitoa")
     end
end)

Command('nobshara','on n adds obito rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "obitoa")
     end
end)

--obito sharingan second move

Command('robsharb','on r adds obito sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "obitob")
     end
end)

Command('tobsharb','on t adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "obitob")
     end
end)

Command('yobsharb','on y adds obito sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "obitob")
     end
end)

Command('fobsharb','on f adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "obitob")
     end
end)

Command('gobsharb','on g adds obito sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "obitob")
     end
end)

Command('hobsharb','on h adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "obitob")
     end
end)

Command('vobsharb','on v adds obito sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "obitob")
     end
end)

Command('bobsharb','on b adds obito rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "obitob")
     end
end)

Command('nobsharb','on n adds obito sharingan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "obitob")
     end
end)

--end obito sharingan moves

--aburame moves

--aburame first move

Command('raburamea','on r adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "aburamea")
     end
end)

Command('taburamea','on t adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "aburamea")
     end
end)

Command('yaburamea','on y adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "aburamea")
     end
end)

Command('faburamea','on f adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "aburamea")
     end
end)

Command('gaburamea','on g adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "aburamea")
     end
end)

Command('haburamea','on h adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "aburamea")
     end
end)

Command('vaburamea','on v adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "aburamea")
     end
end)

Command('baburamea','on b adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "aburamea")
     end
end)

Command('naburamea','on n adds aburame first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "aburamea")
     end
end)

--aburame second move

Command('raburameb','on r adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "aburameb")
     end
end)

Command('taburameb','on t adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "aburameb")
     end
end)

Command('yaburameb','on y adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "aburameb")
     end
end)

Command('faburameb','on f adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "aburameb")
     end
end)

Command('gaburameb','on g adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "aburameb")
     end
end)

Command('haburameb','on h adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "aburameb")
     end
end)

Command('vaburameb','on v adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "aburameb")
     end
end)

Command('baburameb','on b adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "aburameb")
     end
end)

Command('naburameb','on n adds aburame second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "aburameb")
     end
end)

--aburame third move

Command('raburamec','on r adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "aburamec")
     end
end)

Command('taburamec','on t adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "aburamec")
     end
end)

Command('yaburamec','on y adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "aburamec")
     end
end)

Command('faburamec','on f adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "aburamec")
     end
end)

Command('gaburamec','on g adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "aburamec")
     end
end)

Command('haburamec','on h adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "aburamec")
     end
end)

Command('vaburamec','on v adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "aburamec")
     end
end)

Command('baburamec','on b adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "aburamec")
     end
end)

Command('naburamec','on n adds aburame third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "aburamec")
     end
end)

--end aburame moves

--itachi sharingan2 moves

--itachi sharingan2 first move

Command('ritshara2','on r adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "itachi21")
     end
end)

Command('titshara2','on t adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "itachi21")
     end
end)

Command('yitshara2','on y adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "itachi21")
     end
end)

Command('fitshara2','on f adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "itachi21")
     end
end)

Command('gitshara2','on g adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "itachi21")
     end
end)

Command('hitshara2','on h adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "itachi21")
     end
end)

Command('vitshara2','on v adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "itachi21")
     end
end)

Command('bitshara2','on b adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "itachi21")
     end
end)

Command('nitshara2','on n adds itachi sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "itachi21")
     end
end)

--itachi sharingan2 second move

Command('ritsharb2','on r adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "itachi22")
     end
end)

Command('titsharb2','on t adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "itachi22")
     end
end)

Command('yitsharb2','on y adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "itachi22")
     end
end)

Command('fitsharb2','on f adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "itachi22")
     end
end)

Command('gitsharb2','on g adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "itachi22")
     end
end)

Command('hitsharb2','on h adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "itachi22")
     end
end)

Command('vitsharb2','on v adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "itachi22")
     end
end)

Command('bitsharb2','on b adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "itachi22")
     end
end)

Command('nitsharb2','on n adds itachi sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "itachi22")
     end
end)

--end itachi sharingan2 moves

--sasuke rinnegan moves

--sasuke rinnegan first move

Command('rsasrinnea','on r adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sassharinp")
     end
end)

Command('tsasrinnea','on t adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sassharinp")
     end
end)

Command('ysasrinnea','on y adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sassharinp")
     end
end)

Command('fsasrinnea','on f adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sassharinp")
     end
end)

Command('gsasrinnea','on g adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sassharinp")
     end
end)

Command('hsasrinnea','on h adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sassharinp")
     end
end)

Command('vsasrinnea','on v adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sassharinp")
     end
end)

Command('bsasrinnea','on b adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sassharinp")
     end
end)

Command('nsasrinnea','on n adds sasuke sharingan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sassharinp")
     end
end)

--sasuke rinnegan second move

Command('rsasrinneb','on r adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sassharino")
     end
end)

Command('tsasrinneb','on t adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sassharino")
     end
end)

Command('ysasrinneb','on y adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sassharino")
     end
end)

Command('fsasrinneb','on f adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sassharino")
     end
end)

Command('gsasrinneb','on g adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sassharino")
     end
end)

Command('hsasrinneb','on h adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sassharino")
     end
end)

Command('vsasrinneb','on v adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sassharino")
     end
end)

Command('bsasrinneb','on b adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sassharino")
     end
end)

Command('nsasrinneb','on n adds sasuke sharingan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sassharino")
     end
end)

--end sasuke rinnegan moves

--black lightning moves

--black lightning first move

Command('rblighta','on r adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "blackla")
     end
end)

Command('tblighta','on t adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "blackla")
     end
end)

Command('yblighta','on y adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "blackla")
     end
end)

Command('fblighta','on f adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "blackla")
     end
end)

Command('gblighta','on g adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "blackla")
     end
end)

Command('hblighta','on h adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "blackla")
     end
end)

Command('vblighta','on v adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "blackla")
     end
end)

Command('bblighta','on b adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "blackla")
     end
end)

Command('nblighta','on n adds black lightning first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "blackla")
     end
end)

--black lightning second move

Command('rblightb','on r adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "blackla2")
     end
end)

Command('tblightb','on t adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "blackla2")
     end
end)

Command('yblightb','on y adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "blackla2")
     end
end)

Command('fblightb','on f adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "blackla2")
     end
end)

Command('gblightb','on g adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "blackla2")
     end
end)

Command('hblightb','on h adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "blackla2")
     end
end)

Command('vblightb','on v adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "blackla2")
     end
end)

Command('bblightb','on b adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "blackla2")
     end
end)

Command('nblightb','on n adds black lightning second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "blackla2")
     end
end)

--end black lightning moves

--puppet moves

--puppet first move

Command('rpuppeta','on r adds puppet first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "puppeta")
     end
end)

Command('tpuppeta','on t adds puppet first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "puppeta")
     end
end)

Command('ypuppeta','on y adds puppet first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "puppeta")
     end
end)

Command('fpuppeta','on f adds puppet first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "puppeta")
     end
end)

Command('gpuppeta','on g adds puppet first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "puppeta")
     end
end)

Command('hpuppeta','on h adds puppet first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "puppeta")
     end
end)

Command('vpuppeta','on v adds puppet first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "puppeta")
     end
end)

Command('bpuppeta','on b adds puppet first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "puppeta")
     end
end)

Command('npuppeta','on n adds puppet rinnegan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "puppeta")
     end
end)

--puppet second move

Command('rpuppetb','on r adds puppet second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "puppetb")
     end
end)

Command('tpuppetb','on t adds puppet rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "puppetb")
     end
end)

Command('ypuppetb','on y adds puppet second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "puppetb")
     end
end)

Command('fpuppetb','on f adds puppet rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "puppetb")
     end
end)

Command('gpuppetb','on g adds puppet second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "puppetb")
     end
end)

Command('hpuppetb','on h adds puppet rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "puppetb")
     end
end)

Command('vpuppetb','on v adds puppet second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "puppetb")
     end
end)

Command('bpuppetb','on b adds puppet rinnegan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "puppetb")
     end
end)

Command('npuppetb','on n adds puppet second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "puppetb")
     end
end)

--end puppet moves

--dark release moves

--dark release first move

Command('rdarka','on r adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "darkrel1")
     end
end)

Command('tdarka','on t adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "darkrel1")
     end
end)

Command('ydarka','on y adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "darkrel1")
     end
end)

Command('fdarka','on f adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "darkrel1")
     end
end)

Command('gdarka','on g adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "darkrel1")
     end
end)

Command('hdarka','on h adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "darkrel1")
     end
end)

Command('vdarka','on v adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "darkrel1")
     end
end)

Command('bdarka','on b adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "darkrel1")
     end
end)

Command('ndarka','on n adds dark release first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "darkrel1")
     end
end)

--dark release second move

Command('rdarkb','on r adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "darkrel2")
     end
end)

Command('tdarkb','on t adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "darkrel2")
     end
end)

Command('ydarkb','on y adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "darkrel2")
     end
end)

Command('fdarkb','on f adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "darkrel2")
     end
end)

Command('gdarkb','on g adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "darkrel2")
     end
end)

Command('hdarkb','on h adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "darkrel2")
     end
end)

Command('vdarkb','on v adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "darkrel2")
     end
end)

Command('bdarkb','on b adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "darkrel2")
     end
end)

Command('ndarkb','on n adds dark release second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "darkrel2")
     end
end)

--end dark release moves

--fidget moves

--fidget first move

Command('rfidgetshara','on r adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "fidgeta")
     end
end)

Command('tfidgetshara','on t adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "fidgeta")
     end
end)

Command('yfidgetshara','on y adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "fidgeta")
     end
end)

Command('ffidgetshara','on f adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "fidgeta")
     end
end)

Command('gfidgetshara','on g adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "fidgeta")
     end
end)

Command('hfidgetshara','on h adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "fidgeta")
     end
end)

Command('vfidgetshara','on v adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "fidgeta")
     end
end)

Command('bfidgetshara','on b adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "fidgeta")
     end
end)

Command('nfidgetshara','on n adds fidget first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "fidgeta")
     end
end)

--fidget second move

Command('rfidgetsharb','on r adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "fidgetb")
     end
end)

Command('tfidgetsharb','on t adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "fidgetb")
     end
end)

Command('yfidgetsharb','on y adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "fidgetb")
     end
end)

Command('ffidgetsharb','on f adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "fidgetb")
     end
end)

Command('gfidgetsharb','on g adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "fidgetb")
     end
end)

Command('hfidgetsharb','on h adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "fidgetb")
     end
end)

Command('vfidgetsharb','on v adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "fidgetb")
     end
end)

Command('bfidgetsharb','on b adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "fidgetb")
     end
end)

Command('nfidgetsharb','on n adds fidget second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "fidgetb")
     end
end)

--end fidget moves

--byakugan2 moves

--byakugan2 first move

Command('rbyakua2','on r adds byakugan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "byakugana")
     end
end)

Command('tbyakua2','on t adds byakugan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "byakugana")
     end
end)

Command('ybyakua2','on y adds byakugan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "byakugana")
     end
end)

Command('fbyakua2','on f adds byakugan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "byakugana")
     end
end)

Command('gbyakua2','on g adds byakugan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "byakugana")
     end
end)

Command('hbyakua2','on h adds byakugan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "byakugana")
     end
end)

Command('vbyakua2','on v adds byakugan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "byakugana")
     end
end)

Command('bbyakua2','on b adds byakugan2 first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "byakugana")
     end
end)

Command('nbyakua2','on n adds byakugan first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "byakugana")
     end
end)

--byakugan2 second move

Command('rbyakub2','on r adds byakugan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "byakuganb")
     end
end)

Command('tbyakub2','on t adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "byakuganb")
     end
end)

Command('ybyakub2','on y adds byakugan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "byakuganb")
     end
end)

Command('fbyakub2','on f adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "byakuganb")
     end
end)

Command('gbyakub2','on g adds byakugan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "byakuganb")
     end
end)

Command('hbyakub2','on h adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "byakuganb")
     end
end)

Command('vbyakub2','on v adds byakugan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "byakuganb")
     end
end)

Command('bbyakub2','on b adds byakugan second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "byakuganb")
     end
end)

Command('nbyakub2','on n adds byakugan2 second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "byakuganb")
     end
end)

--end byakugan2 moves

--storm moves

--storm first move

Command('rstorma','on r adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "storma")
     end
end)

Command('tstorma','on t adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "storma")
     end
end)

Command('ystorma','on y adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "storma")
     end
end)

Command('fstorma','on f adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "storma")
     end
end)

Command('gstorma','on g adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "storma")
     end
end)

Command('hstorma','on h adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "storma")
     end
end)

Command('vstorma','on v adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "storma")
     end
end)

Command('bstorma','on b adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "storma")
     end
end)

Command('nstorma','on n adds storm first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "storma")
     end
end)

--storm second move

Command('rstormb','on r adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "stormb")
     end
end)

Command('tstormb','on t adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "stormb")
     end
end)

Command('ysharb','on y adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "stormb")
     end
end)

Command('fstormb','on f adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "stormb")
     end
end)

Command('gstormb','on g adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "stormb")
     end
end)

Command('hstormb','on h adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "stormb")
     end
end)

Command('vstormb','on v adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "stormb")
     end
end)

Command('bstormb','on b adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "stormb")
     end
end)

Command('nsharb','on n adds storm second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "stormb")
     end
end)

--storm third move

Command('rstormc','on r adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "stormc")
     end
end)

Command('tstormc','on t adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "stormc")
     end
end)

Command('ystormc','on y adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "stormc")
     end
end)

Command('fstormc','on f adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "stormc")
     end
end)

Command('gstormc','on g adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "stormc")
     end
end)

Command('hstormc','on h adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "stormc")
     end
end)

Command('vstormc','on v adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "stormc")
     end
end)

Command('bstormc','on b adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "stormc")
     end
end)

Command('nstormc','on n adds storm third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "stormc")
     end
end)

--end storm moves

--ice moves

--ice first move

Command('ricea','on r adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "icea")
     end
end)

Command('ticea','on t adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "icea")
     end
end)

Command('yicea','on y adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "icea")
     end
end)

Command('ficea','on f adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "icea")
     end
end)

Command('gicea','on g adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "icea")
     end
end)

Command('hicea','on h adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "icea")
     end
end)

Command('vicea','on v adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "icea")
     end
end)

Command('bicea','on b adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "icea")
     end
end)

Command('nicea','on n adds ice first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "icea")
     end
end)

--ice second move

Command('riceb','on r adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "iceb")
     end
end)

Command('ticeb','on t adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "iceb")
     end
end)

Command('ysharb','on y adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "iceb")
     end
end)

Command('ficeb','on f adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "iceb")
     end
end)

Command('giceb','on g adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "iceb")
     end
end)

Command('hiceb','on h adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "iceb")
     end
end)

Command('viceb','on v adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "iceb")
     end
end)

Command('biceb','on b adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "iceb")
     end
end)

Command('nsharb','on n adds ice second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "iceb")
     end
end)

--ice third move

Command('ricec','on r adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "icec")
     end
end)

Command('ticec','on t adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "icec")
     end
end)

Command('yicec','on y adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "icec")
     end
end)

Command('ficec','on f adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "icec")
     end
end)

Command('gicec','on g adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "icec")
     end
end)

Command('hicec','on h adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "icec")
     end
end)

Command('vicec','on v adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "icec")
     end
end)

Command('bicec','on b adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "icec")
     end
end)

Command('nicec','on n adds ice third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "icec")
     end
end)

--end ice moves

--purple moves

--purple first move

Command('rpurplea','on r adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "purplea")
     end
end)

Command('tpurplea','on t adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "purplea")
     end
end)

Command('ypurplea','on y adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "purplea")
     end
end)

Command('fpurplea','on f adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "purplea")
     end
end)

Command('gpurplea','on g adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "purplea")
     end
end)

Command('hpurplea','on h adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "purplea")
     end
end)

Command('vpurplea','on v adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "purplea")
     end
end)

Command('bpurplea','on b adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "purplea")
     end
end)

Command('npurplea','on n adds purple first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "purplea")
     end
end)

--purple second move

Command('rpurpleb','on r adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "purpleb")
     end
end)

Command('tpurpleb','on t adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "purpleb")
     end
end)

Command('ypurpleb','on y adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "purpleb")
     end
end)

Command('fpurpleb','on f adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "purpleb")
     end
end)

Command('gpurpleb','on g adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "purpleb")
     end
end)

Command('hpurpleb','on h adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "purpleb")
     end
end)

Command('vpurpleb','on v adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "purpleb")
     end
end)

Command('bpurpleb','on b adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "purpleb")
     end
end)

Command('npurpleb','on n adds purple second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "purpleb")
     end
end)

--purple third move

Command('rpurplec','on r adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "purplec")
     end
end)

Command('tpurplec','on t adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "purplec")
     end
end)

Command('ypurplec','on y adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "purplec")
     end
end)

Command('fpurplec','on f adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "purplec")
     end
end)

Command('gpurplec','on g adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "purplec")
     end
end)

Command('hpurplec','on h adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "purplec")
     end
end)

Command('vpurplec','on v adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "purplec")
     end
end)

Command('bpurplec','on b adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "purplec")
     end
end)

Command('npurplec','on n adds purple third move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "purplec")
     end
end)

--end purple moves

--cari moves

--cari first move

Command('rcaria','on r adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "caria")
     end
end)

Command('tcaria','on t adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "caria")
     end
end)

Command('ycaria','on y adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "caria")
     end
end)

Command('fcaria','on f adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "caria")
     end
end)

Command('gcaria','on g adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "caria")
     end
end)

Command('hcaria','on h adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "caria")
     end
end)

Command('vcaria','on v adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "caria")
     end
end)

Command('bcaria','on b adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "caria")
     end
end)

Command('ncaria','on n adds cari first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "caria")
     end
end)

--cari second move

Command('rcarib','on r adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "carib")
     end
end)

Command('tcarib','on t adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "carib")
     end
end)

Command('ycarib','on y adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "carib")
     end
end)

Command('fcarib','on f adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "carib")
     end
end)

Command('gcarib','on g adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "carib")
     end
end)

Command('hcarib','on h adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "carib")
     end
end)

Command('vcarib','on v adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "carib")
     end
end)

Command('bcarib','on b adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "carib")
     end
end)

Command('ncarib','on n adds cari second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "carib")
     end
end)

--end cari moves

--haze moves

--haze first move

Command('rhazea','on r adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "hazea")
     end
end)

Command('thazea','on t adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "hazea")
     end
end)

Command('yhazea','on y adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "hazea")
     end
end)

Command('fhazea','on f adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "hazea")
     end
end)

Command('ghazea','on g adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "hazea")
     end
end)

Command('hhazea','on h adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "hazea")
     end
end)

Command('vhazea','on v adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "hazea")
     end
end)

Command('bhazea','on b adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "hazea")
     end
end)

Command('nhazea','on n adds haze first move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "hazea")
     end
end)

--haze second move

Command('rhazeb','on r adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "hazeb")
     end
end)

Command('thazeb','on t adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "hazeb")
     end
end)

Command('yhazeb','on y adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "hazeb")
     end
end)

Command('fhazeb','on f adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "hazeb")
     end
end)

Command('ghazeb','on g adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "hazeb")
     end
end)

Command('hhazeb','on h adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "hazeb")
     end
end)

Command('vhazeb','on v adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "hazeb")
     end
end)

Command('bhazeb','on b adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "hazeb")
     end
end)

Command('nhazeb','on n adds haze second move on player',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "hazeb")
     end
end)

--end haze moves

--weapons

Command('boils','boils swords',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "boils")
Notify('Gave '..players[1]..' boils swords')
     end
end)

Command('thunder','thundersaaa swords',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "thundersaaa")
Notify('Gave '..players[1]..' thundersaaa swords')
     end
end)

Command('madsword','madaras rinnegan swords',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "mad")
Notify('Gave '..players[1]..' mad rin swords')
     end
end)

Command('staff','yinyang kg sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "yinyang")
Notify('Gave '..players[1]..' yin yang staff')
     end
end)

Command('srsword','sasukes rinnegan sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "sasukeswordmode")
Notify('Gave '..players[1]..' sasuke sword')
     end
end)

Command('paper','konans sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "konansword")
Notify('Gave '..players[1]..' paper sword')
     end
end)

--end weapons

--sub jutsu modes

--jin cloak

Command('rjin','jinc r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "jinc")
Notify('Gave '..players[1]..' jinc on r')
end
end)

Command('tjin','jinc t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "jinc")
Notify('Gave '..players[1]..' jinc on t')
end
end)

Command('yjin','jinc y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "jinc")
Notify('Gave '..players[1]..' jinc on y')
end
end)

Command('fjin','jinc f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "jinc")
Notify('Gave '..players[1]..' jinc on f')
end
end)

Command('gjin','jinc g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "jinc")
Notify('Gave '..players[1]..' jinc on g')
end
end)

Command('hjin','jinc h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "jinc")
Notify('Gave '..players[1]..' jinc on h')
end
end)

Command('vjin','jinc v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "jinc")
Notify('Gave '..players[1]..' jinc on v')
end
end)

Command('bjin','jinc b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "jinc")
Notify('Gave '..players[1]..' jinc on b')
end
end)

Command('njin','jinc n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "jinc")
Notify('Gave '..players[1]..' jinc on n')
end
end)

--end jin cloak

--cursemark

Command('rcurse','cursemark r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "cursemark")
Notify('Gave '..players[1]..' cursemark on r')
end
end)

Command('tcurse','cursemark t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "cursemark")
Notify('Gave '..players[1]..' cursemark on t')
end
end)

Command('ycurse','cursemark y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "cursemark")
Notify('Gave '..players[1]..' cursemark on y')
end
end)

Command('fcurse','cursemark f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "cursemark")
Notify('Gave '..players[1]..' cursemark on f')
end
end)

Command('gcurse','cursemark g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "cursemark")
Notify('Gave '..players[1]..' cursemark on g')
end
end)

Command('hcurse','cursemark h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "cursemark")
Notify('Gave '..players[1]..' cursemark on h')
end
end)

Command('vcurse','cursemark v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "cursemark")
Notify('Gave '..players[1]..' cursemark on v')
end
end)

Command('bcurse','cursemark b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "cursemark")
Notify('Gave '..players[1]..' cursemark on b')
end
end)

Command('ncurse','cursemark n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "cursemark")
Notify('Gave '..players[1]..' cursemark on n')
end
end)

--end cursemark

--dragonsage

Command('rdragon','dragonsage r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on r')
end
end)

Command('tdragon','dragonsage t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on t')
end
end)

Command('ydragon','dragonsage y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on y')
end
end)

Command('fdragon','dragonsage f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on f')
end
end)

Command('gdragon','dragonsage g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on g')
end
end)

Command('hdragon','dragonsage h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on h')
end
end)

Command('vdragon','dragonsage v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on v')
end
end)

Command('bdragon','dragonsage b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on b')
end
end)

Command('ndragon','dragonsage n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "dragonsage")
Notify('Gave '..players[1]..' dragonsage on n')
end
end)

--end dragonsage

--slugsage

Command('rslug','slugsage r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "slugsage")
Notify('Gave '..players[1]..' slugsage on r')
end
end)

Command('tslug','slugsage t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "slugsage")
Notify('Gave '..players[1]..' slugsage on t')
end
end)

Command('yslug','slugsage y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "slugsage")
Notify('Gave '..players[1]..' slugsage on y')
end
end)

Command('fslug','slugsage f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "slugsage")
Notify('Gave '..players[1]..' slugsage on f')
end
end)

Command('gslug','slugsage g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "slugsage")
Notify('Gave '..players[1]..' slugsage on g')
end
end)

Command('hslug','slugsage h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "slugsage")
Notify('Gave '..players[1]..' slugsage on h')
end
end)

Command('vslug','slugsage v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "slugsage")
Notify('Gave '..players[1]..' slugsage on v')
end
end)

Command('bslug','slugsage b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "slugsage")
Notify('Gave '..players[1]..' slugsage on b')
end
end)

Command('nslug','slugsage n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "slugsage")
Notify('Gave '..players[1]..' slugsage on n')
end
end)

--end slugsage

--toadsage

Command('rtoad','toadsage r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "toadsage")
Notify('Gave '..players[1]..' toadsage on r')
end
end)

Command('ttoad','toadsage t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "toadsage")
Notify('Gave '..players[1]..' toadsage on t')
end
end)

Command('ytoad','toadsage y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "toadsage")
Notify('Gave '..players[1]..' toadsage on y')
end
end)

Command('ftoad','toadsage f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "toadsage")
Notify('Gave '..players[1]..' toadsage on f')
end
end)

Command('gtoad','toadsage g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "toadsage")
Notify('Gave '..players[1]..' toadsage on g')
end
end)

Command('htoad','toadsage h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "toadsage")
Notify('Gave '..players[1]..' toadsage on h')
end
end)

Command('vtoad','toadsage v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "toadsage")
Notify('Gave '..players[1]..' toadsage on v')
end
end)

Command('btoad','toadsage b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "toadsage")
Notify('Gave '..players[1]..' toadsage on b')
end
end)

Command('ntoad','toadsage n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "toadsage")
Notify('Gave '..players[1]..' toadsage on n')
end
end)

--end toadsage


Command('rdynentry','dynamicentry r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on r')
end
end)

Command('tdynentry','dynamicentry t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on t')
end
end)

Command('ydynentry','dynamicentry y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on y')
end
end)

Command('fdynentry','dynamicentry f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on f')
end
end)

Command('gdynentry','dynamicentry g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on g')
end
end)

Command('hdynentry','dynamicentry h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on h')
end
end)

Command('vdynentry','dynamicentry v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on v')
end
end)

Command('bdynentry','dynamicentry b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on b')
end
end)

Command('ndynentry','dynamicentry n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "dynamicentry")
Notify('Gave '..players[1]..' dynamicentry on n')
end
end)


Command('rdynastun','dynamicstun r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on r')
end
end)

Command('tdynastun','dynamicstun t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on t')
end
end)

Command('ydynastun','dynamicstun y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on y')
end
end)

Command('fdynastun','dynamicstun f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on f')
end
end)

Command('gdynastun','dynamicstun g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on g')
end
end)

Command('hdynastun','dynamicstun h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on h')
end
end)

Command('vdynastun','dynamicstun v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on v')
end
end)

Command('bdynastun','dynamicstun b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on b')
end
end)

Command('ndynastun','dynamicstun n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "dynamicstun")
Notify('Gave '..players[1]..' dynamicstun on n')
end
end)


Command('rleafhurr','leafhurricane r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on r')
end
end)

Command('tleafhurr','leafhurricane t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on t')
end
end)

Command('yleafhurr','leafhurricane y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on y')
end
end)

Command('fleafhurr','leafhurricane f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on f')
end
end)

Command('gleafhurr','leafhurricane g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on g')
end
end)

Command('hleafhurr','leafhurricane h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on h')
end
end)

Command('vleafhurr','leafhurricane v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on v')
end
end)

Command('bleafhurr','leafhurricane b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on b')
end
end)

Command('nleafhurr','leafhurricane n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "leafhurricane")
Notify('Gave '..players[1]..' leafhurricane on n')
end
end)


Command('rdragfcom','dragonfurycombo r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on r')
end
end)

Command('tdragfcom','dragonfurycombo t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on t')
end
end)

Command('ydragfcom','dragonfurycombo y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on y')
end
end)

Command('fdragfcom','dragonfurycombo f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on f')
end
end)

Command('gdragfcom','dragonfurycombo g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on g')
end
end)

Command('hdragfcom','dragonfurycombo h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on h')
end
end)

Command('vdragfcom','dragonfurycombo v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on v')
end
end)

Command('bdragfcom','dragonfurycombo b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on b')
end
end)

Command('ndragfcom','dragonfurycombo n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "dragonfurycombo")
Notify('Gave '..players[1]..' dragonfurycombo on n')
end
end)


Command('rfinflick','fingerflick r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on r')
end
end)

Command('tfinflick','fingerflick t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on t')
end
end)

Command('yfinflick','fingerflick y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on y')
end
end)

Command('ffinflick','fingerflick f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on f')
end
end)

Command('gfinflick','fingerflick g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on g')
end
end)

Command('hfinflick','fingerflick h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on h')
end
end)

Command('vfinflick','fingerflick v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on v')
end
end)

Command('bfinflick','fingerflick b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on b')
end
end)

Command('nfinflick','fingerflick n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "fingerflick")
Notify('Gave '..players[1]..' fingerflick on n')
end
end)


Command('rflamfis','flamefist r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "flamefist")
Notify('Gave '..players[1]..' flamefist on r')
end
end)

Command('tflamfis','flamefist t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "flamefist")
Notify('Gave '..players[1]..' flamefist on t')
end
end)

Command('yflamfis','flamefist y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "flamefist")
Notify('Gave '..players[1]..' flamefist on y')
end
end)

Command('fflamfis','flamefist f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "flamefist")
Notify('Gave '..players[1]..' flamefist on f')
end
end)

Command('gflamfis','flamefist g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "flamefist")
Notify('Gave '..players[1]..' flamefist on g')
end
end)

Command('hflamfis','flamefist h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "flamefist")
Notify('Gave '..players[1]..' flamefist on h')
end
end)

Command('vflamfis','flamefist v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "flamefist")
Notify('Gave '..players[1]..' flamefist on v')
end
end)

Command('bflamfis','flamefist b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "flamefist")
Notify('Gave '..players[1]..' flamefist on b')
end
end)

Command('nflamfis','flamefist n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "flamefist")
Notify('Gave '..players[1]..' flamefist on n')
end
end)


Command('rprimalot','primarylotus r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on r')
end
end)

Command('tprimalot','primarylotus t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on t')
end
end)

Command('yprimalot','primarylotus y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on y')
end
end)

Command('fprimalot','primarylotus f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on f')
end
end)

Command('gprimalot','primarylotus g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on g')
end
end)

Command('hprimalot','primarylotus h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on h')
end
end)

Command('vprimalot','primarylotus v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on v')
end
end)

Command('bprimalot','primarylotus b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on b')
end
end)

Command('nprimalot','primarylotus n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "primarylotus")
Notify('Gave '..players[1]..' primarylotus on n')
end
end)

Command('rleafww','leafww r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "leafww")
Notify('Gave '..players[1]..' leafww on r')
end
end)

Command('tleafww','leafww t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "leafww")
Notify('Gave '..players[1]..' leafww on t')
end
end)

Command('yleafww','leafww y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "leafww")
Notify('Gave '..players[1]..' leafww on y')
end
end)

Command('fleafww','leafww f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "leafww")
Notify('Gave '..players[1]..' leafww on f')
end
end)

Command('gleafww','leafww g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "leafww")
Notify('Gave '..players[1]..' leafww on g')
end
end)

Command('hleafww','leafww h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "leafww")
Notify('Gave '..players[1]..' leafww on h')
end
end)

Command('vleafww','leafww v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "leafww")
Notify('Gave '..players[1]..' leafww on v')
end
end)

Command('bleafww','leafww b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "leafww")
Notify('Gave '..players[1]..' leafww on b')
end
end)

Command('nleafww','leafww n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "leafww")
Notify('Gave '..players[1]..' leafww on n')
end
end)

--sevenheaven

Command('rsevenh','sevenheaven r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on r')
end
end)

Command('tsevenh','sevenheaven t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on t')
end
end)

Command('ysevenh','sevenheaven y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on y')
end
end)

Command('fsevenh','sevenheaven f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on f')
end
end)

Command('gsevenh','sevenheaven g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on g')
end
end)

Command('hsevenh','sevenheaven h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on h')
end
end)

Command('vsevenh','sevenheaven v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on v')
end
end)

Command('bsevenh','sevenheaven b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on b')
end
end)

Command('nsevenh','sevenheaven n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "sevenheaven")
Notify('Gave '..players[1]..' sevenheaven on n')
end
end)

--end sevenheaven

--lightc

Command('rlightc','lightc r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "lightc")
Notify('Gave '..players[1]..' lightc on r')
end
end)

Command('tlightc','lightc t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "lightc")
Notify('Gave '..players[1]..' lightc on t')
end
end)

Command('ylightc','lightc y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "lightc")
Notify('Gave '..players[1]..' lightc on y')
end
end)

Command('flightc','lightc f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "lightc")
Notify('Gave '..players[1]..' lightc on f')
end
end)

Command('glightc','lightc g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "lightc")
Notify('Gave '..players[1]..' lightc on g')
end
end)

Command('hlightc','lightc h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "lightc")
Notify('Gave '..players[1]..' lightc on h')
end
end)

Command('vlightc','lightc v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "lightc")
Notify('Gave '..players[1]..' lightc on v')
end
end)

Command('blightc','lightc b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "lightc")
Notify('Gave '..players[1]..' lightc on b')
end
end)

Command('nlightc','lightc n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "lightc")
Notify('Gave '..players[1]..' lightc on n')
end
end)

--end lightc

--bijuu

Command('rbijuu','bijuu r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bijuu")
Notify('Gave '..players[1]..' bijuu on r')
end
end)

Command('tbijuu','bijuu t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bijuu")
Notify('Gave '..players[1]..' bijuu on t')
end
end)

Command('ybijuu','bijuu y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bijuu")
Notify('Gave '..players[1]..' bijuu on y')
end
end)

Command('fbijuu','bijuu f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bijuu")
Notify('Gave '..players[1]..' bijuu on f')
end
end)

Command('gbijuu','bijuu g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bijuu")
Notify('Gave '..players[1]..' bijuu on g')
end
end)

Command('hbijuu','bijuu h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bijuu")
Notify('Gave '..players[1]..' bijuu on h')
end
end)

Command('vbijuu','bijuu v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bijuu")
Notify('Gave '..players[1]..' bijuu on v')
end
end)

Command('bbijuu','bijuu b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bijuu")
Notify('Gave '..players[1]..' bijuu on b')
end
end)

Command('nbijuu','bijuu n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bijuu")
Notify('Gave '..players[1]..' bijuu on n')
end
end)

--end bijuu

--bijuua

Command('rbijuua','bijuua r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "bijuua")
Notify('Gave '..players[1]..' bijuua on r')
end
end)

Command('tbijuua','bijuua t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "bijuua")
Notify('Gave '..players[1]..' bijuua on t')
end
end)

Command('ybijuua','bijuua y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "bijuua")
Notify('Gave '..players[1]..' bijuua on y')
end
end)

Command('fbijuua','bijuua f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "bijuua")
Notify('Gave '..players[1]..' bijuua on f')
end
end)

Command('gbijuua','bijuua g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "bijuua")
Notify('Gave '..players[1]..' bijuua on g')
end
end)

Command('hbijuua','bijuua h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "bijuua")
Notify('Gave '..players[1]..' bijuua on h')
end
end)

Command('vbijuua','bijuua v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "bijuua")
Notify('Gave '..players[1]..' bijuua on v')
end
end)

Command('bbijuua','bijuua b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "bijuua")
Notify('Gave '..players[1]..' bijuua on b')
end
end)

Command('nbijuua','bijuua n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "bijuua")
Notify('Gave '..players[1]..' bijuua on n')
end
end)

--end bijuua

--gates

Command('rgates','gates r',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "r", "gates")
Notify('Gave '..players[1]..' gates on r')
end
end)

Command('tgates','gates t',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "t", "gates")
Notify('Gave '..players[1]..' gates on t')
end
end)

Command('ygates','gates y',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "y", "gates")
Notify('Gave '..players[1]..' gates on y')
end
end)

Command('fgates','gates f',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "f", "gates")
Notify('Gave '..players[1]..' gates on f')
end
end)

Command('ggates','gates g',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "g", "gates")
Notify('Gave '..players[1]..' gates on g')
end
end)

Command('hgates','gates h',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "h", "gates")
Notify('Gave '..players[1]..' gates on h')
end
end)

Command('vgates','gates v',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "v", "gates")
Notify('Gave '..players[1]..' gates on v')
end
end)

Command('bgates','gates b',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "b", "gates")
Notify('Gave '..players[1]..' gates on b')
end
end)

Command('ngates','gates n',{''},
function(args, plr)
if not isStaff(plr) then return end

local players = getPlayer(args[1], plr)
for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "n", "gates")
Notify('Gave '..players[1]..' gates on n')
end
end)

--end gates

--end subjutsu modes

-- Extras --

Command('setspawn','???',{''},
function(args, plr)
if plr.Name ~= admin then return end
local fir = game.Workspace:GetChildren()
for i, v in pairs(fir) do
if v.Name == "AesuSpawn" then
game.Workspace:FindFirstChild("AesuSpawn").CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart)

elseif v.Name == "spoown" then

v.Enabled = true
v.Name = "AesuSpawn"

game.Workspace:FindFirstChild("AesuSpawn").CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart)
end

local fir1 = game.Workspace:GetChildren()
for i = 1, #fir do
if fir1[i].Name == "spoown" then
fir1[i].Enabled = false
end
end
end
end)

Command('betterlight','???',{''},
function(args, plr)
if plr.Name ~= admin then return end
game.Lighting.Bloom:Destroy()
game.Lighting.SunRays:Destroy()
game.Workspace.fogstart.Value = 0
game.Workspace.fogend.Value = 10000000000
game.Lighting.Ambient = 255, 255, 255
game.Lighting.FogEnd = 100000000
game.Lighting.FogStart = 0
end)

Command('version','shows version',{''},
function(args)
    Notify("Version is " .. Version)
end)

Command('wari','gaarawari',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "gaarawari")
Notify('Gave '..players[1]..' gaarawari')
     end
end)

Command('sandsword','sand sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "sands")
Notify('Gave '..players[1]..' sand sword')
     end
end)

Command('garian','garian',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "garian")
Notify('Gave '..players[1]..' garian')
     end
end)

Command('reaper','???',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "reaper")
Notify('Gave '..players[1]..' ???')
if plr.Name == admin then
local fir = game.Players.LocalPlayer.Character.RightHand.weapon.wep.Model:GetChildren()
for i = 1, #fir do
if fir[i]:FindFirstChild("fire") then
fir[i].fire:Destroy()
fir[i].Trail:Destroy()
end
end
end
     end
end)

Command('samehada2','samehada #2',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "samehada2")
Notify('Gave '..players[1]..' samehada #2')
     end
end)

Command('execblade2','executioner blade #2',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "exe2")
Notify('Gave '..players[1]..' executioner blade #2')
     end
end)

Command('dualfsword','firah',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "firah")
Notify('Gave '..players[1]..' firah')
     end
end)

Command('duallsword','dual lightning sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "kiba")
Notify('Gave '..players[1]..' kiba')
     end
end)

Command('hamaxe','hammer axe',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "kabuto")
Notify('Gave '..players[1]..' hammer axe')
     end
end)

Command('bonesword','bone sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "bone")
Notify('Gave '..players[1]..' bone sword')
     end
end)

Command('curry','curry',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "curry")
Notify('Gave '..players[1]..' curry')
     end
end)

Command('hira','asumas blade',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "hira")
Notify('Gave '..players[1]..' hiramekarei')
     end
end)

Command('chakrablade','asumas blade',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "chakrablade")
Notify('Gave '..players[1]..' asumas blade')
     end
end)

Command('thsword','thunder sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "thunders")
Notify('Gave '..players[1]..' thunder sword')
     end
end)

Command('bombsword','shibuki',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "shibuki")
Notify('Gave '..players[1]..' shibuki')
     end
end)

Command('needlesword','needle sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "nuibari")
Notify('Gave '..players[1]..' needle sword')
     end
end)

Command('hidascythe','hidans scythe',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "triplebladedscythe")
Notify('Gave '..players[1]..' hidans scythe')
     end
end)

Command('demon', 'god player',{''},
function(args, plr)
    local players = getPlayer(args[1], plr)
    for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
while wait() do
r:FireServer("equipkey", "weapon", "sasukeswordmode")
r:FireServer("equipkey", "lvl", "3000")
r:FireServer("equipkey", "bounty", "60000")
r:FireServer("equipkey", "spins", "299")
end
end
end)

Command('demonwindmill','demon windmill',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "demonwindmill")
Notify('Gave '..players[1]..' demon windmill')
     end
end)

Command('execblade1','executioner blade #1',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "executionerblade")
Notify('Gave '..players[1]..' executioner blade #1')
     end
end)

Command('bshuriken','big shuriken',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "bigshuriken")
Notify('Gave '..players[1]..' big shuriken')
     end
end)

Command('fan','folding fan',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "foldingfan")
Notify('Gave '..players[1]..' fan')
     end
end)

Command('tanto2','tanto2',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "tanto")
Notify('Gave '..players[1]..' tanto #2')
     end
end)

Command('katana','katana',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "katana")
Notify('Gave '..players[1]..' katana')
     end
end)

Command('shurikens','shurikens',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "shurikens")
Notify('Gave '..players[1]..' shurikens')
     end
end)

Command('shurikens','shurikens',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "shurikens")
Notify('Gave '..players[1]..' shurikens')
     end
end)

Command('sevenstarsword','sevenstarsword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "sevenstarsword")
Notify('Gave '..players[1]..' sevenstarsword')
     end
end)

Command('saskusa','sasuke shippudens sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "saskusangi")
Notify('Gave '..players[1]..' sasukes SHIP sword')
     end
end)

Command('darusword','daruis cleaver sword',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "cleaversword")
Notify('Gave '..players[1]..' darus sword')
     end
end)

Command('paperbomb','paper bomb tag',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "gunbai")
Notify('Gave '..players[1]..' madaras gunbai')
     end
end)

Command('gunbai','madaras gunbai',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "gunbai")
Notify('Gave '..players[1]..' madaras gunbai')
     end
end)

Command('okusa','orochimarus kusanagi',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "ochokusangi")
Notify('Gave '..players[1]..' orochi kusanagi')
     end
end)

Command('tkunai','thorwing kunai',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "kunaithrow")
Notify('Gave '..players[1]..' throw kunai')
     end
end)

Command('kunai','kunai',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "kunai")
Notify('Gave '..players[1]..' kunai')
     end
end)

Command('tanto1','kakashis tanto',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "kakashitanto")
Notify('Gave '..players[1]..' tanto')
     end
end)

Command('samehada1','samehada #1',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "samehada")
Notify('Gave '..players[1]..' samehada #1')
     end
end)

Command('ftg','fire fan',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "minatokunai")
Notify('Gave '..players[1]..' minatos kunai')
     end
end)

Command('firefan','fire fan',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "bananafan")
Notify('Gave '..players[1]..' fire fan')
     end
end)

Command('temfan','temaris fan',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "fanb")
Notify('Gave '..players[1]..' temaris fan')
     end
end)

Command('kurosaw','kurosawa',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "kurosawa")
Notify('Gave '..players[1]..' kurosawa')
     end
end)

Command('paperbball','paperb bomb ball',{''},
function(args, plr)
if not isStaff(plr) then return end

	local players = getPlayer(args[1], plr)
	for i,v in pairs(players)do
local r = gPlayers[v].Backpack.keyinput
r:FireServer("equipkey", "weapon", "explosiveball")
Notify('Gave '..players[1]..' explosiveball')
     end
end)

--| Don't.. Touch.. |--
 
CMDbar = Instance.new('ScreenGui', game.CoreGui)
CMDbar.Name = 'GUI'
cmdBAR = Instance.new('TextBox', CMDbar)
cmdBAR.Name = 'CMDbar'
cmdBAR.Active = true
cmdBAR.BackgroundColor = BrickColor.new(0,0,0)
cmdBAR.BackgroundTransparency = 0.5
cmdBAR.BorderColor = BrickColor.new(0,0,0)
cmdBAR.BorderSizePixel = 0
cmdBAR.Position = UDim2.new(0,0,1,-25)
cmdBAR.Size = UDim2.new(0,200,0,20)
cmdBAR.Font = 'SourceSans'
cmdBAR.FontSize = 'Size18'
cmdBAR.Text = 'Press ; to Execute a Command'
cmdBAR.TextColor = BrickColor.new(255,255,255)
 
--| Data |--
 
DATA = Instance.new('Folder', game.ContextActionService)
DATA.Name = 'Data'
 
cmdGUI = Instance.new('ScreenGui', DATA)
cmdGUI.Name = 'CMDs'
cmdMAIN = Instance.new('Frame', cmdGUI)
cmdMAIN.Name = 'MAIN'
cmdMAIN.Active = true
cmdMAIN.BackgroundColor = BrickColor.new(0,0,0)
cmdMAIN.BackgroundTransparency = 0.5
cmdMAIN.BorderColor = BrickColor.new(0,0,0)
cmdMAIN.BorderSizePixel = 0
cmdMAIN.Position = UDim2.new(0,10,0,350)
cmdMAIN.Size = UDim2.new(0,170,0,15)
cmdMAIN.Draggable = true
cmdCMDs = Instance.new('ScrollingFrame', cmdMAIN)
cmdCMDs.Name = 'CMDs'
cmdCMDs.BackgroundColor = BrickColor.new(0,0,0)
cmdCMDs.BackgroundTransparency = 0.8
cmdCMDs.BorderColor = BrickColor.new(0,0,0)
cmdCMDs.BorderSizePixel = 0
cmdCMDs.Position = UDim2.new(0,0,0,15)
cmdCMDs.Size = UDim2.new(0,200,0,150)
cmdCMDs.CanvasSize = UDim2.new(0,0,0,0)
cmdCMDs.TopImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.MidImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.BottomImage = 'rbxasset://textures/blackBkg_square.png'
cmdCMDs.ScrollBarThickness = 2
cmdExit = Instance.new('TextButton', cmdMAIN)
cmdExit.Name = 'Exit'
cmdExit.BackgroundColor = BrickColor.new(255,0,0)
cmdExit.BackgroundTransparency = 0.5
cmdExit.BorderColor = BrickColor.new(255,0,0)
cmdExit.BorderSizePixel = 0
cmdExit.Position = UDim2.new(0,185,0,0)
cmdExit.Size = UDim2.new(0,15,0,15)
cmdExit.Text = ""

cmdEx = Instance.new('TextLabel', cmdMAIN)
cmdEx.Name = 'Example'
cmdEx.BackgroundColor = BrickColor.new(0,0,0)
cmdEx.BackgroundTransparency = 0.8
cmdEx.BorderColor = BrickColor.new(0,0,0)
cmdEx.BorderSizePixel = 0
cmdEx.Position = UDim2.new(0,5,0,20)
cmdEx.Size = UDim2.new(0,190,0,20)
cmdEx.Visible = false
cmdEx.TextColor = BrickColor.new(255,255,255)
cmdEx.TextXAlignment = 'Left'
 
duckGUI = Instance.new('ScreenGui', DATA)
duckGUI.Name = 'Duck'
duckImage = Instance.new('ImageLabel', duckGUI)
duckImage.BackgroundTransparency = 1
duckImage.Position = UDim2.new(0,-300,1,-150)
duckImage.Size = UDim2.new(0,300,0,300)
duckImage.Rotation = -30

notifyMAIN = Instance.new('ScreenGui', DATA)
notifyMAIN.Name = 'Notification'
notifyNOT = Instance.new('Frame', notifyMAIN)
notifyNOT.Name = 'NOTIFY'
notifyNOT.BackgroundColor = BrickColor.new(0,0,0)
notifyNOT.BackgroundTransparency = 0.5
notifyNOT.BorderColor = BrickColor.new(255,255,255)
notifyNOT.BorderSizePixel = 2
notifyNOT.Position = UDim2.new(0,-200,0.7,0)
notifyNOT.Size = UDim2.new(0,200,0,30)
notifyNOTE = Instance.new('TextLabel', notifyNOT)
notifyNOTE.Name = 'NOTE'
notifyNOTE.BackgroundColor = BrickColor.new(255,255,255)
notifyNOTE.BackgroundTransparency = 1
notifyNOTE.BorderColor = BrickColor.new(255,255,255)
notifyNOTE.BorderSizePixel = 0
notifyNOTE.Size = UDim2.new(1,0,1,0)
notifyNOTE.ZIndex = 10
notifyNOTE.FontSize = 'Size18'
notifyNOTE.Font = 'SourceSans'
notifyNOTE.Text = 'NOTIFY'
notifyNOTE.TextColor = BrickColor.new(255,255,255)
notifyNOTE.TextStrokeColor3 = Color3.new(255,255,255)
notifyNOTE.TextStrokeTransparency = 0.8

-- CMDs GUI --
 
CMDsFolder = Instance.new("Folder", game.CoreGui)
 
for i,v in pairs(CMDs) do
    CMDsValue = Instance.new("StringValue", CMDsFolder)
    CMDsValue.Value = v
    CMDsValue.RobloxLocked = true
end
 
local function commands()
    local cmds = DATA.CMDs:Clone()
    cmds.Parent = Player.PlayerGui
    local CMDsV = CMDsFolder:GetChildren()
game.Players.LocalPlayer.PlayerGui.CMDs.MAIN.Exit.MouseButton1Down:Connect(function()
    game.Players.LocalPlayer.PlayerGui.CMDs:Destroy()
end)
    for i = 1, #CMDsV do
        local YSize = 25
        local Position = ((i * YSize) - YSize)
        local newcmd = cmds.MAIN.Example:Clone()
        newcmd.Parent = cmds.MAIN.CMDs
        newcmd.Visible = true
        newcmd.Position = UDim2.new(0,5,0, Position + 5)
        newcmd.Text = "" .. CMDsV[i].Value
        cmds.MAIN.CMDs.CanvasSize = UDim2.new(0,0,0, Position + 30)
    end
end
 
Command('cmds','prints cmds',{},
function(args, plr)
if plr.Name ~= admin then return end
    commands()
end)
 
--| Command Bar |--
 
CMDbar.CMDbar.FocusLost:connect(function(enterpressed)
    if enterpressed and CMDbar.CMDbar.Text ~= "" then
        spawn(function ()
            execCmd(CMDbar.CMDbar.Text, Player)
        end)
    end
    CMDbar.CMDbar:TweenPosition(UDim2.new(0, -200, 1, -25), "InOut", "Quad", 0.5, true, nil)
end)
 
Mouse.KeyDown:connect(function(Key)
    if Key:byte() == 59 then
        CMDbar.CMDbar:TweenPosition(UDim2.new(0, 0, 1, -25), "InOut", "Quad", 0.5, true, nil)
        CMDbar.CMDbar:CaptureFocus()
    end
end)
 
--| More Functions |--
 
local NOTIFY = DATA.Notification
NOTIFY.Parent = game.CoreGui
 
local duck = DATA.Duck:Clone()
duck.Parent = Player.PlayerGui
 
local usingNOTE = false
 
function Notify(msg)
    if usingNOTE == false then
        if NOTIFY.NOTIFY and NOTIFY.NOTIFY.NOTE then
            spawn(function()
                NOTIFY.NOTIFY:TweenPosition(UDim2.new(0, 0, 0.7, 0), "InOut", "Quad", 0.5, true, nil)
                NOTIFY.NOTIFY.NOTE.Text = msg
                usingNOTE = true
                wait(2.5)
                NOTIFY.NOTIFY:TweenPosition(UDim2.new(0, -200, 0.7, 0), "InOut", "Quad", 0.5, true, nil)
                usingNOTE = false
            end)
        end
    end
end

--| Notifications |--

wait(1)

NOTIFY.NOTIFY.BorderColor = BrickColor.new(255,0,0)
Notify('Welcome '..game.Players.LocalPlayer.Name..'!')

wait(5)

Player.PlayerGui.Duck:Destroy()
