//Maya ASCII 2023 scene
//Name: Anim_2.ma
//Last modified: Fri, Nov 01, 2024 07:13:37 PM
//Codeset: 1252
file -rdi 1 -ns "Main_Scene" -rfn "Main_SceneRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Main_Scene.ma";
file -rdi 2 -ns "Hermit_Crab_Rig_New" -rfn "Main_Scene:Hermit_Crab_Rig_NewRN"
		 -op "v=0;" -typ "mayaAscii" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/HermitCrab/Hermit_Crab_Rig_New.ma";
file -rdi 2 -ns "Palm_Tree" -rfn "Main_Scene:Palm_TreeRN" -op "fbx" -typ "mayaAscii"
		 "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/PalmTree/Palm_Tree.ma";
file -rdi 2 -ns "IslandTest2" -rfn "Main_Scene:IslandTest2RN" -op "v=0;" -typ
		 "mayaAscii" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/Island/Island.ma";
file -rdi 2 -ns "Flag" -rfn "Main_Scene:FlagRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/Flag/Flag.ma";
file -rdi 1 -ns "FishRig2" -rfn "FishRigRN" -op "v=0;" -typ "mayaAscii" "C:/Users/kaitl/Documents/maya/FishRig.ma";
file -r -ns "Main_Scene" -dr 1 -rfn "Main_SceneRN" -op "v=0;" -typ "mayaAscii" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Main_Scene.ma";
file -r -ns "FishRig2" -dr 1 -rfn "FishRigRN" -op "v=0;" -typ "mayaAscii" "C:/Users/kaitl/Documents/maya/FishRig.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.1.0";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.17";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "F5012957-4B55-F9BB-808A-4C9A092D8870";
createNode transform -s -n "persp";
	rename -uid "9D50560C-4AC8-3EDA-A4B4-D99B24B95E99";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 123.22935719574765 31.324221672353914 7.4414191336034712 ;
	setAttr ".r" -type "double3" -8.1383527285135759 -277.40000000002732 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C57C7EEB-46C3-5AD6-1C2E-AAB61A9B4E4B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 98.615445618394844;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 18.137850931619873 17.062958125049356 3.2239473280833311 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E5C42705-4C70-0B70-0549-51BB878B1AD4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "99FAE53E-4EE1-C5E3-3462-FDB6D23F6A61";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "673D6546-417F-31CB-CDA6-228EC883C178";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D4D7BB8D-4541-0CCF-4EA7-F2A0DA0722DD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "6A8A98E7-4EE0-410C-7406-B4A36A10D6B2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "7F67A9AA-45F8-4648-05BE-70BB64691FF3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3B00F6A3-4A8C-4BE5-4207-B9BB97DA19AD";
	setAttr -s 35 ".lnk";
	setAttr -s 35 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "E8AA0E16-47ED-EE64-F365-1EB2A42E4675";
	setAttr ".version" 6;
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".denoiseEngine" 3;
	setAttr ".GIEnabled" 1;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
	setAttr ".shadingNormalAdaptionTechnique" 1;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" 0;
	setAttr ".enableLegacyMotionBlurSampling" 0;
	setAttr ".enableLegacySSSGI" 0;
	setAttr ".enableLegacyVolumePhase" 0;
	setAttr ".enableLegacyDispersionNestedDielectricsTechnique" 0;
	setAttr ".enableLegacyTimeBehavior" 0;
	setAttr ".enableOptiXRTOnSupportedGPUs" 1;
	setAttr ".enableAutomaticSampling" 1;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "D3430946-479E-2FED-053A-40B877370FBA";
	setAttr ".v" 2;
	setAttr ".cr[1]" -type "float2" 1 1 ;
	setAttr ".cg[1]" -type "float2" 1 1 ;
	setAttr ".cb[1]" -type "float2" 1 1 ;
	setAttr ".cl[1]" -type "float2" 1 1 ;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "75C08CD0-4397-582F-04ED-8EB0BC555DB3";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 3 0 1 2 ;
	setAttr -s 3 ".bspr";
	setAttr -s 3 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "FA2D6707-42D0-7974-380B-0E99E1870CD3";
createNode displayLayerManager -n "layerManager";
	rename -uid "4DE7465A-43CE-4AEF-A320-AAB970BB58C1";
createNode displayLayer -n "defaultLayer";
	rename -uid "8A535081-4B99-8E92-9747-1FA970430AEC";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0AF92E28-425C-0E93-8DE7-588171984944";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C774E17D-449F-5870-8CC6-15ADA090F80E";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "EE4FEE4E-4BF1-CF16-9DD8-E296CA8A8BA8";
	setAttr ".version" -type "string" "5.2.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "5724E93F-44FA-4A2D-79BD-6E830785471D";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "38E57288-4DCA-D80A-E22A-E4873FAED2C1";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6B2B9821-494E-CB22-2676-709A01A8D52B";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "Main_SceneRN";
	rename -uid "2872A957-43C6-CFE3-AACE-9993E9F4032C";
	setAttr -s 430 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Main_SceneRN"
		"Main_Scene:IslandTest2RN" 0
		"Main_SceneRN" 1
		2 "Main_Scene:defaultRedshiftPostEffects" "version" " 2"
		"Main_Scene:Hermit_Crab_Rig_NewRN" 1
		2 "Main_Scene:Hermit_Crab_Rig_New:defaultRedshiftPostEffects" "version" " 2"
		
		"Main_Scene:Palm_TreeRN" 2
		2 "Main_Scene:Palm_Tree:defaultRedshiftPostEffects" "version" " 2"
		2 "Main_Scene:Palm_Tree:Main_Scene:defaultRedshiftPostEffects" "version" 
		" 2"
		"Main_Scene:FlagRN" 0
		"Main_Scene:FlagRN" 1
		2 "|Main_Scene:Flag:Flag" "visibility" " 0"
		"Main_SceneRN" 18
		2 "|Main_Scene:Hermit_Crab" "visibility" " 1"
		2 "|Main_Scene:camera1" "translateX" " 90.83029837920538796"
		2 "|Main_Scene:camera1" "translateY" " 5.87935148775321625"
		2 "|Main_Scene:camera1" "translateZ" " 28.11996203839510855"
		2 "|Main_Scene:camera1" "rotateX" " 9.59966133982435821"
		2 "|Main_Scene:camera1" "rotateY" " 73.20000000000028706"
		2 "|Main_Scene:camera1" "rotateZ" " 0"
		2 "|Main_Scene:camera1" "rotateOrder" " 0"
		2 "|Main_Scene:camera1" "scaleX" " 0.99999999999999978"
		2 "|Main_Scene:camera1" "scaleY" " 1"
		2 "|Main_Scene:camera1" "scaleZ" " 1"
		2 "|Main_Scene:camera1" "shear" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:camera1" "rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:camera1" "rotatePivotTranslate" " -type \"double3\" 0 0 0"
		
		2 "|Main_Scene:camera1" "scalePivot" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:camera1" "scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:camera1" "rotateAxis" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:camera1|Main_Scene:cameraShape1" "centerOfInterest" " 12872.08309858743450604"
		
		"Main_Scene:Hermit_Crab_Rig_NewRN" 444
		3 "Main_Scene:Hermit_Crab_Rig_New:Crab_Shell1.message" "Main_Scene:Hermit_Crab_Rig_New:materialInfo13.texture" 
		"-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Stalk|Main_Scene:Hermit_Crab_Rig_New:R_Eye_StalkShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Stalk|Main_Scene:Hermit_Crab_Rig_New:L_Eye_StalkShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_LPShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_LPShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_LPShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Claw_LP|Main_Scene:Hermit_Crab_Rig_New:R_Claw_LPShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_LPShape1.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_LPShape1.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_LPShape1.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Claw_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Claw_LP1Shape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:Body_LP1|Main_Scene:Hermit_Crab_Rig_New:Body_LP1Shape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:Shell_LP2|Main_Scene:Hermit_Crab_Rig_New:Shell_LP2Shape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:set6.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye|Main_Scene:Hermit_Crab_Rig_New:R_EyeShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:set5.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye|Main_Scene:Hermit_Crab_Rig_New:L_EyeShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:set5.dagSetMembers" "-na"
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:Shell_LP2|Main_Scene:Hermit_Crab_Rig_New:Shell_LP2Shape.instObjGroups" 
		"Main_SceneRN.placeHolderList[1]" "Main_Scene:Hermit_Crab_Rig_New:set6.dsm"
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:Body_LP1|Main_Scene:Hermit_Crab_Rig_New:Body_LP1Shape.instObjGroups" 
		"Main_SceneRN.placeHolderList[2]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Claw_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Claw_LP1Shape.instObjGroups" 
		"Main_SceneRN.placeHolderList[3]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Claw_LP|Main_Scene:Hermit_Crab_Rig_New:R_Claw_LPShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[4]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_LPShape1.instObjGroups" 
		"Main_SceneRN.placeHolderList[5]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_LPShape1.instObjGroups" 
		"Main_SceneRN.placeHolderList[6]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_LPShape1.instObjGroups" 
		"Main_SceneRN.placeHolderList[7]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_LPShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[8]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_LPShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[9]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_LPShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[10]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye|Main_Scene:Hermit_Crab_Rig_New:L_EyeShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[11]" "Main_Scene:Hermit_Crab_Rig_New:set5.dsm"
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Stalk|Main_Scene:Hermit_Crab_Rig_New:L_Eye_StalkShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[12]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Stalk|Main_Scene:Hermit_Crab_Rig_New:R_Eye_StalkShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[13]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye|Main_Scene:Hermit_Crab_Rig_New:R_EyeShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[14]" "Main_Scene:Hermit_Crab_Rig_New:set5.dsm"
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[15]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[16]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[17]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[18]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[19]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[20]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[21]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[22]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[23]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[24]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[25]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[26]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[27]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[28]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[29]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[30]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[31]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:COG_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[32]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[33]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[34]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[35]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[36]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[37]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[38]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[39]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[40]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Body_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[41]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[42]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[43]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[44]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[45]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[46]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[47]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[48]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[49]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[50]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[51]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[52]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[53]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[54]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[55]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[56]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[57]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[58]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[59]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[60]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[61]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[62]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[63]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[64]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[65]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[66]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[67]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[68]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[69]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[70]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[71]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[72]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[73]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[74]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[75]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[76]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[77]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[78]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[79]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[80]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[81]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[82]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[83]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[84]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[85]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[86]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[87]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[88]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[89]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[90]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[91]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[92]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[93]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[94]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[95]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[96]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[97]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[98]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[99]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[100]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[101]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[102]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[103]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[104]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[105]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[106]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[107]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[108]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[109]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[110]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[111]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[112]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[113]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[114]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[115]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[116]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[117]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[118]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[119]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[120]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[121]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[122]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[123]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[124]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[125]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[126]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[127]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[128]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[129]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[130]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[131]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[132]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[133]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[134]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[135]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[136]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[137]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[138]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[139]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[140]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[141]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[142]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[143]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[144]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[145]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[146]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[147]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[148]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[149]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[150]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[151]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[152]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[153]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[154]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[155]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[156]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[157]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[158]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[159]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[160]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[161]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[162]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[163]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[164]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[165]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[166]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[167]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[168]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[169]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[170]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[171]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[172]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[173]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[174]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[175]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[176]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[177]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[178]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[179]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[180]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[181]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[182]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[183]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[184]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[185]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[186]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[187]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[188]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[189]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[190]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[191]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[192]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[193]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[194]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[195]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[196]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[197]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[198]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[199]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[200]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[201]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[202]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[203]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[204]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[205]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[206]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[207]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[208]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[209]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[210]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[211]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[212]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[213]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[214]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[215]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[216]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[217]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[218]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[219]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[220]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[221]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[222]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[223]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[224]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[225]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[226]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[227]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[228]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[229]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[230]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[231]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[232]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[233]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[234]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[235]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[236]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[237]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[238]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[239]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[240]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[241]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[242]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[243]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[244]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[245]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[246]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[247]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_04_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[248]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[249]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[250]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[251]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[252]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[253]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[254]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[255]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[256]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[257]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[258]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[259]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[260]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[261]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[262]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[263]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[264]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[265]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[266]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[267]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[268]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[269]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[270]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[271]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[272]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[273]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[274]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[275]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[276]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[277]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[278]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[279]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[280]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[281]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[282]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[283]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[284]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[285]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[286]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[287]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[288]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[289]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[290]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[291]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[292]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_04_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[293]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[294]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[295]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[296]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[297]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[298]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[299]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[300]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[301]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_05_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[302]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[303]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[304]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[305]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[306]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[307]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[308]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[309]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[310]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[311]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[312]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[313]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[314]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[315]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[316]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[317]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[318]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[319]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[320]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[321]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[322]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[323]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[324]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[325]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[326]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[327]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[328]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[329]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[330]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[331]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[332]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[333]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[334]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[335]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[336]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[337]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[338]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[339]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[340]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[341]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[342]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[343]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[344]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[345]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[346]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[347]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[348]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[349]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[350]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[351]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[352]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[353]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[354]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[355]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[356]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[357]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[358]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[359]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[360]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[361]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[362]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[363]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[364]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Bottom_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[365]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[366]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[367]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[368]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[369]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[370]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[371]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[372]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[373]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Jnt_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[374]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[375]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[376]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[377]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[378]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[379]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[380]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[381]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[382]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[383]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[384]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[385]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[386]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[387]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[388]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[389]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[390]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[391]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[392]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[393]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[394]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[395]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[396]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[397]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[398]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[399]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[400]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Top_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[401]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[402]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[403]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[404]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[405]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[406]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[407]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[408]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[409]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[410]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[411]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[412]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[413]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[414]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[415]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[416]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[417]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[418]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_02_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[419]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[420]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[421]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[422]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[423]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[424]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[425]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[426]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[427]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Claw_Bottom_Jnt_03_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[428]" ""
		5 0 "Main_SceneRN" "Main_Scene:Hermit_Crab_Rig_New:file26.message" "Main_Scene:Hermit_Crab_Rig_New:materialInfo13.texture" 
		"Main_SceneRN.placeHolderList[429]" "Main_SceneRN.placeHolderList[430]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "97D8B77D-4515-2CA8-D156-C4B9857A876A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1120\n            -height 696\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1120\\n    -height 696\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1120\\n    -height 696\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CE570586-4CCD-5E0B-9D0B-009F5E38E252";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 288 -ast 0 -aet 288 ";
	setAttr ".st" 6;
createNode animCurveTL -n "R_Claw_Top_Jnt_01_Ctrl_translateX";
	rename -uid "3DEED795-4BF3-BF29-0D88-F286470B638C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Top_Jnt_02_Ctrl_translateX";
	rename -uid "F08BA092-429E-9921-2A7B-DAB8F87A9345";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Transform_Ctrl_translateX";
	rename -uid "3A9B10A1-4133-95B3-5471-3FA5E5529D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 17.352904711557017 24 17.352904711557017
		 48 16.811278877009311 72 16.055804744922149 96 15.263776492587301 102 15.263776492587301
		 108 15.263776492587301 116 15.263776492587301 132 15.263776492587301 142 15.263776492587301
		 210 15.263776492587301 214 14.768233719537351 220 14.777478738006785 224 13.702279501842405
		 230 13.043579898843994 236 11.085152144081119 242 16.476540739193428 248 19.116178485491275
		 256 23.515425759942541 262 30.021903144869402 268 33.848402711093499 288 15.263776492587301;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 1 1 0.23365446553744654 0.18765517220890221 
		1 0.062138231806796208 0.08258984836884542 0.053412374391230311 0.048332214439944614 
		1 1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0 0 -0.97231969574539123 -0.98223497002664661 
		0 0.99806755289806148 0.99658362265612765 0.99857254031036269 0.99883131561206628 
		0 0;
createNode animCurveTL -n "R_Eye_Jnt_01_Ctrl_translateX";
	rename -uid "CB595527-4ABA-A5DB-6289-AC832D314227";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_02_Ctrl_translateX";
	rename -uid "B3501229-4A30-06D5-DF58-588C1B6866E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_01_Ctrl_translateX";
	rename -uid "17357A9B-455A-08B0-D91B-C29147A54896";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_02_Ctrl_translateX";
	rename -uid "E48DE7C8-4956-C165-72D2-ACBB4F0D038F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_03_Jnt_01_Ctrl_translateX";
	rename -uid "E6F4756C-4057-CF91-8F8A-0B90B82EC9EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_03_Ctrl_translateX";
	rename -uid "271603E5-4B9F-BD7A-B245-A28EC15D0E0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_02_Ctrl_translateX";
	rename -uid "7CCBC372-4A34-7E34-9468-8C90C1E9A018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_01_Ctrl_translateX";
	rename -uid "45A1543A-4CA4-760C-0C9D-CF97670B4BE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_02_Ctrl_translateX";
	rename -uid "52C2A8CC-479E-E9C5-9FD9-718E8BEE78C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_03_Ctrl_translateX";
	rename -uid "D1B0347A-4A74-546B-60B8-E8A356F7EC93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_01_Ctrl_translateX";
	rename -uid "1B19FB17-4685-B40D-BAAB-1EB6C3FCD94F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_Ctrl_translateX";
	rename -uid "C52BE665-4CF2-5631-18ED-899A7A92E9A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 96 0 116 0 210 0 224 0 230 0
		 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_03_Jnt_02_Ctrl_translateX";
	rename -uid "88F3C3CB-4ACA-717A-D046-A4A83AAE971D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Top_Jnt_03_Ctrl_translateX";
	rename -uid "AAF1A4E1-4308-C4C5-4A98-ACAC5EEDC426";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_01_Ctrl_translateX";
	rename -uid "8A3CF9F4-4A6D-5528-0D95-E59C0AC3F956";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_02_Ctrl_translateX";
	rename -uid "A0AD45F4-44E2-F722-CC56-45A94AF672FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_02_Ctrl_translateX";
	rename -uid "8442F448-48CA-D65F-2044-4EA8F7E2C2A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_03_Ctrl_translateX";
	rename -uid "7EA752B8-412B-2B33-C1E7-A08C0CA5E9AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_03_Ctrl_translateX";
	rename -uid "7A9DB2EE-4ADD-55B4-C2CE-C2BC81D0ACB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_01_Ctrl_translateX";
	rename -uid "A2BA0036-4003-215B-54C2-B98C14C45E9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_Leg_03_Jnt_03_Ctrl_translateX";
	rename -uid "34F95A4F-41EA-CDCA-8F49-F982C6D1CBC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Shell_Ctrl_translateX";
	rename -uid "3D7C2AED-43F9-556E-E3B7-7EADB0EB914D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_05_Ctrl_translateX";
	rename -uid "88E44137-4710-FBC0-793A-A089BF42059B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_01_Ctrl_translateX";
	rename -uid "5E8FE608-465F-9A3B-FAE3-00AB0B4B1001";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_04_Ctrl_translateX";
	rename -uid "A338859D-431C-B7FA-D796-CDBE5AB8AC7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_03_Ctrl_translateX";
	rename -uid "7D49F99C-4356-B727-D27D-B8A45C0E5B3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_01_Jnt_01_Ctrl_translateX";
	rename -uid "8FBB9910-4673-A433-D910-1CA5D769CF7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_04_Ctrl_translateX";
	rename -uid "E860DB5A-43BF-BD6B-EA5F-E791FF6C890F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_01_Jnt_03_Ctrl_translateX";
	rename -uid "561AD4F7-4294-D6D2-ECDC-1D94BAC82D6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_01_Ctrl_translateX";
	rename -uid "41EF1134-4E88-7DF2-B4B9-01B39E7D2A0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 -0.051964311962898975
		 116 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_05_Ctrl_translateX";
	rename -uid "27D94195-469F-9513-6C66-A197C0581144";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Jnt_Ctrl_translateX";
	rename -uid "FAD6C8D2-4706-6A1D-049C-5F85564EA9D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 0.25420592565362998
		 116 0.23878271054410347 122 0.17509751219110017 132 0 210 0 224 0 230 0 236 0 242 0
		 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 0.94143402006908161 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 -0.33719725066579065 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "R_Eye_Jnt_03_Ctrl_translateX";
	rename -uid "5701907E-4C49-BD69-121C-AE8B0070A53A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Jnt_Ctrl_translateX";
	rename -uid "10B25797-46C9-4B51-35FE-C09045A45E80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 -0.3225964143473688
		 116 -0.46592978679775676 122 -0.17741100611364338 132 0 210 0 224 0 230 0 236 0 242 0
		 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  0.58184639403784955 1 0.81965732469069263 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  -0.81329869896929718 0 0.5728541438105309 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_Leg_01_Jnt_02_Ctrl_translateX";
	rename -uid "07319FD0-4F1E-53EE-8577-1381B64B324F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Body_Ctrl_translateX";
	rename -uid "3D4BB4C0-4919-3D56-83C0-78BC2229031A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_01_Ctrl_translateX";
	rename -uid "A4B66990-4002-3BB8-DACE-9AA9EBDB82AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_03_Ctrl_translateX";
	rename -uid "1A6CC023-415C-88AA-7AAA-B893AAEB15FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_02_Ctrl_translateX";
	rename -uid "5E459C8D-46BE-2E23-1A34-2DA7C691BC04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_02_Ctrl_translateX";
	rename -uid "D6420EEC-4C80-5395-7524-2FBAAABC8B40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_03_Ctrl_translateX";
	rename -uid "7AFB9A13-4367-90BF-C0EE-CE837D48B4E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_03_Ctrl_translateX";
	rename -uid "87D2A309-44E5-9A1E-3517-4DABDC9FCBE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_02_Ctrl_translateX";
	rename -uid "09B20F79-4691-675A-E15E-F8855169FA12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Top_Jnt_01_Ctrl_translateY";
	rename -uid "600934AC-4272-28D4-1972-E49EEC90A9EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Top_Jnt_02_Ctrl_translateY";
	rename -uid "675825E5-4D25-4D9A-9243-92A687981492";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Transform_Ctrl_translateY";
	rename -uid "5272AAF2-46E3-0440-A960-0988944B0C7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -1.8310800170884121 24 2.5754110628880715
		 48 6.4867947431008499 72 12.58533898895608 96 15.015708406570116 102 15.015708406570116
		 108 15.015708406570116 116 15.015708406570116 132 15.015708406570116 142 15.015708406570116
		 210 15.015708406570116 214 16.342765039839875 220 15.9947818203007 224 19.891694715201066
		 230 17.975886636357053 236 15.032322055253589 242 12.466912416884949 248 6.6881755961459683
		 256 6.2209127611709141 262 5.6415605357982335 268 2.294683112578384 288 -2.3095037636711102;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 1 1 1 0.10235354990365214 0.09038946762125051 
		0.059814954562522706 0.23134083408612247 0.48684177630723596 0.14237352214107704 
		0.13500276398284647 1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0 0 0 -0.99474808410075388 -0.99590649367455519 
		-0.99820948262911391 -0.97287276582518079 -0.87349017443930954 -0.98981300263895522 
		-0.99084522187725765 0;
createNode animCurveTL -n "R_Eye_Jnt_01_Ctrl_translateY";
	rename -uid "3AD0F5E4-4E48-95BF-7BB5-CFB408FF597B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_02_Ctrl_translateY";
	rename -uid "A4B8EBD3-4E4A-167B-3264-D7BA485C8F1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_01_Ctrl_translateY";
	rename -uid "B1346335-4D79-5B0F-B8FB-5CB93DBEB7C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_02_Ctrl_translateY";
	rename -uid "3CB7AA3E-4F00-7ABA-9396-A09D85E65F6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_03_Jnt_01_Ctrl_translateY";
	rename -uid "8189149C-4D3D-8F3B-CEAA-22832AE51823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_03_Ctrl_translateY";
	rename -uid "44400AFE-4D4E-2141-022B-A4AF49218A97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_02_Ctrl_translateY";
	rename -uid "BF7CB6E7-4513-139B-AF5B-1FB3E6728D06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_01_Ctrl_translateY";
	rename -uid "76C54925-4EE1-B947-D661-4F8FFC2F3306";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_02_Ctrl_translateY";
	rename -uid "F5BD7893-46D2-4D28-CAD3-D7BF65A0A66E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_03_Ctrl_translateY";
	rename -uid "726C63DE-421C-34E8-D6E4-76844E407771";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_01_Ctrl_translateY";
	rename -uid "2380B47E-4377-BD45-34EA-978393785BE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_Ctrl_translateY";
	rename -uid "385D0CD7-4FE9-5843-F737-1EBFC7060258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 96 0 116 0 210 0 224 0 230 0
		 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_03_Jnt_02_Ctrl_translateY";
	rename -uid "5FE2D823-47A2-223F-E2F0-0D8E42AFC361";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Top_Jnt_03_Ctrl_translateY";
	rename -uid "DA29C5A6-4AF4-4BDB-9234-96805C545C58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_01_Ctrl_translateY";
	rename -uid "70126F10-407F-59A0-720F-F49F920E3A19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_02_Ctrl_translateY";
	rename -uid "329D7BD3-4E86-055D-2985-67A0536D9F3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_02_Ctrl_translateY";
	rename -uid "589679CB-4FB7-30B8-D5DE-AAA3F744E8B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_03_Ctrl_translateY";
	rename -uid "3D4646FC-4BAD-633C-2D68-A1B05BC08075";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_03_Ctrl_translateY";
	rename -uid "664764E7-45FA-FFDD-09E5-5D826F2DA60B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_01_Ctrl_translateY";
	rename -uid "0BDB6D9F-4B74-9D84-1093-069B71092516";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_Leg_03_Jnt_03_Ctrl_translateY";
	rename -uid "CC853AD3-4193-07F3-DD83-A1A1E2E942A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Shell_Ctrl_translateY";
	rename -uid "442DC2B3-45C7-2E30-D9F5-EFB5BEC86AA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_05_Ctrl_translateY";
	rename -uid "37FE6026-4F4E-2993-86ED-D28F5593ED93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_01_Ctrl_translateY";
	rename -uid "A73DE725-4B6B-4FE7-94BC-769BFF561CD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_04_Ctrl_translateY";
	rename -uid "A0ECB83B-452A-2A1F-2493-EEB60E446193";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_03_Ctrl_translateY";
	rename -uid "3A20AA54-4984-C7DE-0846-9581FC4A91BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_01_Jnt_01_Ctrl_translateY";
	rename -uid "2A6FC5DB-47D0-87B3-5A92-9AA1387CA291";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_04_Ctrl_translateY";
	rename -uid "2D19DC14-4535-D45C-8B0C-5BBCD33841CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_01_Jnt_03_Ctrl_translateY";
	rename -uid "1EB0F4E5-4588-042B-0F07-9B881248B67E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_01_Ctrl_translateY";
	rename -uid "ECF097C3-40B4-03C0-0138-B4A8F6BEC203";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 -0.39514950187560577
		 116 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_05_Ctrl_translateY";
	rename -uid "D73C7D4D-4BC4-FFEC-B176-3CB254820380";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Jnt_Ctrl_translateY";
	rename -uid "23D70F75-424D-EE57-AE22-EC898CD7C5CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 -0.39488687711915132
		 116 -0.17329585172234063 122 -0.013250303639730723 132 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 0.99548004219617203 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0.094970972350016808 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "R_Eye_Jnt_03_Ctrl_translateY";
	rename -uid "B28B9B79-410A-B985-329F-79B4807359B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Jnt_Ctrl_translateY";
	rename -uid "6A579DE8-4726-8071-41DE-CFBD6F936531";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 -0.75342145179758324
		 116 0.8079154933545879 122 0.2044699228665362 132 0 210 0 224 0 230 0 236 0 242 0
		 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 0.63646042582769347 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 -0.77130935839987769 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "R_Leg_01_Jnt_02_Ctrl_translateY";
	rename -uid "63F52DD4-4E88-0CEC-A74B-738A0647CD11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Body_Ctrl_translateY";
	rename -uid "1CF8185C-4FD0-6B2E-34A6-2FBBB5C73B51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_01_Ctrl_translateY";
	rename -uid "FB49C1E4-4F08-8796-3564-4C88D5607B83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_03_Ctrl_translateY";
	rename -uid "7EAE7C51-4692-5EC9-4B8A-B2B7348F72B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_02_Ctrl_translateY";
	rename -uid "2D55AEF0-4B30-F46D-5621-5EA83D8E65A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_02_Ctrl_translateY";
	rename -uid "A75FC20F-4461-513D-55F8-5EB48AE71206";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_03_Ctrl_translateY";
	rename -uid "DEC68FD3-4D0D-5CE5-E0B8-0BAE3D1645CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_03_Ctrl_translateY";
	rename -uid "A7E22829-45D9-CAC5-4DFF-E0972A9B7661";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_02_Ctrl_translateY";
	rename -uid "C4B97366-4BB1-1BAF-849E-5E9648948C76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Top_Jnt_01_Ctrl_translateZ";
	rename -uid "26A355F3-413F-C3AD-23A1-0583F29F6225";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Top_Jnt_02_Ctrl_translateZ";
	rename -uid "455EA354-4B8A-0E00-CA50-5A86EE632B18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Transform_Ctrl_translateZ";
	rename -uid "5591EADC-473F-5F0B-DB01-F5B1C09FFDB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -49.612423654554412 24 -34.216541618472512
		 48 -21.845448907897079 72 -6.251467742670215 96 3.520902828793266 102 3.520902828793266
		 108 3.520902828793266 116 3.520902828793266 132 3.520902828793266 142 3.520902828793266
		 210 3.520902828793266 214 4.9676944889305741 220 9.155338345449417 224 11.432807993449748
		 230 16.910665359632382 236 24.35835334002185 242 27.865298260371951 248 29.435926378450745
		 256 31.968558385369839 262 37.962894710819533 268 42.956591837046204 288 53.928503151731476;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 0.073748652183659752 0.064315037681414305 
		0.053649137242029493 0.038654177491966299 0.045595320337320645 0.097998254193623222 
		0.14074820510679698 0.068250882151206768 0.045457010129982538 0.067698514587436837 
		1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0.99727686040592234 0.99792964477864787 
		0.9985598480177269 0.99925264801371416 0.99895999257394541 0.9951865866132853 0.99004542459384914 
		0.9976681898735581 0.9989662958428791 0.99770582393942875 0;
createNode animCurveTL -n "R_Eye_Jnt_01_Ctrl_translateZ";
	rename -uid "42DF0B99-46A2-0D5A-8298-6984C65DEE78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_02_Ctrl_translateZ";
	rename -uid "E3CD85B6-41A1-6A64-55A7-96AF7CA62207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_01_Ctrl_translateZ";
	rename -uid "D505411B-4634-2E06-2164-18A61D742457";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_02_Ctrl_translateZ";
	rename -uid "880EAE3D-4428-76E7-91C1-AF9EF3FC7161";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_03_Jnt_01_Ctrl_translateZ";
	rename -uid "0A666DD5-4564-C55D-CBFC-9CB1F03C610B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_03_Ctrl_translateZ";
	rename -uid "6A70BFD2-4273-2DA0-BE58-1BB9284719E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_02_Ctrl_translateZ";
	rename -uid "90AA2C10-47D7-7570-E4A2-6396FF707373";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_01_Ctrl_translateZ";
	rename -uid "12A50CD0-4E33-2DCD-66F0-C0A696DF21E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_02_Ctrl_translateZ";
	rename -uid "68328405-4CB7-1ACA-6990-7982706B47CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_03_Ctrl_translateZ";
	rename -uid "8713ACB2-4E2F-A2C2-02C5-89B6F9467F57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_01_Ctrl_translateZ";
	rename -uid "5171C919-4072-9229-470C-A796C849AE88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_Ctrl_translateZ";
	rename -uid "2C411705-4839-12C9-9635-83812CA6996D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 96 0 116 0 210 0 224 0 230 0
		 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_03_Jnt_02_Ctrl_translateZ";
	rename -uid "46E08A45-4C74-61E8-BDFC-9EB274132253";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Top_Jnt_03_Ctrl_translateZ";
	rename -uid "D2F7C08D-4002-29CC-1E36-B58BA1B2D2AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_01_Ctrl_translateZ";
	rename -uid "1833C67A-424B-E433-235B-B3994FA791D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_02_Jnt_02_Ctrl_translateZ";
	rename -uid "C62424E4-4FA5-BA17-14F0-75BDAFCAED09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_02_Ctrl_translateZ";
	rename -uid "D3F43FE0-4454-345B-22DD-99A51F7F11B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_03_Ctrl_translateZ";
	rename -uid "2DCC32F1-49A8-44AD-0B74-DBB49F8F67C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_03_Ctrl_translateZ";
	rename -uid "EA2D0921-4E4D-A686-5ACD-48ACD5A01756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Bottom_Jnt_01_Ctrl_translateZ";
	rename -uid "D3323DC0-4734-3274-503F-3F9BB5814AF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "L_Leg_03_Jnt_03_Ctrl_translateZ";
	rename -uid "6BE0E8F2-43CA-F219-E3EA-E89E05124F9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Shell_Ctrl_translateZ";
	rename -uid "126590BE-4D41-D0BF-8032-0F86ECA7CEC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_05_Ctrl_translateZ";
	rename -uid "2945A622-48EA-01E5-9144-50B4689A1D27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_01_Ctrl_translateZ";
	rename -uid "F8F56104-443B-E208-4B3E-F18DB232FA61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_04_Ctrl_translateZ";
	rename -uid "A81F60C2-4A03-7FB3-6C6C-3E98F0A20EF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_03_Jnt_03_Ctrl_translateZ";
	rename -uid "D3195539-4830-F586-103F-4B9378D9E1CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_01_Jnt_01_Ctrl_translateZ";
	rename -uid "3AAF7BEA-4010-D414-A404-A9A82B41B659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_04_Ctrl_translateZ";
	rename -uid "006F822B-4044-BBC1-1254-EE883504DF47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_01_Jnt_03_Ctrl_translateZ";
	rename -uid "00696415-4A03-2EC4-C426-04839E54A9E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_01_Ctrl_translateZ";
	rename -uid "0C580446-4C28-29A2-184A-E986F26571D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0.21486903956200451
		 116 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_05_Ctrl_translateZ";
	rename -uid "01872C82-417B-F6FA-E46B-9A960F89ADDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Jnt_Ctrl_translateZ";
	rename -uid "86494F13-4295-4AB5-9123-F6915F50E7E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 -0.11494377938326242
		 116 -0.42430809474575437 122 -0.25983766244081768 132 0 210 0 224 0 230 0 236 0 242 0
		 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  0.61776242472335174 1 0.84362384542985613 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  -0.7863647923196494 0 0.53693463980464329 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_Eye_Jnt_03_Ctrl_translateZ";
	rename -uid "E7B818EA-4258-92E9-9D75-79B226D71D8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Claw_Jnt_Ctrl_translateZ";
	rename -uid "230B87DC-466D-ADE9-7C9C-B1BA92F7D98B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 0.18024037154243494
		 116 0.25431939223042999 122 0.099839171927966028 132 0 210 0 224 0 230 0 236 0 242 0
		 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  0.79502781612572426 1 0.93432392250293717 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0.60657297301014124 0 -0.3564250381759474 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "R_Leg_01_Jnt_02_Ctrl_translateZ";
	rename -uid "91B4F5E9-4251-C644-48B8-528EEC66F30D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "Body_Ctrl_translateZ";
	rename -uid "41E05E3D-4BDD-C531-F191-FCA7F8A6F9F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Eye_Jnt_01_Ctrl_translateZ";
	rename -uid "B6632B24-4676-6AF2-7230-4ABF562DC51B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_03_Ctrl_translateZ";
	rename -uid "817D0C37-49AC-2F6F-2AF8-C4854FC9F09F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Eye_Jnt_02_Ctrl_translateZ";
	rename -uid "B9C52B8E-4FDB-9C7B-A23C-D3AEF762E055";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Leg_01_Jnt_02_Ctrl_translateZ";
	rename -uid "369DC5A9-485A-65DC-E11B-E3ABD87275BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_03_Ctrl_translateZ";
	rename -uid "E5B029CF-4690-943B-56F8-3EB3AB3608C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "R_Leg_02_Jnt_03_Ctrl_translateZ";
	rename -uid "2D2240F5-4390-950C-2650-6FAE86F95A34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTL -n "L_Claw_Bottom_Jnt_02_Ctrl_translateZ";
	rename -uid "785F9F98-436B-DB9D-0BAA-51A56C7C5F31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_01_Ctrl_rotateX";
	rename -uid "9785B1DF-47F4-9C4F-2E6F-DA8AE756AA88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_02_Ctrl_rotateX";
	rename -uid "66D2EF32-4B8F-1B5E-E4AC-78BB42199F72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Transform_Ctrl_rotateX";
	rename -uid "2E13ED8A-4A60-6D94-FD38-3080355D45BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 24 -21.000000000000007 48 -9.9999999999999964
		 72 -17.999999999999996 96 0 102 0 108 0 116 0 132 0 142 0 210 0 214 46.99692847308274
		 220 62.509749036777102 224 62.633943767188569 230 55.598272016729666 236 -49.000000000000121
		 242 -82.000000000000227 248 -130.00000000000026 256 -195.99999999999983 262 -288.99999999999881
		 268 -355.99999999999812 288 0;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 0.35677829413903811 0.99923970771766757 
		1 0.56153704846050345 0.20382866751451312 0.33343746423942966 0.28133822256427238 
		0.20570903685728739 0.17624648478616409 1 1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0.93418908622999763 0.038987261000361685 
		0 -0.8274515956877877 -0.979006575207367 -0.94277221927758303 -0.95960867259752081 
		-0.97861319843707761 -0.9843460654670797 0 0;
createNode animCurveTA -n "R_Eye_Jnt_01_Ctrl_rotateX";
	rename -uid "2BA4EE3F-405E-953E-3EB0-CA83342D6969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_02_Ctrl_rotateX";
	rename -uid "1E0E85FF-4CCE-5359-2231-9FB30F1A5F88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_01_Ctrl_rotateX";
	rename -uid "2B7C1F81-4443-DCA6-4DFD-ECBEB9098BA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_02_Ctrl_rotateX";
	rename -uid "02920823-4CE3-0659-D68A-8A94404BB8A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_03_Jnt_01_Ctrl_rotateX";
	rename -uid "94CB032E-4FD0-0911-9119-A68CF1D4D118";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_03_Ctrl_rotateX";
	rename -uid "3AB9A11B-4422-D35F-A159-32971EA2B5D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_02_Ctrl_rotateX";
	rename -uid "9E7933AF-4C59-4A26-50F3-77BEFA546067";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_01_Ctrl_rotateX";
	rename -uid "3DDE6091-48A5-B7DE-E931-82BDEAD7048A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_02_Ctrl_rotateX";
	rename -uid "1089F892-4368-11C0-F54E-979BAAB01045";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_03_Ctrl_rotateX";
	rename -uid "574E8DDF-41F1-7DCA-F0A0-FC87D8D9E006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_01_Ctrl_rotateX";
	rename -uid "17328581-49C7-6DB2-28A9-6282A53893FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_Ctrl_rotateX";
	rename -uid "8CD33100-478D-5254-D3E0-318BF7E4A182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 96 0 116 0 210 0 224 0 230 0
		 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_03_Jnt_02_Ctrl_rotateX";
	rename -uid "89E62341-49A3-E5CE-537F-43BE89B7A7A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_03_Ctrl_rotateX";
	rename -uid "3FE13C01-4A9C-1E1B-2EDC-E0B9DEC6B3E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_01_Ctrl_rotateX";
	rename -uid "876E9BC4-4C7F-AAA4-6F81-6497F96EFC44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_02_Ctrl_rotateX";
	rename -uid "E26E0067-4C92-96FE-D15A-46A086779361";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_02_Ctrl_rotateX";
	rename -uid "6BE72B86-4E59-3881-8F9E-11859E5B2DEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_03_Ctrl_rotateX";
	rename -uid "81C55F7B-4264-55DF-A38D-36A0D3D092ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_03_Ctrl_rotateX";
	rename -uid "6D7E9B22-40E9-13F6-05DF-FC9A6003B50F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_01_Ctrl_rotateX";
	rename -uid "006C7A73-4689-ADA2-E1ED-E9BFE66F5952";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Leg_03_Jnt_03_Ctrl_rotateX";
	rename -uid "FF13864F-4F6A-399B-0AAC-1F839D6F6A07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Shell_Ctrl_rotateX";
	rename -uid "98DF19CE-4C5B-A0FD-E190-40BBA0802C6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_05_Ctrl_rotateX";
	rename -uid "F6609467-47C7-CD7E-AD0A-81AA0B0EC90E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_01_Ctrl_rotateX";
	rename -uid "229553C2-4AAD-B34A-089D-EAADB9EC3E70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_04_Ctrl_rotateX";
	rename -uid "8F4D2C87-4EA1-C7B7-3CB2-AD8D609FFB2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_03_Ctrl_rotateX";
	rename -uid "673AE28C-4F3F-5FB7-2485-1FBBD6D03E96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_01_Jnt_01_Ctrl_rotateX";
	rename -uid "2A41E9F2-48CA-392B-EB62-FCB4FA323309";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0.88029016576449515
		 116 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_04_Ctrl_rotateX";
	rename -uid "8A4D5F70-4874-5F48-5240-E4B86E4B36E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_01_Jnt_03_Ctrl_rotateX";
	rename -uid "7D588895-4B6C-F2F0-90FE-96BB23E2332F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_01_Ctrl_rotateX";
	rename -uid "21152E2E-4BF2-3644-7BAD-5CBBABDAAA58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_05_Ctrl_rotateX";
	rename -uid "54DD6819-4B0B-F1D3-3CA8-76BC37BF3B1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Jnt_Ctrl_rotateX";
	rename -uid "037C0993-447E-F085-0C03-F1B4B649A57E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 0 116 0 122 0 132 0
		 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Eye_Jnt_03_Ctrl_rotateX";
	rename -uid "4CE2EB83-4F71-1C02-3C0A-3E9200854071";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Jnt_Ctrl_rotateX";
	rename -uid "ABD810A6-4105-9631-155E-2D96792232B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 0 116 -37.000000000000014
		 122 0 132 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Leg_01_Jnt_02_Ctrl_rotateX";
	rename -uid "9350CF14-4E23-223B-BE8F-3BAF306740A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Body_Ctrl_rotateX";
	rename -uid "DE7526F9-46A5-4F6E-FF65-359BD49CE357";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_01_Ctrl_rotateX";
	rename -uid "D9557546-4785-D771-25A4-CEA6032A2530";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_03_Ctrl_rotateX";
	rename -uid "2C4678C8-4906-571F-D14A-14A10595388F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_02_Ctrl_rotateX";
	rename -uid "C001CE7B-4A0D-4143-B30A-3E81EDFFB4B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_02_Ctrl_rotateX";
	rename -uid "58DDD412-4118-5FAD-1B06-5A8BED7F205D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_03_Ctrl_rotateX";
	rename -uid "AB2E86ED-4F23-950B-A1C4-B08C56BF620F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_03_Ctrl_rotateX";
	rename -uid "9ECF182C-462F-266F-DA50-499EFA0561CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_02_Ctrl_rotateX";
	rename -uid "74E5F1E0-4C20-4FA5-4FFC-80A9582C8658";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_01_Ctrl_rotateY";
	rename -uid "1E5B975B-4A72-ECDC-D817-5F8744F337C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_02_Ctrl_rotateY";
	rename -uid "FECEE525-4D03-FCEB-43F5-D9B7D4B2B432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Transform_Ctrl_rotateY";
	rename -uid "5EC328F9-4B98-57FE-3DF8-20A270B917A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 24 0 48 -6.4354404205269411 72 -5.6310103679610783
		 96 0 102 53 108 53.000000000000078 116 53.000000000000078 132 131.99999999999977
		 142 21.999999999999755 210 21.999999999999755 214 51.710095868251514 220 18.161327051439674
		 224 -17.415460950934701 230 -35.071137546076464 236 -56.601660862481509 242 -56.601660862481502
		 248 -53.963940659553344 256 -42.051679882787987 262 -42.051679882788008 268 -42.051679882788029
		 288 0;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 1 0.32644089180962166 0.40920451239356603 
		0.59017532127950512 1 1 0.91688495527215219 1 1 1 1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0 -0.94521761735303 -0.9124426924671728 
		-0.80727510190308294 0 0 0.3991515737105184 0 0 0 0;
createNode animCurveTA -n "R_Eye_Jnt_01_Ctrl_rotateY";
	rename -uid "84C09FAC-4426-5AC8-EA0B-B6AB8D201B12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 -26 142 19.999999999999996
		 210 19.999999999999996 224 19.999999999999996 230 19.505615234374996 236 17.730415335166466
		 242 17.730415335166466 248 16.904152041417852 256 13.172647913544056 262 13.172647913544056
		 268 11.391912169200596 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_02_Ctrl_rotateY";
	rename -uid "5B89210A-4BBD-2ADB-9A21-84971E4493A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_01_Ctrl_rotateY";
	rename -uid "2F3DBA95-4BD0-A663-A0A8-CEB88EAB8D94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_02_Ctrl_rotateY";
	rename -uid "A43BBFAA-404F-FD81-02BD-3AA25F18285F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_03_Jnt_01_Ctrl_rotateY";
	rename -uid "FC77DE31-496E-9E30-4066-F4826DB31D1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_03_Ctrl_rotateY";
	rename -uid "49F8BE23-45E9-8C94-53A7-EAACD8E9E102";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_02_Ctrl_rotateY";
	rename -uid "371431DA-4E08-58C3-D3BE-ED8E248DD50A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_01_Ctrl_rotateY";
	rename -uid "71E2200E-43D9-7ABC-F49A-8588C9C77E32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_02_Ctrl_rotateY";
	rename -uid "B519DE60-402E-78E8-2E8F-0A93F4316DEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_03_Ctrl_rotateY";
	rename -uid "264C1287-4D04-D3E5-F956-E9A562E38F0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_01_Ctrl_rotateY";
	rename -uid "AD401543-472F-E372-5E1A-FE9612FAB2B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_Ctrl_rotateY";
	rename -uid "7FB1D4F9-403C-9D36-72E6-3DAA518DEAAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 96 0 116 0 210 0 224 0 230 0
		 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_03_Jnt_02_Ctrl_rotateY";
	rename -uid "185C8688-443F-48C5-0F52-63AE5A5092EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_03_Ctrl_rotateY";
	rename -uid "231B3A3F-459C-19F8-C16E-44AC6C663B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_01_Ctrl_rotateY";
	rename -uid "F6DDECC3-4966-4A1F-490E-C0B868DD2C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_02_Ctrl_rotateY";
	rename -uid "E2311E24-4FB0-C226-411C-A59165B6E910";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_02_Ctrl_rotateY";
	rename -uid "371DF096-40B6-380D-075D-CCB7C9BBAB2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_03_Ctrl_rotateY";
	rename -uid "F02C70A0-4DE6-1391-3EB1-F7A1DDB55E29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_03_Ctrl_rotateY";
	rename -uid "2D76DA68-45E7-2420-D04C-ECBA18893D96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_01_Ctrl_rotateY";
	rename -uid "7E5657EE-477F-BA02-ABF6-0C8321E6AD8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 132 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Leg_03_Jnt_03_Ctrl_rotateY";
	rename -uid "0CC99EE5-43E0-3BCD-EE96-BC884830606E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Shell_Ctrl_rotateY";
	rename -uid "2CADA52F-4317-D945-1CBD-A898033C29F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_05_Ctrl_rotateY";
	rename -uid "FE7F5C9D-4E1B-833C-78E7-32ABCA28A838";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_01_Ctrl_rotateY";
	rename -uid "8CECAF28-493A-C423-D867-6D80F62325AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_04_Ctrl_rotateY";
	rename -uid "0E3705CA-45F0-63E8-1F83-4BB368A8E161";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 -24.000000000000004
		 142 26.999999999999993 210 26.999999999999993 224 26.999999999999993 230 26.332580566406246
		 236 23.93606070247473 242 23.93606070247473 248 22.820605255914099 256 17.783074683284465
		 262 17.783074683284465 268 15.379081428420795 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_03_Ctrl_rotateY";
	rename -uid "93599FF5-46F0-475B-429C-AFB3864ED83F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_01_Jnt_01_Ctrl_rotateY";
	rename -uid "999FCF2B-4260-45B0-0466-14ABE70B83DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 -15.447792896624353
		 116 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_04_Ctrl_rotateY";
	rename -uid "45238215-4BDA-A84F-4F95-26AA7534D032";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 22.000000000000011
		 142 -25.000000000000007 210 -25.000000000000007 224 -25.000000000000007 230 -24.382019042968757
		 236 -22.163019168958098 242 -22.163019168958098 248 -21.130190051772328 256 -16.465809891930082
		 262 -16.465809891930082 268 -14.239890211500757 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_01_Jnt_03_Ctrl_rotateY";
	rename -uid "BFFADBF3-4221-5BFB-81BA-81A5DDE35D7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_01_Ctrl_rotateY";
	rename -uid "4DF4C46E-48C3-A907-56C5-3A8A27B95865";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_05_Ctrl_rotateY";
	rename -uid "D3BEBE24-4168-57DB-DD8D-EDAE59E02C4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Jnt_Ctrl_rotateY";
	rename -uid "322B16FE-4783-A729-1265-3F9A5CB487A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 0 116 0 122 0 132 0
		 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Eye_Jnt_03_Ctrl_rotateY";
	rename -uid "A0A62249-4910-9362-9452-2C88576037CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Jnt_Ctrl_rotateY";
	rename -uid "D27E6E39-454C-84BB-1109-12BAED72EE1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 0 116 0 122 0 132 0
		 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Leg_01_Jnt_02_Ctrl_rotateY";
	rename -uid "D1A6AD7F-433F-4DA0-BAF0-078206DC2C2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Body_Ctrl_rotateY";
	rename -uid "FDD040F0-42F6-A85C-6B05-83B3D6AAAAA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_01_Ctrl_rotateY";
	rename -uid "1F2FB497-492B-5CB1-29ED-06B2C6CA2938";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 26.999999999999993
		 142 -9.0000000000000071 210 -9.0000000000000071 224 -9.0000000000000071 230 -8.7775268554687571
		 236 -7.9786869008249175 242 -7.9786869008249175 248 -7.6068684186380402 256 -5.9276915610948286
		 262 -5.9276915610948286 268 -5.1263604761402712 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_03_Ctrl_rotateY";
	rename -uid "013A5AE9-45E0-1832-3E67-B599517AF054";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_02_Ctrl_rotateY";
	rename -uid "E1FFB8E4-4350-6510-A614-F993277195FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_02_Ctrl_rotateY";
	rename -uid "93517574-4911-2629-051F-9BAAA375ADCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_03_Ctrl_rotateY";
	rename -uid "FB4E37FB-4543-D8C2-E8BE-7D8CC617523E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_03_Ctrl_rotateY";
	rename -uid "677B3C82-4CB6-FAA0-3413-2EAE182D6155";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_02_Ctrl_rotateY";
	rename -uid "F1BD997A-4DD3-35F6-EE26-E1A7FD36524B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_01_Ctrl_rotateZ";
	rename -uid "A7E2F3C8-4142-DE5A-07A4-83A300A9A865";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_02_Ctrl_rotateZ";
	rename -uid "AE9E03A5-4B13-FE75-D35F-E288E45E4558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Transform_Ctrl_rotateZ";
	rename -uid "7F9E757E-419B-2CD5-3A47-1E9BB4D76D1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 24 0 48 -23.903485366755657 72 -11.951742683377836
		 96 0 102 0 108 0 116 0 132 0 142 0 210 0 214 53.796010254893872 220 80.2526905881912
		 224 98.271340312467643 230 108.1537424866692 236 181.57380906549284 242 181.5738090654925
		 248 173.11220392534838 256 134.89858031677915 262 134.89858031677903 268 134.89858031677903
		 288 0;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 0.28512755230186571 0.47294737276890436 
		0.65013262682192763 0.43503230557628558 1 1 0.58219617009236668 1 1 1 1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0.9584895820604139 0.88109067784819461 
		0.75982074698024693 0.90041484500477964 0 0 -0.81304835005661247 0 0 0 0;
createNode animCurveTA -n "R_Eye_Jnt_01_Ctrl_rotateZ";
	rename -uid "E57D12E4-4EF6-35FA-212A-03BC76C88CD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_02_Ctrl_rotateZ";
	rename -uid "3B3CDBA6-4968-AB27-9C62-B2953E20BF08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_01_Ctrl_rotateZ";
	rename -uid "E85C3A2F-4FC3-9E6E-A41F-B88AB1776447";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_02_Ctrl_rotateZ";
	rename -uid "3790A9B0-45BA-599B-EA43-F0AE906595B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_03_Jnt_01_Ctrl_rotateZ";
	rename -uid "4C1057B5-4D19-DDEC-DBD2-1B9457563209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_03_Ctrl_rotateZ";
	rename -uid "F7FC4ACF-4D90-A7CF-68F9-399FCEA2D9B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_02_Ctrl_rotateZ";
	rename -uid "E29C32D0-48B7-6E5E-C05A-EDAEA412F7D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_01_Ctrl_rotateZ";
	rename -uid "3373F199-48AF-928B-2E12-87A774A6676C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_02_Ctrl_rotateZ";
	rename -uid "22AD2A3C-4EDD-8C0F-9C1A-0C9E77BD1333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_03_Ctrl_rotateZ";
	rename -uid "779EDDF8-4581-BE4A-F2A5-32AE70056DE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_01_Ctrl_rotateZ";
	rename -uid "01AD7A68-46CC-7E02-476B-CB8CCE53DFFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 19.000000000000036
		 132 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_Ctrl_rotateZ";
	rename -uid "7E5A5FD2-4EBC-4D3E-3CD8-74BE06A20256";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 96 0 116 0 210 0 224 0 230 0
		 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_03_Jnt_02_Ctrl_rotateZ";
	rename -uid "D15CBB8A-4DBE-8ABE-703C-6EBC34BC9AAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Top_Jnt_03_Ctrl_rotateZ";
	rename -uid "3F23DDD3-4030-D06C-63BB-2E8335A03BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_01_Ctrl_rotateZ";
	rename -uid "244AF199-44DA-2D91-D2E1-D6959EF69588";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_02_Jnt_02_Ctrl_rotateZ";
	rename -uid "39CA963F-49F8-D7C2-760C-16879FF237F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_02_Ctrl_rotateZ";
	rename -uid "4D7E2C14-400E-0634-261F-EBBEE88D7702";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_03_Ctrl_rotateZ";
	rename -uid "8B84898A-4EAC-92F7-619C-C98EE94FE1D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_03_Ctrl_rotateZ";
	rename -uid "36F9A142-4AF4-B3A6-E0FA-B0A94EE85C65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Bottom_Jnt_01_Ctrl_rotateZ";
	rename -uid "3B2F566A-4E0E-EFC3-0545-BC8AD3227930";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 16.999999999999993
		 132 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Leg_03_Jnt_03_Ctrl_rotateZ";
	rename -uid "A3496908-48D8-5E2F-C628-A79735442912";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Shell_Ctrl_rotateZ";
	rename -uid "C867C1D7-482B-7833-CC94-1187A1D95861";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_05_Ctrl_rotateZ";
	rename -uid "E6F92214-466E-5C59-972E-DB8F33FE119E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_01_Ctrl_rotateZ";
	rename -uid "6C6AF649-4BE1-57AF-8DA3-1D9FAAC88AAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_04_Ctrl_rotateZ";
	rename -uid "F75ECE86-49F8-1F6E-C8E2-09BC2950435D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_03_Jnt_03_Ctrl_rotateZ";
	rename -uid "A079B9CB-4C24-715B-37E8-778B1BC3239D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_01_Jnt_01_Ctrl_rotateZ";
	rename -uid "FD9862BB-455B-75BF-6D1D-8CA5C005D91D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 -24.217559302343396
		 116 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_04_Ctrl_rotateZ";
	rename -uid "82EC62D3-4706-B13C-8264-2EA75EDB6023";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_01_Jnt_03_Ctrl_rotateZ";
	rename -uid "7C1EE251-411D-EB89-96C8-808A25C24DB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_01_Ctrl_rotateZ";
	rename -uid "93275BDF-4C8F-54C7-D4FE-47A456C6EFE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 0 116 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_05_Ctrl_rotateZ";
	rename -uid "70EA52A5-45EC-4A45-5D50-9B9C3F418463";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Jnt_Ctrl_rotateZ";
	rename -uid "86F2BA58-4940-589F-181D-82B7C6CEA4A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 -23.999999999999993
		 116 -23.916355734142435 122 -18.000000000000011 132 0 210 0 224 0 230 0 236 0 242 0
		 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 0.84756805883622799 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0.53068671138496437 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTA -n "R_Eye_Jnt_03_Ctrl_rotateZ";
	rename -uid "BB72B4BE-4066-6FF4-5BFE-649BEF0E7B95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Claw_Jnt_Ctrl_rotateZ";
	rename -uid "D4C0EA80-44DE-6478-9A1E-CBBD63962B87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 96 0 108 61.000000000000071
		 116 -5.0000000000000178 122 29.000000000000046 132 0 210 0 224 0 230 0 236 0 242 0
		 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "R_Leg_01_Jnt_02_Ctrl_rotateZ";
	rename -uid "BFCF9EE0-4A95-9A11-62FB-8BA46A70D3C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "Body_Ctrl_rotateZ";
	rename -uid "6EE28A22-4417-CF51-AA9A-2DAF1F4B84C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 108 -14.999999999999998
		 116 0 210 0 224 0 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Eye_Jnt_01_Ctrl_rotateZ";
	rename -uid "3DC16313-4149-438E-6E16-EA9E73B48BB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 24 0 48 0 96 0 132 0 142 0 210 0 224 0
		 230 0 236 0 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_03_Ctrl_rotateZ";
	rename -uid "6F82CF9E-4198-2F94-EAF6-CA852320CF4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Eye_Jnt_02_Ctrl_rotateZ";
	rename -uid "1A2F6198-41F4-42EB-1F1A-85A548BE364C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Leg_01_Jnt_02_Ctrl_rotateZ";
	rename -uid "2198E10D-4D6A-0756-C360-FEB847FC76CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Top_Jnt_03_Ctrl_rotateZ";
	rename -uid "E58BCA4E-45E8-FF8F-04C0-E18A87329F59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "R_Leg_02_Jnt_03_Ctrl_rotateZ";
	rename -uid "F74D3D3D-46C2-EA24-CDA8-5DA506792669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTA -n "L_Claw_Bottom_Jnt_02_Ctrl_rotateZ";
	rename -uid "7F9146E7-4A9C-4DA5-0E46-ADB1DEDCCD18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 24 0 48 0 96 0 210 0 224 0 230 0 236 0
		 242 0 248 0 256 0 262 0 268 0 288 0;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_01_Ctrl_scaleX";
	rename -uid "10C9E0DD-460F-148F-9E51-1B8F969DB078";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_02_Ctrl_scaleX";
	rename -uid "15D62D65-42C1-9A22-5B05-7496D84CDEF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Transform_Ctrl_scaleX";
	rename -uid "67C80006-4251-04B5-83FD-30BA90021CAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.7513273596373482 24 0.7513273596373482
		 48 0.7513273596373482 72 0.7513273596373482 96 0.7513273596373482 102 0.7513273596373482
		 108 0.7513273596373482 116 0.7513273596373482 132 0.7513273596373482 142 0.7513273596373482
		 210 0.7513273596373482 214 0.7513273596373482 220 0.7513273596373482 224 0.7513273596373482
		 230 0.7513273596373482 236 0.7513273596373482 242 0.7513273596373482 248 0.7513273596373482
		 256 0.7513273596373482 262 0.7513273596373482 268 0.7513273596373482 288 0.7513273596373482;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Eye_Jnt_01_Ctrl_scaleX";
	rename -uid "1475EECF-420F-7375-E8D7-34910264402A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_02_Ctrl_scaleX";
	rename -uid "03FADD0B-48ED-F864-9FD5-C2B7BEE026D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_01_Ctrl_scaleX";
	rename -uid "9413BE21-4DF3-84E7-BC17-0EA09C69587B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_02_Ctrl_scaleX";
	rename -uid "6A2E6C4F-4D9B-68DA-A2C5-579A1E2CC2BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_03_Jnt_01_Ctrl_scaleX";
	rename -uid "AC5700AA-425C-0D5A-28AA-CDB234A922EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_03_Ctrl_scaleX";
	rename -uid "3ACF7DF7-49A5-76AA-56A9-7EABD4142DB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_02_Ctrl_scaleX";
	rename -uid "CB66BC39-4C64-D120-168D-29B6D59D6D1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_01_Ctrl_scaleX";
	rename -uid "1A0E80F1-4272-78CB-5739-AF97C2EEF8DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_02_Ctrl_scaleX";
	rename -uid "442D2C74-4249-3C54-993F-819245F7C564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_03_Ctrl_scaleX";
	rename -uid "8F380761-4D01-B31C-17A9-01913F509F63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_01_Ctrl_scaleX";
	rename -uid "FEB311F8-4D8B-0889-919C-A8AA30C5FA62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 132 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_Ctrl_scaleX";
	rename -uid "661A1FF1-43E1-CCBF-B3FB-DCB92C505B5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 24 1 48 1 96 1 116 1 210 1 224 1 230 1
		 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_03_Jnt_02_Ctrl_scaleX";
	rename -uid "38C2B53D-4E55-B52C-CF24-3BA24999BC1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_03_Ctrl_scaleX";
	rename -uid "0803BECA-49BC-010B-4219-0C92B98D9F2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_01_Ctrl_scaleX";
	rename -uid "D3C75AD2-4F7E-5E7D-5E61-0892D536CD41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_02_Ctrl_scaleX";
	rename -uid "0689C943-48AE-2369-CB00-198AC9C42E1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_02_Ctrl_scaleX";
	rename -uid "FBC5C54C-49A8-DDE4-5382-F7ACB3DB8CEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_03_Ctrl_scaleX";
	rename -uid "B9370871-4918-5AD0-180C-A1A92068F15F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_03_Ctrl_scaleX";
	rename -uid "F730EE39-42E8-6DAF-0B6B-52A796DED578";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_01_Ctrl_scaleX";
	rename -uid "5BA27F58-4BFB-F0AB-58C3-9CBEDF39F8EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 132 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Leg_03_Jnt_03_Ctrl_scaleX";
	rename -uid "08B83894-420D-3553-34BF-29B44D03D3F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Shell_Ctrl_scaleX";
	rename -uid "F9F9C6E2-4B97-ED60-13A4-E9B2FFCAA271";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_05_Ctrl_scaleX";
	rename -uid "98A12BE1-4DC3-F3DA-2777-98B45FF08659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_01_Ctrl_scaleX";
	rename -uid "4A69FD4D-42A9-C60C-E4EB-84ABD74A5702";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_04_Ctrl_scaleX";
	rename -uid "E0F7DA10-4620-5C39-0F0F-56B25D6EEBAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_03_Ctrl_scaleX";
	rename -uid "447FF56E-4D0B-CD3D-0422-4FA4C44E31C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_01_Jnt_01_Ctrl_scaleX";
	rename -uid "5D00DA97-4D10-5E5E-48E6-56ABC4B7D064";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_04_Ctrl_scaleX";
	rename -uid "DD52C5D2-4E24-FCF6-75D4-C5BC4A194646";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_01_Jnt_03_Ctrl_scaleX";
	rename -uid "6475C0F4-4FE3-E67E-5057-D4B6487DFC8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_01_Ctrl_scaleX";
	rename -uid "5AFD18EE-4081-14D4-188C-4D8BADD5EFC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_05_Ctrl_scaleX";
	rename -uid "BDB272F4-449C-32E9-864A-22849B0A601E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Jnt_Ctrl_scaleX";
	rename -uid "5C71A61A-47D6-84EB-D775-A1AB5D828B9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 24 1 48 1 96 1 108 1 116 1 122 1 132 1
		 210 1 224 1 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Eye_Jnt_03_Ctrl_scaleX";
	rename -uid "37F0C86C-4499-7390-C4D8-93AD2D4B1BD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Jnt_Ctrl_scaleX";
	rename -uid "501D3A23-4703-5088-93EE-0990F263BFAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 24 1 48 1 96 1 108 1 116 1 122 1 132 1
		 210 1 224 1 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Leg_01_Jnt_02_Ctrl_scaleX";
	rename -uid "640BE8C3-40E3-81BF-1BC9-DC9C958EADEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Body_Ctrl_scaleX";
	rename -uid "76658E58-4F0D-08D3-29D0-4A81C48DF832";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_01_Ctrl_scaleX";
	rename -uid "3BAEFD9D-45D7-92E4-ABF7-8686C9AE29C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_03_Ctrl_scaleX";
	rename -uid "4A30F5B1-41E4-8AA4-1303-6EBA209C20CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_02_Ctrl_scaleX";
	rename -uid "AB5C06FC-427E-FBDF-2E78-819B3BB6C451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_02_Ctrl_scaleX";
	rename -uid "447BCDD6-4FEF-905C-75A1-1CAC529A44A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_03_Ctrl_scaleX";
	rename -uid "9D431646-4031-6107-2D2D-23A0E779AB18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_03_Ctrl_scaleX";
	rename -uid "F0AB2904-44DD-6994-E7A1-A7AE08824E14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_02_Ctrl_scaleX";
	rename -uid "3BF5C48F-4C0C-53EB-8C58-B09EC7A205A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_01_Ctrl_scaleY";
	rename -uid "8004E24C-4E14-66C6-EF21-71822BB85FF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_02_Ctrl_scaleY";
	rename -uid "2CDAE316-49A4-8E29-890B-4FA071D4855F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Transform_Ctrl_scaleY";
	rename -uid "A5D7FD98-4DC7-548E-20CE-639135F3A98B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.7513273596373482 24 0.7513273596373482
		 48 0.7513273596373482 72 0.7513273596373482 96 0.7513273596373482 102 0.7513273596373482
		 108 0.7513273596373482 116 0.7513273596373482 132 0.7513273596373482 142 0.7513273596373482
		 210 0.7513273596373482 214 0.7513273596373482 220 0.7513273596373482 224 0.7513273596373482
		 230 0.7513273596373482 236 0.7513273596373482 242 0.7513273596373482 248 0.7513273596373482
		 256 0.7513273596373482 262 0.7513273596373482 268 0.7513273596373482 288 0.7513273596373482;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Eye_Jnt_01_Ctrl_scaleY";
	rename -uid "AD720A04-4E11-1DC6-B37C-A08EE7CEEFA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_02_Ctrl_scaleY";
	rename -uid "C738B957-4306-CA25-1D45-B8A14F5062D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_01_Ctrl_scaleY";
	rename -uid "350F03A2-46A3-99E6-8C26-A59353EB1DC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_02_Ctrl_scaleY";
	rename -uid "5DC8A31F-4AC4-A6B5-8CC5-3DA61BA8A2BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_03_Jnt_01_Ctrl_scaleY";
	rename -uid "52EBD718-4DC4-1E07-8FF6-828D2756BC6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_03_Ctrl_scaleY";
	rename -uid "FA7C7B46-44F0-9347-A357-93B51A25080E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_02_Ctrl_scaleY";
	rename -uid "1856431A-4F02-928D-EE07-0AAE2AEAC1A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_01_Ctrl_scaleY";
	rename -uid "D6C959E0-455A-499C-4C4C-60B7A08336B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_02_Ctrl_scaleY";
	rename -uid "C94FEC25-4AAB-8712-BBB8-A98F78EAC57C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_03_Ctrl_scaleY";
	rename -uid "34ACAF62-4D66-D06E-6848-7291FBDACC4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_01_Ctrl_scaleY";
	rename -uid "DE5C629E-4ED9-5539-CEF9-1FA70A0DD6FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 132 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_Ctrl_scaleY";
	rename -uid "CB002398-4795-3479-0775-6B9CDF2D3806";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 24 1 48 1 96 1 116 1 210 1 224 1 230 1
		 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_03_Jnt_02_Ctrl_scaleY";
	rename -uid "23436E7F-40EC-BA28-7B26-A0AA638DFD63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_03_Ctrl_scaleY";
	rename -uid "2F97E4B9-4371-4162-540A-1A808AF94772";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_01_Ctrl_scaleY";
	rename -uid "8B404D65-4D8C-76BB-3D8A-BB9358CBD5BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_02_Ctrl_scaleY";
	rename -uid "9E2867A3-47BD-2861-5691-3CB9C1439407";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_02_Ctrl_scaleY";
	rename -uid "AAC4BCA3-4A74-CBD3-A986-BAA17880D5F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_03_Ctrl_scaleY";
	rename -uid "B68E475C-4AED-2496-599A-709F23D7B1BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_03_Ctrl_scaleY";
	rename -uid "C3CDE27F-4DCD-DC0D-FA33-0FB36F27FF44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_01_Ctrl_scaleY";
	rename -uid "91B06FE8-41EA-E99D-8B31-ABA0539BE14D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 132 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Leg_03_Jnt_03_Ctrl_scaleY";
	rename -uid "0D64BE34-4106-2E0D-E4D8-1DBBBEED9DD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Shell_Ctrl_scaleY";
	rename -uid "D023A913-453E-49DD-6040-969D9925E30E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_05_Ctrl_scaleY";
	rename -uid "CC8C6BAA-4888-296F-AB35-8B980F03618C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_01_Ctrl_scaleY";
	rename -uid "4592EF6F-4847-C350-EB64-7380A326C2B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_04_Ctrl_scaleY";
	rename -uid "430F200D-4E1F-C875-D504-B3B03CAFCE00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_03_Ctrl_scaleY";
	rename -uid "4DC4F6E0-409D-27E1-579E-C9A66326FACD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_01_Jnt_01_Ctrl_scaleY";
	rename -uid "8D67380E-450B-4013-A199-4EA9F11F9AEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_04_Ctrl_scaleY";
	rename -uid "80BE297F-4BE7-326D-839F-4CB38F11F6EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_01_Jnt_03_Ctrl_scaleY";
	rename -uid "CD7C73A8-410F-954D-A8A4-759D90A79541";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_01_Ctrl_scaleY";
	rename -uid "65F5220C-4EE9-ECE1-6349-5CBAA1C7F886";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_05_Ctrl_scaleY";
	rename -uid "74F44549-4FF0-3971-C562-629F74A587D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Jnt_Ctrl_scaleY";
	rename -uid "C5F30BEA-4285-659E-17FF-8EA6CB9DD3B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 24 1 48 1 96 1 108 1 116 1 122 1 132 1
		 210 1 224 1 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Eye_Jnt_03_Ctrl_scaleY";
	rename -uid "0E98795D-489E-F52E-38D7-3481BD4BBE6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Jnt_Ctrl_scaleY";
	rename -uid "1411731F-4332-45E6-A4F6-1588DCA8127F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 24 1 48 1 96 1 108 1 116 1 122 1 132 1
		 210 1 224 1 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Leg_01_Jnt_02_Ctrl_scaleY";
	rename -uid "8D7CEAEE-4E97-7F07-BFF0-71BF34629362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Body_Ctrl_scaleY";
	rename -uid "1D0ADD47-49FA-37E0-026F-81A1D10E1A0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_01_Ctrl_scaleY";
	rename -uid "94654CD6-40CD-3C18-278E-E3AE6EA63FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_03_Ctrl_scaleY";
	rename -uid "31A4F8E1-4D03-4BB4-C68C-81BB6D7ECC56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_02_Ctrl_scaleY";
	rename -uid "E0D938AF-46BC-DD0E-F570-5FA38823ED2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_02_Ctrl_scaleY";
	rename -uid "68C62128-4A56-C700-E1CF-9FABAE1BFD29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_03_Ctrl_scaleY";
	rename -uid "72B9D880-4FBF-5817-D063-488DA2E0BDA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_03_Ctrl_scaleY";
	rename -uid "75D24D65-44E0-8172-8138-B7A94A47B437";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_02_Ctrl_scaleY";
	rename -uid "44DF9D82-4212-D389-B123-4791B2637429";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_01_Ctrl_scaleZ";
	rename -uid "A5D061F5-4546-B61D-45AA-36A3B19560C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_02_Ctrl_scaleZ";
	rename -uid "E28B5980-4089-3D8E-FE2C-47A311FB8A38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Transform_Ctrl_scaleZ";
	rename -uid "604954D7-4DD9-8F7E-DFA9-01A762ED3858";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.7513273596373482 24 0.7513273596373482
		 48 0.7513273596373482 72 0.7513273596373482 96 0.7513273596373482 102 0.7513273596373482
		 108 0.7513273596373482 116 0.7513273596373482 132 0.7513273596373482 142 0.7513273596373482
		 210 0.7513273596373482 214 0.7513273596373482 220 0.7513273596373482 224 0.7513273596373482
		 230 0.7513273596373482 236 0.7513273596373482 242 0.7513273596373482 248 0.7513273596373482
		 256 0.7513273596373482 262 0.7513273596373482 268 0.7513273596373482 288 0.7513273596373482;
	setAttr -s 22 ".kit[6:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 22 ".kot[0:21]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 18 5;
	setAttr -s 22 ".kix[6:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[6:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Eye_Jnt_01_Ctrl_scaleZ";
	rename -uid "502484E5-4EA5-2054-3157-00BE0E4C47DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_02_Ctrl_scaleZ";
	rename -uid "051E5915-405F-2D4A-F263-C59C64ACECD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_01_Ctrl_scaleZ";
	rename -uid "122BAF9E-4E0D-88BE-E6A9-33996E7C1F25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_02_Ctrl_scaleZ";
	rename -uid "8E1988A8-4113-AF26-C1E6-B09170BB3FAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_03_Jnt_01_Ctrl_scaleZ";
	rename -uid "F8CDC41C-4D3B-D6AB-5EF4-F087B0E3A06D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_03_Ctrl_scaleZ";
	rename -uid "FE01981F-40E0-7203-B8DA-F79EE660EFEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_02_Ctrl_scaleZ";
	rename -uid "1C52A89B-41CE-A65C-3828-DB9AF2B43D5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_01_Ctrl_scaleZ";
	rename -uid "69813F38-4503-C3DE-51A6-B399A9918EAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_02_Ctrl_scaleZ";
	rename -uid "11A16C09-467A-FE48-6692-928BA85A19D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_03_Ctrl_scaleZ";
	rename -uid "350F765A-432A-23D9-BE4D-BF80D6AE1101";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_01_Ctrl_scaleZ";
	rename -uid "141D3521-4B06-7123-4B49-5BBE618B48BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 132 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_Ctrl_scaleZ";
	rename -uid "21E4A988-4469-C481-5E89-17AA5461959A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 24 1 48 1 96 1 116 1 210 1 224 1 230 1
		 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 5 5 
		5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_03_Jnt_02_Ctrl_scaleZ";
	rename -uid "C50D2AD3-4CCB-7741-359E-589FE337EF0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Top_Jnt_03_Ctrl_scaleZ";
	rename -uid "0FEBE236-4B8C-02B6-03B4-90900C853B4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_01_Ctrl_scaleZ";
	rename -uid "7CD39F93-411E-D124-9F99-E799A24CF225";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_02_Jnt_02_Ctrl_scaleZ";
	rename -uid "0838DC2D-47C7-6D42-FCBE-6F8E88D3EE18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_02_Ctrl_scaleZ";
	rename -uid "6E16D482-48B5-766F-6F9D-1697F516993F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_03_Ctrl_scaleZ";
	rename -uid "6ACE3CF3-40DE-38B8-BA7A-A58AA3F4CF0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_03_Ctrl_scaleZ";
	rename -uid "C560F030-410E-A976-42DA-40906615583E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Bottom_Jnt_01_Ctrl_scaleZ";
	rename -uid "2052F931-4B90-0ADB-B1C9-3BAECD3B2305";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 132 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kit[4:15]"  1 18 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
	setAttr -s 16 ".kix[4:15]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[4:15]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "L_Leg_03_Jnt_03_Ctrl_scaleZ";
	rename -uid "56B14E80-4264-B6D4-FC8F-ABA084F2B209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Shell_Ctrl_scaleZ";
	rename -uid "F16BA69E-465E-8EC8-27E4-888937DE5E9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_05_Ctrl_scaleZ";
	rename -uid "51B48259-47BF-92BD-6287-03914D72AAC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_01_Ctrl_scaleZ";
	rename -uid "FC0B6EA2-411F-3BD1-7A36-A7BDE7F151F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_04_Ctrl_scaleZ";
	rename -uid "B5DFE3BA-4E8C-9A1C-903F-0B9AB5A80696";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_03_Jnt_03_Ctrl_scaleZ";
	rename -uid "AE791ED8-493F-8A4C-BC08-9DA9FBAD609F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_01_Jnt_01_Ctrl_scaleZ";
	rename -uid "D6311616-4641-F1E5-5AC6-85A0DC45C209";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_04_Ctrl_scaleZ";
	rename -uid "590C333D-4F49-4461-01AB-30AD9595BAD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_01_Jnt_03_Ctrl_scaleZ";
	rename -uid "D4C9621F-457A-C314-C6D8-0A988A7199ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_01_Ctrl_scaleZ";
	rename -uid "74715B98-4D57-40EF-7666-D6AC17988108";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_05_Ctrl_scaleZ";
	rename -uid "7DEFFF2C-443F-7CDA-70B8-EFABD917DC7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Jnt_Ctrl_scaleZ";
	rename -uid "E56EE7D8-43D1-1629-8AE6-1A8344EEBCC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 24 1 48 1 96 1 108 1 116 1 122 1 132 1
		 210 1 224 1 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Eye_Jnt_03_Ctrl_scaleZ";
	rename -uid "AD9C54AF-4B65-529F-175F-8C99BEAA3911";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Claw_Jnt_Ctrl_scaleZ";
	rename -uid "F8927C94-4219-7E21-C2BC-BAB1A26D3E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 24 1 48 1 96 1 108 1 116 1 122 1 132 1
		 210 1 224 1 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 18 ".kit[4:17]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 18 ".kot[0:17]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 18 18 5;
	setAttr -s 18 ".kix[4:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[4:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "R_Leg_01_Jnt_02_Ctrl_scaleZ";
	rename -uid "617641EB-4271-79DE-224F-A0BE2CCDBB39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "Body_Ctrl_scaleZ";
	rename -uid "B57E1906-493A-6157-CC74-A98AD3F564AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 108 1 116 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Eye_Jnt_01_Ctrl_scaleZ";
	rename -uid "B9A762BE-49FC-BC9D-8CCE-A8B6383FA4CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 24 1 48 1 96 1 132 1 142 1 210 1 224 1
		 230 1 236 1 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 16 ".kot[0:15]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_03_Ctrl_scaleZ";
	rename -uid "F8DEE4B5-4355-0BF4-4B2D-25AF473A31BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Eye_Jnt_02_Ctrl_scaleZ";
	rename -uid "19E586DB-4984-3209-B92B-FEBC37D6E491";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Leg_01_Jnt_02_Ctrl_scaleZ";
	rename -uid "F707A8A9-4503-4E2A-918C-ED86197ECE37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Top_Jnt_03_Ctrl_scaleZ";
	rename -uid "9839464C-4D7F-9FE5-494F-C086A2E4D6D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "R_Leg_02_Jnt_03_Ctrl_scaleZ";
	rename -uid "C13E830B-452F-2E4C-CBCF-05BF10163B0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode animCurveTU -n "L_Claw_Bottom_Jnt_02_Ctrl_scaleZ";
	rename -uid "5DF50110-4C9A-D5AD-F95A-1E93C3818569";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 24 1 48 1 96 1 210 1 224 1 230 1 236 1
		 242 1 248 1 256 1 262 1 268 1 288 1;
	setAttr -s 14 ".kot[0:13]"  5 5 5 5 5 5 5 5 
		5 5 5 18 18 5;
createNode shadingEngine -n "FishRig:FishModelUVFlipped:lambert2SG";
	rename -uid "DEA0B2C0-46EC-8522-F0F7-E08DCE243724";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig:FishModelUVFlipped:materialInfo1";
	rename -uid "E53CD301-47E0-1DA9-E14C-C8B3AEF269E3";
createNode lambert -n "FishRig:FishModelUVFlipped:lambert2SG1";
	rename -uid "4FA26A7F-4B2C-3265-35A7-9DAF3715ABA1";
	setAttr ".c" -type "float3" 0.11 0.33000001 0.38 ;
createNode shadingEngine -n "FishRig:FishModelUVFlipped:lambert3SG";
	rename -uid "512A77D5-4DCA-0F21-EB81-7FB491CF9AB5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig:FishModelUVFlipped:materialInfo2";
	rename -uid "26721953-4198-4FE5-6057-BF88DA64D231";
createNode lambert -n "FishRig:FishModelUVFlipped:lambert3SG1";
	rename -uid "55E0751A-48AA-4C9A-CBD1-F88D2F78B38A";
	setAttr ".c" -type "float3" 0.5 0.60000002 0.70999998 ;
createNode shadingEngine -n "FishRig:FishModelUVFlipped:lambert4SG";
	rename -uid "664AF569-4FDA-DC5D-CA1D-1180A9B71A94";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig:FishModelUVFlipped:materialInfo3";
	rename -uid "FEA5DA67-43F2-5DAA-6025-6BBAC6E91499";
createNode lambert -n "FishRig:FishModelUVFlipped:lambert4SG1";
	rename -uid "2D8B8632-47C4-F6E9-9B5C-7C802B63E7F5";
	setAttr ".c" -type "float3" 0.30000001 0.47 0.40000001 ;
createNode shadingEngine -n "FishRig:FishModelUV:lambert2SG";
	rename -uid "3A8B2168-4966-E1F2-53DA-69B90540DB2A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig:FishModelUV:materialInfo1";
	rename -uid "7ED61D73-4AD2-1FF6-7B4E-2DB98624D4E3";
createNode lambert -n "FishRig:FishModelUV:lambert2SG1";
	rename -uid "853F7A08-40BC-AF75-A7A3-BAA75F406D68";
	setAttr ".c" -type "float3" 0.11 0.33000001 0.38 ;
createNode shadingEngine -n "FishRig:FishModelUV:lambert3SG";
	rename -uid "90E2685D-4CBE-97F3-C8FC-AA9BA03D4F79";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig:FishModelUV:materialInfo2";
	rename -uid "8F3EB966-4DDE-2CDE-45BC-5D82CF378248";
createNode lambert -n "FishRig:FishModelUV:lambert3SG1";
	rename -uid "1A2FAE8C-44A5-2C5C-987E-E99810D210B1";
	setAttr ".c" -type "float3" 0.5 0.60000002 0.70999998 ;
createNode shadingEngine -n "FishRig:FishModelUV:lambert4SG";
	rename -uid "F704EE26-45E5-0C03-B58A-B6B4E867F256";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig:FishModelUV:materialInfo3";
	rename -uid "CCE6DEE3-48FE-0256-47AF-57B1C3A3BC50";
createNode lambert -n "FishRig:FishModelUV:lambert4SG1";
	rename -uid "F98A6E70-47B8-F50F-CDBF-9B8328111E61";
	setAttr ".c" -type "float3" 0.30000001 0.47 0.40000001 ;
createNode shadingEngine -n "FishRig:FishModelSmallEyes:pasted__lambert3SG2";
	rename -uid "D1C04C5B-4814-18E5-F447-4BB0C79F6EB3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig:FishModelSmallEyes:materialInfo1";
	rename -uid "0393839B-4750-BEE5-11ED-A684B883B711";
createNode lambert -n "FishRig:FishModelSmallEyes:pasted__lambert3SG3";
	rename -uid "FBFE54BE-44AD-A16A-4F55-EA80B9F31E72";
	setAttr ".c" -type "float3" 0.5 0.60000002 0.70999998 ;
createNode shadingEngine -n "FishRig1:FishModelUVFlipped:lambert2SG";
	rename -uid "E93B0257-443F-37A7-5B2E-7AB22B326804";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig1:FishModelUVFlipped:materialInfo1";
	rename -uid "58EBE8DD-483A-48F6-6E54-B69C3F40ADAE";
createNode lambert -n "FishRig1:FishModelUVFlipped:lambert2SG1";
	rename -uid "237D2B29-4DB6-2879-F610-6183D2A6EAD4";
	setAttr ".c" -type "float3" 0.11 0.33000001 0.38 ;
createNode shadingEngine -n "FishRig1:FishModelUVFlipped:lambert3SG";
	rename -uid "4F8028E6-4459-BE17-18CA-30AFB19A6BA9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig1:FishModelUVFlipped:materialInfo2";
	rename -uid "B8FCF137-4D78-8E13-1B4C-DD922E9E58DF";
createNode lambert -n "FishRig1:FishModelUVFlipped:lambert3SG1";
	rename -uid "88886A27-4188-4112-049B-A99CD80D03C0";
	setAttr ".c" -type "float3" 0.5 0.60000002 0.70999998 ;
createNode shadingEngine -n "FishRig1:FishModelUVFlipped:lambert4SG";
	rename -uid "522433D8-4B97-F6A5-0714-8A887609FFFE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig1:FishModelUVFlipped:materialInfo3";
	rename -uid "1C205A79-420F-830F-C2C5-10BCCC9B16F4";
createNode lambert -n "FishRig1:FishModelUVFlipped:lambert4SG1";
	rename -uid "A613C1FE-4933-D0C4-C550-80BEDD75E102";
	setAttr ".c" -type "float3" 0.30000001 0.47 0.40000001 ;
createNode shadingEngine -n "FishRig1:FishModelUV:lambert2SG";
	rename -uid "337230E5-468D-FC11-0A0C-B1A9E7CC01D5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig1:FishModelUV:materialInfo1";
	rename -uid "67C2AAE1-4B83-4572-0FBC-1CB4ABCF9AF0";
createNode lambert -n "FishRig1:FishModelUV:lambert2SG1";
	rename -uid "6F866EC8-4865-C8D5-A276-04839E464EE5";
	setAttr ".c" -type "float3" 0.11 0.33000001 0.38 ;
createNode shadingEngine -n "FishRig1:FishModelUV:lambert3SG";
	rename -uid "7E9E04F5-4A16-E0BB-E92D-9CB5FA362A57";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig1:FishModelUV:materialInfo2";
	rename -uid "8E19C7FA-4F6B-7F53-004F-F5BC45E51BF1";
createNode lambert -n "FishRig1:FishModelUV:lambert3SG1";
	rename -uid "3AE1933C-43F9-5FC4-BE34-E790AD5E2DFB";
	setAttr ".c" -type "float3" 0.5 0.60000002 0.70999998 ;
createNode shadingEngine -n "FishRig1:FishModelUV:lambert4SG";
	rename -uid "36EB8098-4E49-5733-E2B3-CA856D4DD17D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig1:FishModelUV:materialInfo3";
	rename -uid "B58F9328-42CC-D17A-316D-2E871849297F";
createNode lambert -n "FishRig1:FishModelUV:lambert4SG1";
	rename -uid "202E9978-490F-E7CC-5A18-27BD15FDCFED";
	setAttr ".c" -type "float3" 0.30000001 0.47 0.40000001 ;
createNode shadingEngine -n "FishRig1:FishModelSmallEyes:pasted__lambert3SG2";
	rename -uid "0E42FE5C-4A5E-0348-19A3-E3A1A548C9AD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "FishRig1:FishModelSmallEyes:materialInfo1";
	rename -uid "3DF9EBC0-4C6C-9126-9BC0-DDA9BD8B6B8F";
createNode lambert -n "FishRig1:FishModelSmallEyes:pasted__lambert3SG3";
	rename -uid "F6E34756-43EB-E83E-4EA2-AB9447B7D95D";
	setAttr ".c" -type "float3" 0.5 0.60000002 0.70999998 ;
createNode reference -n "FishRigRN";
	rename -uid "3BCAED36-4F20-777B-A0A8-DA9D7B04CD05";
	setAttr -s 88 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"FishRigRN"
		"FishRigRN" 0
		"FishRigRN" 91
		2 "|FishRig2:Fish" "visibility" " 1"
		2 "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl" 
		"MasterScale" " -k 1 8"
		2 "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl" 
		"visibility" " 1"
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl.translateX" 
		"FishRigRN.placeHolderList[1]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl.translateY" 
		"FishRigRN.placeHolderList[2]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[3]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[4]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[5]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[6]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.translateX" 
		"FishRigRN.placeHolderList[7]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.translateY" 
		"FishRigRN.placeHolderList[8]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[9]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[10]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[11]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[12]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[13]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[14]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[15]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.translateX" 
		"FishRigRN.placeHolderList[16]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.translateY" 
		"FishRigRN.placeHolderList[17]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[18]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[19]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[20]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[21]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[22]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[23]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[24]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.translateX" 
		"FishRigRN.placeHolderList[25]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.translateY" 
		"FishRigRN.placeHolderList[26]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[27]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[28]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[29]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[30]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[31]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[32]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[33]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.translateX" 
		"FishRigRN.placeHolderList[34]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.translateY" 
		"FishRigRN.placeHolderList[35]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[36]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[37]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[38]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[39]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[40]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[41]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[42]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.translateX" 
		"FishRigRN.placeHolderList[43]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.translateY" 
		"FishRigRN.placeHolderList[44]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[45]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[46]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[47]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[48]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[49]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[50]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[51]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.translateX" 
		"FishRigRN.placeHolderList[52]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.translateY" 
		"FishRigRN.placeHolderList[53]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[54]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[55]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[56]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[57]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[58]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[59]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[60]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Spine_02_Ctrl_Grp|FishRig2:Spine_02_Ctrl|FishRig2:Spine_03_Ctrl_Grp|FishRig2:Spine_03_Ctrl|FishRig2:Spine_04_Ctrl_Grp|FishRig2:Spine_04_Ctrl|FishRig2:Spine_05_Ctrl_Grp|FishRig2:Spine_05_Ctrl.visibility" 
		"FishRigRN.placeHolderList[61]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.translateX" 
		"FishRigRN.placeHolderList[62]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.translateY" 
		"FishRigRN.placeHolderList[63]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[64]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[65]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[66]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[67]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[68]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[69]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Right_Fin_Ctrl_Grp|FishRig2:Right_Fin_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[70]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.translateX" 
		"FishRigRN.placeHolderList[71]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.translateY" 
		"FishRigRN.placeHolderList[72]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[73]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[74]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[75]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[76]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[77]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[78]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Left_Fin_Ctrl_Grp|FishRig2:Left_Fin_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[79]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.translateX" 
		"FishRigRN.placeHolderList[80]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.translateY" 
		"FishRigRN.placeHolderList[81]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.translateZ" 
		"FishRigRN.placeHolderList[82]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.rotateX" 
		"FishRigRN.placeHolderList[83]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.rotateY" 
		"FishRigRN.placeHolderList[84]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.rotateZ" 
		"FishRigRN.placeHolderList[85]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.scaleX" 
		"FishRigRN.placeHolderList[86]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.scaleY" 
		"FishRigRN.placeHolderList[87]" ""
		5 4 "FishRigRN" "|FishRig2:Fish|FishRig2:Controls|FishRig2:Transform_Ctrl_Grp|FishRig2:Transform_Ctrl|FishRig2:COG_Ctrl_Grp|FishRig2:COG_Ctrl|FishRig2:Spine_01_Ctrl_Grp|FishRig2:Spine_01_Ctrl|FishRig2:Jaw_Ctrl_Grp|FishRig2:Jaw_Ctrl.scaleZ" 
		"FishRigRN.placeHolderList[88]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "Jaw_Ctrl_translateX";
	rename -uid "1790F5F6-48EF-1A0E-1E64-11BD6B2E7998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Transform_Ctrl_translateX1";
	rename -uid "28E9CB45-4B98-AAC6-423D-03BC800700B2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 -1.1095406787595842e-13 96 -3.8893886780381193
		 140 -3.8893886780381051 154 -3.889388678038098 158 -3.8893886780380909 168 -3.8893886780380837
		 178 -3.8893886780380766 188 -3.8893886780380837 198 -3.8893886780380909 214 -0.79043096376975552
		 220 7.3818989357994846 228 18.465456044821831 236 23.419306434488085 240 24.607617150575386
		 244 24.705364643235512 248 24.767860518941234 254 27.777905402434193 260 33.32334777737799;
	setAttr -s 18 ".kit[0:17]"  18 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 0.081059960130875519 0.030279874985193949 
		0.041533608532468416 0.081136183800423964 0.49412510015437117 0.90126619440312372 
		0.66438832959290273 0.058342476403043061 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0.99670922683778784 0.99954145945572503 
		0.99913710738930694 0.99670302481647155 0.8693908128094251 0.4332657923562751 0.74738754839825383 
		0.99829662698376409 0;
createNode animCurveTL -n "Spine_03_Ctrl_translateX";
	rename -uid "282276B2-41E9-A8AB-64CE-E884D5B9119D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 158 0 168 0 178 0 188 0 198 0 214 0
		 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_02_Ctrl_translateX";
	rename -uid "C39D1FE6-4331-8165-085C-FC959DB44914";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_Ctrl_translateX1";
	rename -uid "77553DC5-41DA-CC22-7252-EB9ADD7022A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Right_Fin_Ctrl_translateX";
	rename -uid "DCF6C568-4C11-4A05-DE38-9FAFDB3445AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Spine_04_Ctrl_translateX";
	rename -uid "92486991-4DC8-A159-370D-E1BA6782AC0D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_05_Ctrl_translateX";
	rename -uid "7BE29A3C-44D6-EF2C-2E0A-AC89C7959929";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Left_Fin_Ctrl_translateX";
	rename -uid "5B8DA7E0-474E-6634-3292-568E3430199E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 158 0 178 0 198 0 220 0 228 0 236 0
		 240 0 244 0 248 0 254 0;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_01_Ctrl_translateX";
	rename -uid "94802410-479B-8773-E88A-9BA49CE24916";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 158 0 178 0 198 0 208 0 214 0 220 0
		 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Jaw_Ctrl_translateY";
	rename -uid "3A0174D0-49B8-93BC-0694-7397078E4DE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Transform_Ctrl_translateY1";
	rename -uid "2FC031C0-45F4-1D03-3383-A1BC29FB0935";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 6.7199104941041403 96 17.4965528878705
		 140 17.496552887870507 154 17.496552887870585 158 17.496552887870578 168 17.496552887870578
		 178 17.496552887870607 188 17.496552887870578 198 17.496552887870578 214 20.286866946905736
		 220 27.645265839814158 228 37.624945485983964 236 42.085412411685994 240 43.155372186333665
		 244 43.243384424044841 248 43.299655963282262 254 46.00991254989728 260 51.003051291717881;
	setAttr -s 18 ".kit[0:17]"  18 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 0.089957235383786957 0.033625609470507752 
		0.046118459753456499 0.090041695744278769 0.53377922632552832 0.91771692795520476 
		0.70256506225562743 0.064770154356974752 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0.99594562893870164 0.9994344992983466 
		0.99893597776332432 0.99593799657784665 0.84562387474770384 0.39723499360512227 0.7116195144160582 
		0.9979002089911464 0;
createNode animCurveTL -n "Spine_03_Ctrl_translateY";
	rename -uid "7336A9EB-40CD-5A85-66AD-A4903C836E4E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 158 0 168 0 178 0 188 0 198 0 214 0
		 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_02_Ctrl_translateY";
	rename -uid "DA7025F2-42A5-F838-0DC4-87813C8531D5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_Ctrl_translateY1";
	rename -uid "36DDCB6F-4BFB-1345-46C9-3DB84C5EE693";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Right_Fin_Ctrl_translateY";
	rename -uid "CB106CB7-4613-E49D-CA59-8D8AC503A023";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Spine_04_Ctrl_translateY";
	rename -uid "59CC2229-4404-CF6D-6518-749C8908E4BD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_05_Ctrl_translateY";
	rename -uid "9A1E9846-4812-E9E6-BF83-8A87D417131C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Left_Fin_Ctrl_translateY";
	rename -uid "CF2ADA40-4FD8-9B14-8586-4DA5B44F5346";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 158 0 178 0 198 0 220 0 228 0 236 0
		 240 0 244 0 248 0 254 0;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_01_Ctrl_translateY";
	rename -uid "C6D420DD-4874-F593-50CF-79A69D9FA199";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 158 0 178 0 198 0 208 0 214 0 220 0
		 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Jaw_Ctrl_translateZ";
	rename -uid "94F74024-4E6D-36B1-2E96-BB9D0296E920";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Transform_Ctrl_translateZ1";
	rename -uid "E051B623-4E54-8BD2-312B-E7A65030C7FC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 -98.177606072623661 96 -98.177606072623661
		 140 -53.458450430868545 154 -29.933639020955624 158 -13.527807164022768 168 -14.602529734558388
		 178 -13.881001324084664 188 -14.602529734558388 198 -13.527807164022768 214 -18.911093317466737
		 220 -25.686568604804165 228 -14.324791183131994 236 -2.6292007105957214 240 4.1143609454041137
		 244 1.4301780373030675 248 3.7365449398317665 254 -1.2439388178835098 260 1.6482308902420935;
	setAttr -s 18 ".kit[0:17]"  18 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 0.075178102359719542 1 0.028901311847440062 
		0.027106250632168101 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 -0.99717012235906433 0 0.99958226983750409 
		0.99963255808155127 0 0 0 0 0;
createNode animCurveTL -n "Spine_03_Ctrl_translateZ";
	rename -uid "4FDF7CB4-48C5-F743-237F-54ADD47DDA50";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 158 0 168 0 178 0 188 0 198 0 214 0
		 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_02_Ctrl_translateZ";
	rename -uid "DC6A21FE-44CF-3835-D4D5-C39E1779ADD2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_Ctrl_translateZ1";
	rename -uid "78C9D2C7-4610-9099-5DBE-A38B56D58828";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Right_Fin_Ctrl_translateZ";
	rename -uid "B808963F-4A22-1D3C-8D86-FB8B9E04C32D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "Spine_04_Ctrl_translateZ";
	rename -uid "DC266B4F-42B8-1A74-9987-D1A13D321876";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_05_Ctrl_translateZ";
	rename -uid "293C29C0-4976-4842-EAB3-89BBF795BE06";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Left_Fin_Ctrl_translateZ";
	rename -uid "87F48A23-406E-5187-8CC2-3AB6F63C99A8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 158 0 178 0 198 0 220 0 228 0 236 0
		 240 0 244 0 248 0 254 0;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine_01_Ctrl_translateZ";
	rename -uid "60F39F19-4949-2C2A-2363-6490FCEB72BC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 158 0 178 0 198 0 208 0 214 0 220 0
		 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Jaw_Ctrl_rotateX";
	rename -uid "EAD6F6BC-4AD6-AE42-4F32-D58E603D7BF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Transform_Ctrl_rotateX1";
	rename -uid "6DCCAF17-43F8-3EF8-14F2-C39C5866D537";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 96 90 140 90 154 90 158 90 168 90 178 89.999999999999972
		 188 90 198 89.999999999999972 214 90 220 89.999999999999943 228 269.99999999999937
		 236 269.9999999999992 240 269.9999999999992 244 269.9999999999992 248 269.9999999999992
		 254 269.9999999999992 260 269.9999999999992;
	setAttr -s 18 ".kit[0:17]"  18 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_03_Ctrl_rotateX";
	rename -uid "BD83E549-43FC-69CA-87EF-B1BDD19B5DC3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 158 0 168 0 178 0 188 0 198 0 214 0
		 220 0 228 0 236 0 240 0 244 0 248 0 254 -0.36119613356449143;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_02_Ctrl_rotateX";
	rename -uid "826ED35B-4D68-51CC-4C6C-508AFC535B4E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 -22.999999999999986 168 0 178 0
		 188 0 198 -22.999999999999986 208 0 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_Ctrl_rotateX1";
	rename -uid "DE0376AB-4F28-73A7-0F38-F4B94F1A554C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Right_Fin_Ctrl_rotateX";
	rename -uid "4DDE4B6D-4B3E-D736-51EF-71997FEAD0F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Spine_04_Ctrl_rotateX";
	rename -uid "9C32BE7F-4E9B-D4A6-E278-E7A614A8BA11";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 -8.5275417279786403;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_05_Ctrl_rotateX";
	rename -uid "55DB99D9-4AFB-1784-9F41-5A8206753119";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 11.000000000000021 168 10.351403536837607
		 178 10.351403536837607 188 10.351403536837607 198 11.000000000000021 208 0 214 0
		 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Left_Fin_Ctrl_rotateX";
	rename -uid "A091F56E-4CAC-D6A7-E5A9-3F9579A2A0CD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 158 0 178 0 198 0 220 0 228 0 236 0
		 240 0 244 0 248 0 254 0;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_01_Ctrl_rotateX";
	rename -uid "94A9855B-4E34-28ED-81D4-CAB169EA9921";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 158 0 178 0 198 0 208 0 214 0 220 0
		 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Jaw_Ctrl_rotateY";
	rename -uid "3CB158F2-4BA8-8B8D-1C7E-528304CCB319";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Transform_Ctrl_rotateY1";
	rename -uid "CFB7DC6C-49AA-B609-376B-849C4680319A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 96 0 140 0 154 0 158 0 168 0 178 0 188 0
		 198 -3.1805546814635168e-15 214 20.000000000000011 220 62.999999999999901 228 54
		 236 19.000000000000057 240 19.000000000000057 244 19.000000000000057 248 1.0000000000000799
		 254 1.0000000000000799 260 1.0000000000000799;
	setAttr -s 18 ".kit[0:17]"  18 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 0.64033643186033296 1 0.65555612912950711 
		1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0.76809456060590442 0 -0.7551464504059705 
		0 0 0 0 0 0;
createNode animCurveTA -n "Spine_03_Ctrl_rotateY";
	rename -uid "7FD3BAAC-46FE-A0D3-A977-66BD18544BD4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 158 0 168 0 178 0 188 0 198 0 214 0
		 220 0 228 0 236 0 240 0 244 0 248 0 254 -2.2813452566705013;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_02_Ctrl_rotateY";
	rename -uid "12296B01-4C99-F4A3-3009-7388AE9E9C4A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_Ctrl_rotateY1";
	rename -uid "33161BD5-453C-DDF2-A2FF-5DA2C9C2710B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Right_Fin_Ctrl_rotateY";
	rename -uid "A48B2343-486F-533D-58A9-8F91D987F7DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Spine_04_Ctrl_rotateY";
	rename -uid "80AEA74A-405C-E909-760E-4B900950E2DD";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 0 178 0 188 0 198 0 208 0
		 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 -13.349687397798222;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_05_Ctrl_rotateY";
	rename -uid "712E61E2-405B-0029-C78B-FBB3C4E354D5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 0 168 3.7418115961683935 178 3.7418115961683935
		 188 3.7418115961683935 198 0 208 0 214 0 220 0 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Left_Fin_Ctrl_rotateY";
	rename -uid "A1119535-4BBD-A00B-2962-429EA1BA2D68";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 158 0 178 0 198 0 220 0 228 0 236 0
		 240 0 244 0 248 0 254 0;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_01_Ctrl_rotateY";
	rename -uid "F5C05294-4721-8172-330D-5AA3A3FE9FAB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 158 0 178 0 198 0 208 0 214 0 220 0
		 228 0 236 0 240 0 244 0 248 0 254 0;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Jaw_Ctrl_rotateZ";
	rename -uid "7F58E954-49D5-2C95-1D04-08B912D8D8D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Transform_Ctrl_rotateZ1";
	rename -uid "0CA434D3-4342-A2FA-31CF-58B551DEA9C8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 96 -112 140 -112 154 -112 158 -111.99999999999987
		 168 -111.99999999999987 178 -81.999999999999901 188 -82 198 -137.99999999999989 214 -137.99999999999994
		 220 -138.00000000000011 228 42.000000000000909 236 42.000000000001549 240 42.000000000001549
		 244 42.000000000001549 248 42.000000000001769 254 42.000000000001769 260 42.000000000001769;
	setAttr -s 18 ".kit[0:17]"  18 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_03_Ctrl_rotateZ";
	rename -uid "7750ED27-4CBF-A6D5-1E40-21BBC90ECEAC";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 158 0 168 -20.000000000000011 178 4.0000000000000044
		 188 -20.000000000000011 198 0 214 24.999999999999986 220 24.999999999999986 228 24.999999999999986
		 236 24.999999999999986 240 24.999999999999986 244 -7.0000000000000044 248 23.000000000000011
		 254 -19.652639652349258;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_02_Ctrl_rotateZ";
	rename -uid "BBCD632F-48C2-CF90-1084-D898925FA713";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 23.000000000000068 168 0 178 22.999999999999957
		 188 0 198 23.000000000000068 208 -42.000000000000043 214 42.00000000000005 220 42.00000000000005
		 228 42.00000000000005 236 42.00000000000005 240 4.0000000000000835 244 -30.000000000000025
		 248 36.000000000000021 254 -20.000000000000036;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 0.25639145895655274 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 -0.96657302868129447 0 0 
		0;
createNode animCurveTA -n "COG_Ctrl_rotateZ1";
	rename -uid "57ECE840-45A1-873F-7A0C-B688EE0D193F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Right_Fin_Ctrl_rotateZ";
	rename -uid "48DA4DA3-4700-ED7E-1BB6-1DAA5280D749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 220 0 228 0 236 0 240 0 244 0 248 0
		 254 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTA -n "Spine_04_Ctrl_rotateZ";
	rename -uid "02C96CFD-46D5-49D6-BCBF-F1B89015039D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 19.000000000000018 168 -20.000000000000011
		 178 -6.0000000000000071 188 -20.000000000000011 198 19.000000000000018 208 -27.000000000000007
		 214 18.000000000000014 220 18.000000000000014 228 18.000000000000014 236 18.000000000000014
		 240 18.000000000000014 244 7.0000000000000284 248 7.0000000000000284 254 -19.331679084992395;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_05_Ctrl_rotateZ";
	rename -uid "F62D317C-45FB-C0D6-42B9-80AEFC9031E2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 158 -14.000000000000014 168 -19.660948868586722
		 178 -19.660948868586722 188 -19.660948868586722 198 -14.000000000000014 208 -48.00000000000005
		 214 57.000000000000057 220 57.000000000000057 228 57.000000000000057 236 57.000000000000057
		 240 57.000000000000057 244 57.000000000000057 248 57.000000000000057 254 4.0000000000001483;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 0.99880062294662142 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 -0.048962389662281926 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "Left_Fin_Ctrl_rotateZ";
	rename -uid "A85C596D-49EB-12A5-AED9-7BAE96A6AC74";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 158 -20.000000000000043 178 -39.000000000000057
		 198 -20.000000000000043 220 -20.000000000000043 228 -20.000000000000043 236 -20.000000000000043
		 240 -20.000000000000043 244 -20.000000000000043 248 -20.000000000000043 254 -20.000000000000043;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  0.99581492328728394 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  -0.091392770821005512 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine_01_Ctrl_rotateZ";
	rename -uid "884B6F9C-4010-5B05-CA04-DFB58A24F4D9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 158 -16.999999999999972 178 -16.999999999999972
		 198 -16.999999999999972 208 13.000000000000016 214 -37.999999999999936 220 -37.999999999999936
		 228 -37.999999999999936 236 -37.999999999999936 240 -25.999999999999957 244 -7.9999999999999671
		 248 -15.000000000000009 254 9.0000000000000284;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 0.53702927214631413 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0.84356360806876918 0 0 0;
createNode animCurveTU -n "Jaw_Ctrl_scaleX";
	rename -uid "9EF0EECD-466B-0235-9BCC-FFB07721779B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Spine_03_Ctrl_scaleX";
	rename -uid "3D6DB30E-4210-2674-801F-99A89D91B638";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 158 1 168 1 178 1 188 1 198 1 214 1
		 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_02_Ctrl_scaleX";
	rename -uid "B74DD0CE-4E11-B8F1-EDAB-A49118602DE4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_Ctrl_scaleX1";
	rename -uid "C78F4A5D-484B-D064-59BC-1ABC346FA5DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Right_Fin_Ctrl_scaleX";
	rename -uid "439D91C0-492E-F7AF-FD15-B9825055109E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Spine_04_Ctrl_scaleX";
	rename -uid "CCB1B738-49FD-7EAD-C9B3-F1A8591EF82A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_05_Ctrl_scaleX";
	rename -uid "B11A877B-447A-8191-7048-32BA150F48EE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Left_Fin_Ctrl_scaleX";
	rename -uid "F967127D-4D00-3BE5-651C-75A2A27B167B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 158 1 178 1 198 1 220 1 228 1 236 1
		 240 1 244 1 248 1 254 1;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_01_Ctrl_scaleX";
	rename -uid "DC16715B-495E-67B6-1D86-3EBFA7F5E132";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 158 1 178 1 198 1 208 1 214 1 220 1
		 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Jaw_Ctrl_scaleY";
	rename -uid "E1CB5FF2-4B86-4DB0-9022-DA8A20236618";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Spine_03_Ctrl_scaleY";
	rename -uid "448E3EFD-4AE4-7E23-6B7A-C6859221BC8E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 158 1 168 1 178 1 188 1 198 1 214 1
		 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_02_Ctrl_scaleY";
	rename -uid "D4149D44-4EB4-6D79-25B7-AFAB51BC8063";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_Ctrl_scaleY1";
	rename -uid "75051FF8-4E76-44D8-027A-70BD8D679463";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Right_Fin_Ctrl_scaleY";
	rename -uid "A33F550D-45D5-D07C-7A3E-A595DBF472DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Spine_04_Ctrl_scaleY";
	rename -uid "D5269D93-4850-B16C-CA1B-98806DE1E8CE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_05_Ctrl_scaleY";
	rename -uid "6ADB6510-4E14-74D3-C245-639DF2312246";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Left_Fin_Ctrl_scaleY";
	rename -uid "2F211E8E-4CFB-70B3-97D0-848DD46A4B99";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 158 1 178 1 198 1 220 1 228 1 236 1
		 240 1 244 1 248 1 254 1;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_01_Ctrl_scaleY";
	rename -uid "78A9DC67-4CBD-C964-E580-33885DBBCD81";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 158 1 178 1 198 1 208 1 214 1 220 1
		 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Jaw_Ctrl_scaleZ";
	rename -uid "A3FFAF7B-448D-7F54-13EE-3491DB1901E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Spine_03_Ctrl_scaleZ";
	rename -uid "7B2CFC42-4D3F-71D9-6F22-639AF729756C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 158 1 168 1 178 1 188 1 198 1 214 1
		 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 14 ".kit[0:13]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18;
	setAttr -s 14 ".kix[4:13]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[4:13]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_02_Ctrl_scaleZ";
	rename -uid "3E3AB100-43BA-6DC9-571A-90A6230996CF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_Ctrl_scaleZ1";
	rename -uid "88F2AF36-4009-D1BC-5EDD-16A51D3D5C4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Right_Fin_Ctrl_scaleZ";
	rename -uid "3CFC4CF0-4651-D6D7-E908-6083CD170C7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 220 1 228 1 236 1 240 1 244 1 248 1
		 254 1;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "Spine_04_Ctrl_scaleZ";
	rename -uid "30293136-4D00-498C-6D12-9D8F4B5A60FA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_05_Ctrl_scaleZ";
	rename -uid "C0594F9B-4872-9497-2829-D9A8C93D27A7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 158 1 168 1 178 1 188 1 198 1 208 1
		 214 1 220 1 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 15 ".kit[0:14]"  18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Left_Fin_Ctrl_scaleZ";
	rename -uid "D182F37F-4E26-CE57-2A30-918AB99D2F2E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 158 1 178 1 198 1 220 1 228 1 236 1
		 240 1 244 1 248 1 254 1;
	setAttr -s 11 ".kit[0:10]"  18 18 18 1 18 18 18 18 
		18 18 18;
	setAttr -s 11 ".kix[3:10]"  1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[3:10]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_01_Ctrl_scaleZ";
	rename -uid "AE6F5844-414A-11DA-28FD-65A3FDD47B7E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 158 1 178 1 198 1 208 1 214 1 220 1
		 228 1 236 1 240 1 244 1 248 1 254 1;
	setAttr -s 13 ".kit[0:12]"  18 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[3:12]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[3:12]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine_05_Ctrl_visibility";
	rename -uid "DD447713-45B2-5CE3-E820-959B39F3F172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  158 1 198 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "55242B6A-4EA3-B91D-A2B8-3DB5AA404590";
createNode file -n "file1";
	rename -uid "16B7698A-487E-136C-AEBD-E4A6DEF34277";
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabBody/CrabBody_Base_color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file2";
	rename -uid "3E8862D8-4F0A-4FF5-20B5-ED932C33CA5F";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabBody/CrabBody_Height.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file3";
	rename -uid "6CA7BC53-4CC7-E7FB-6214-B19995066677";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabBody/CrabBody_Metallic.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file4";
	rename -uid "0EBD552B-4879-6173-3187-7C84A594D4B7";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabBody/CrabBody_Normal_DirectX.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file5";
	rename -uid "C04C894E-4A46-78B3-73E2-17B94E2E7C50";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabBody/CrabBody_Roughness.png";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "D9D1783C-4E44-521E-C920-548262107378";
createNode aiStandardSurface -n "CrabBody";
	rename -uid "A479605A-4F03-0F05-762A-8D8E2BCFFAFD";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set1";
	rename -uid "82A1FFA5-4EE8-9FE6-3C8D-6E8BD26C0929";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "6C8763CE-4497-FC41-1B9D-CCA0DFC21422";
createNode bump2d -n "bump2d1";
	rename -uid "510C6476-428B-756D-8C68-84A3D7472391";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode place2dTexture -n "place2dTexture2";
	rename -uid "7C491578-4401-84F0-57C3-A79F16842A0C";
createNode file -n "file6";
	rename -uid "7859C59E-4E7A-CF62-554A-B8B2F4CAD888";
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabEyes/CrabEyes_Base_color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file7";
	rename -uid "F9D110EE-4C26-A537-971C-94A6734E5411";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabEyes/CrabEyes_Height.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file8";
	rename -uid "86473DD5-4A42-49FE-8EB7-57ADE1FD7405";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabEyes/CrabEyes_Metallic.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file9";
	rename -uid "3884375B-4828-63F6-1B0A-A49A6C83FF73";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabEyes/CrabEyes_Normal_DirectX.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file10";
	rename -uid "20DB0FCC-4FE7-A77A-2AAB-289E71441E2B";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabEyes/CrabEyes_Roughness.png";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "346051D2-499B-3FD8-6651-6894F04A0C6F";
createNode aiStandardSurface -n "CrabEyes";
	rename -uid "81E7953A-4559-4C0B-8C7E-39A0D82313B5";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set2";
	rename -uid "BF72ED8C-487F-CF05-BEF1-D1833B8D4CE8";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "7987F3E4-4096-DB43-1397-C8823E40B923";
createNode bump2d -n "bump2d2";
	rename -uid "05D4AA0E-45E5-9C72-5F75-44989F919606";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode place2dTexture -n "place2dTexture3";
	rename -uid "AA68E120-40B2-CA2E-4DBA-5FA3950A76D2";
createNode file -n "file11";
	rename -uid "5CE2CB37-4043-C510-C3BE-ECB51ECF05F1";
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabShell/CrabShell_Base_color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file12";
	rename -uid "86B9D79E-41B0-F8DF-B8AC-1FB355478BE3";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabShell/CrabShell_Height.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file13";
	rename -uid "078CE0A7-40C7-67CC-A725-F4901B6FC5EA";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabShell/CrabShell_Metallic.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file14";
	rename -uid "FC8B28D0-46ED-20B4-4E8F-B79B089BDA88";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabShell/CrabShell_Normal_DirectX.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file15";
	rename -uid "23A055D7-4E23-9FAB-DB30-578A16EE0B8F";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/kaitl/Documents/SubstanceTexture/CrabTextures2/CrabShell/CrabShell_Roughness.png";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "88424A80-4B31-E862-4EF9-12BEEA9211C3";
createNode aiStandardSurface -n "CrabShell";
	rename -uid "5D3DF332-41B2-84F0-BC54-7E99C590DCE4";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set3";
	rename -uid "4066888A-4404-A225-E501-45923EB780EE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "F849C130-442B-4510-F239-378FB21F4D0F";
createNode bump2d -n "bump2d3";
	rename -uid "D1D5F78F-4E22-AE91-1C0A-448CE204B9B8";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "2F305279-457E-A504-32A0-95A97217D4B5";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -622.61902287839052 -372.61903281249749 ;
	setAttr ".tgi[0].vh" -type "double2" 592.85711929911758 390.47617496006137 ;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 35 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 36 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 31 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 8 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 40 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".an" yes;
	setAttr ".ef" 288;
	setAttr ".pff" yes;
	setAttr ".ifp" -type "string" "Anim_2_Render_1";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".w" 1280;
	setAttr ".h" 720;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7777777910232544;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "C:/Program Files/Autodesk/Maya2023/resources/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHideFaceDataSet;
	setAttr -s 2 ".dnsm";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Main_SceneRN.phl[1]" "set3.dsm" -na;
connectAttr "Main_SceneRN.phl[2]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[3]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[4]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[5]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[6]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[7]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[8]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[9]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[10]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[11]" "set2.dsm" -na;
connectAttr "Main_SceneRN.phl[12]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[13]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[14]" "set2.dsm" -na;
connectAttr "Transform_Ctrl_translateX.o" "Main_SceneRN.phl[15]";
connectAttr "Transform_Ctrl_translateY.o" "Main_SceneRN.phl[16]";
connectAttr "Transform_Ctrl_translateZ.o" "Main_SceneRN.phl[17]";
connectAttr "Transform_Ctrl_rotateX.o" "Main_SceneRN.phl[18]";
connectAttr "Transform_Ctrl_rotateY.o" "Main_SceneRN.phl[19]";
connectAttr "Transform_Ctrl_rotateZ.o" "Main_SceneRN.phl[20]";
connectAttr "Transform_Ctrl_scaleX.o" "Main_SceneRN.phl[21]";
connectAttr "Transform_Ctrl_scaleY.o" "Main_SceneRN.phl[22]";
connectAttr "Transform_Ctrl_scaleZ.o" "Main_SceneRN.phl[23]";
connectAttr "COG_Ctrl_translateX.o" "Main_SceneRN.phl[24]";
connectAttr "COG_Ctrl_translateY.o" "Main_SceneRN.phl[25]";
connectAttr "COG_Ctrl_translateZ.o" "Main_SceneRN.phl[26]";
connectAttr "COG_Ctrl_rotateX.o" "Main_SceneRN.phl[27]";
connectAttr "COG_Ctrl_rotateY.o" "Main_SceneRN.phl[28]";
connectAttr "COG_Ctrl_rotateZ.o" "Main_SceneRN.phl[29]";
connectAttr "COG_Ctrl_scaleX.o" "Main_SceneRN.phl[30]";
connectAttr "COG_Ctrl_scaleY.o" "Main_SceneRN.phl[31]";
connectAttr "COG_Ctrl_scaleZ.o" "Main_SceneRN.phl[32]";
connectAttr "Body_Ctrl_translateX.o" "Main_SceneRN.phl[33]";
connectAttr "Body_Ctrl_translateY.o" "Main_SceneRN.phl[34]";
connectAttr "Body_Ctrl_translateZ.o" "Main_SceneRN.phl[35]";
connectAttr "Body_Ctrl_rotateX.o" "Main_SceneRN.phl[36]";
connectAttr "Body_Ctrl_rotateY.o" "Main_SceneRN.phl[37]";
connectAttr "Body_Ctrl_rotateZ.o" "Main_SceneRN.phl[38]";
connectAttr "Body_Ctrl_scaleX.o" "Main_SceneRN.phl[39]";
connectAttr "Body_Ctrl_scaleY.o" "Main_SceneRN.phl[40]";
connectAttr "Body_Ctrl_scaleZ.o" "Main_SceneRN.phl[41]";
connectAttr "Shell_Ctrl_translateX.o" "Main_SceneRN.phl[42]";
connectAttr "Shell_Ctrl_translateY.o" "Main_SceneRN.phl[43]";
connectAttr "Shell_Ctrl_translateZ.o" "Main_SceneRN.phl[44]";
connectAttr "Shell_Ctrl_rotateX.o" "Main_SceneRN.phl[45]";
connectAttr "Shell_Ctrl_rotateY.o" "Main_SceneRN.phl[46]";
connectAttr "Shell_Ctrl_rotateZ.o" "Main_SceneRN.phl[47]";
connectAttr "Shell_Ctrl_scaleX.o" "Main_SceneRN.phl[48]";
connectAttr "Shell_Ctrl_scaleY.o" "Main_SceneRN.phl[49]";
connectAttr "Shell_Ctrl_scaleZ.o" "Main_SceneRN.phl[50]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[51]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[52]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[53]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[54]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[55]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[56]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[57]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[58]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[59]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[60]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[61]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[62]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[63]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[64]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[65]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[66]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[67]";
connectAttr "L_Leg_01_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[68]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[69]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[70]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[71]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[72]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[73]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[74]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[75]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[76]";
connectAttr "L_Leg_01_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[77]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[78]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[79]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[80]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[81]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[82]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[83]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[84]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[85]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[86]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[87]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[88]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[89]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[90]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[91]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[92]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[93]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[94]";
connectAttr "L_Leg_02_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[95]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[96]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[97]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[98]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[99]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[100]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[101]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[102]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[103]";
connectAttr "L_Leg_02_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[104]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[105]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[106]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[107]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[108]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[109]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[110]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[111]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[112]";
connectAttr "L_Leg_03_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[113]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[114]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[115]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[116]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[117]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[118]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[119]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[120]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[121]";
connectAttr "L_Leg_03_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[122]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[123]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[124]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[125]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[126]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[127]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[128]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[129]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[130]";
connectAttr "L_Leg_03_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[131]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[132]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[133]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[134]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[135]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[136]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[137]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[138]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[139]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[140]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[141]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[142]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[143]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[144]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[145]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[146]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[147]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[148]";
connectAttr "R_Leg_01_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[149]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[150]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[151]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[152]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[153]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[154]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[155]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[156]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[157]";
connectAttr "R_Leg_01_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[158]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[159]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[160]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[161]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[162]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[163]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[164]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[165]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[166]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[167]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[168]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[169]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[170]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[171]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[172]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[173]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[174]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[175]";
connectAttr "R_Leg_02_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[176]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[177]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[178]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[179]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[180]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[181]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[182]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[183]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[184]";
connectAttr "R_Leg_02_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[185]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[186]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[187]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[188]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[189]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[190]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[191]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[192]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[193]";
connectAttr "R_Leg_03_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[194]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[195]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[196]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[197]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[198]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[199]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[200]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[201]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[202]";
connectAttr "R_Leg_03_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[203]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[204]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[205]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[206]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[207]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[208]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[209]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[210]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[211]";
connectAttr "R_Leg_03_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[212]";
connectAttr "L_Eye_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[213]";
connectAttr "L_Eye_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[214]";
connectAttr "L_Eye_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[215]";
connectAttr "L_Eye_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[216]";
connectAttr "L_Eye_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[217]";
connectAttr "L_Eye_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[218]";
connectAttr "L_Eye_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[219]";
connectAttr "L_Eye_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[220]";
connectAttr "L_Eye_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[221]";
connectAttr "L_Eye_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[222]";
connectAttr "L_Eye_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[223]";
connectAttr "L_Eye_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[224]";
connectAttr "L_Eye_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[225]";
connectAttr "L_Eye_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[226]";
connectAttr "L_Eye_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[227]";
connectAttr "L_Eye_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[228]";
connectAttr "L_Eye_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[229]";
connectAttr "L_Eye_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[230]";
connectAttr "L_Eye_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[231]";
connectAttr "L_Eye_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[232]";
connectAttr "L_Eye_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[233]";
connectAttr "L_Eye_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[234]";
connectAttr "L_Eye_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[235]";
connectAttr "L_Eye_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[236]";
connectAttr "L_Eye_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[237]";
connectAttr "L_Eye_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[238]";
connectAttr "L_Eye_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[239]";
connectAttr "L_Eye_Jnt_04_Ctrl_translateX.o" "Main_SceneRN.phl[240]";
connectAttr "L_Eye_Jnt_04_Ctrl_translateY.o" "Main_SceneRN.phl[241]";
connectAttr "L_Eye_Jnt_04_Ctrl_translateZ.o" "Main_SceneRN.phl[242]";
connectAttr "L_Eye_Jnt_04_Ctrl_rotateX.o" "Main_SceneRN.phl[243]";
connectAttr "L_Eye_Jnt_04_Ctrl_rotateY.o" "Main_SceneRN.phl[244]";
connectAttr "L_Eye_Jnt_04_Ctrl_rotateZ.o" "Main_SceneRN.phl[245]";
connectAttr "L_Eye_Jnt_04_Ctrl_scaleX.o" "Main_SceneRN.phl[246]";
connectAttr "L_Eye_Jnt_04_Ctrl_scaleY.o" "Main_SceneRN.phl[247]";
connectAttr "L_Eye_Jnt_04_Ctrl_scaleZ.o" "Main_SceneRN.phl[248]";
connectAttr "L_Eye_Jnt_05_Ctrl_translateX.o" "Main_SceneRN.phl[249]";
connectAttr "L_Eye_Jnt_05_Ctrl_translateY.o" "Main_SceneRN.phl[250]";
connectAttr "L_Eye_Jnt_05_Ctrl_translateZ.o" "Main_SceneRN.phl[251]";
connectAttr "L_Eye_Jnt_05_Ctrl_rotateX.o" "Main_SceneRN.phl[252]";
connectAttr "L_Eye_Jnt_05_Ctrl_rotateY.o" "Main_SceneRN.phl[253]";
connectAttr "L_Eye_Jnt_05_Ctrl_rotateZ.o" "Main_SceneRN.phl[254]";
connectAttr "L_Eye_Jnt_05_Ctrl_scaleX.o" "Main_SceneRN.phl[255]";
connectAttr "L_Eye_Jnt_05_Ctrl_scaleY.o" "Main_SceneRN.phl[256]";
connectAttr "L_Eye_Jnt_05_Ctrl_scaleZ.o" "Main_SceneRN.phl[257]";
connectAttr "R_Eye_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[258]";
connectAttr "R_Eye_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[259]";
connectAttr "R_Eye_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[260]";
connectAttr "R_Eye_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[261]";
connectAttr "R_Eye_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[262]";
connectAttr "R_Eye_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[263]";
connectAttr "R_Eye_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[264]";
connectAttr "R_Eye_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[265]";
connectAttr "R_Eye_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[266]";
connectAttr "R_Eye_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[267]";
connectAttr "R_Eye_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[268]";
connectAttr "R_Eye_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[269]";
connectAttr "R_Eye_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[270]";
connectAttr "R_Eye_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[271]";
connectAttr "R_Eye_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[272]";
connectAttr "R_Eye_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[273]";
connectAttr "R_Eye_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[274]";
connectAttr "R_Eye_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[275]";
connectAttr "R_Eye_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[276]";
connectAttr "R_Eye_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[277]";
connectAttr "R_Eye_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[278]";
connectAttr "R_Eye_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[279]";
connectAttr "R_Eye_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[280]";
connectAttr "R_Eye_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[281]";
connectAttr "R_Eye_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[282]";
connectAttr "R_Eye_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[283]";
connectAttr "R_Eye_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[284]";
connectAttr "R_Eye_Jnt_04_Ctrl_translateX.o" "Main_SceneRN.phl[285]";
connectAttr "R_Eye_Jnt_04_Ctrl_translateY.o" "Main_SceneRN.phl[286]";
connectAttr "R_Eye_Jnt_04_Ctrl_translateZ.o" "Main_SceneRN.phl[287]";
connectAttr "R_Eye_Jnt_04_Ctrl_rotateX.o" "Main_SceneRN.phl[288]";
connectAttr "R_Eye_Jnt_04_Ctrl_rotateY.o" "Main_SceneRN.phl[289]";
connectAttr "R_Eye_Jnt_04_Ctrl_rotateZ.o" "Main_SceneRN.phl[290]";
connectAttr "R_Eye_Jnt_04_Ctrl_scaleX.o" "Main_SceneRN.phl[291]";
connectAttr "R_Eye_Jnt_04_Ctrl_scaleY.o" "Main_SceneRN.phl[292]";
connectAttr "R_Eye_Jnt_04_Ctrl_scaleZ.o" "Main_SceneRN.phl[293]";
connectAttr "R_Eye_Jnt_05_Ctrl_translateX.o" "Main_SceneRN.phl[294]";
connectAttr "R_Eye_Jnt_05_Ctrl_translateY.o" "Main_SceneRN.phl[295]";
connectAttr "R_Eye_Jnt_05_Ctrl_translateZ.o" "Main_SceneRN.phl[296]";
connectAttr "R_Eye_Jnt_05_Ctrl_rotateX.o" "Main_SceneRN.phl[297]";
connectAttr "R_Eye_Jnt_05_Ctrl_rotateY.o" "Main_SceneRN.phl[298]";
connectAttr "R_Eye_Jnt_05_Ctrl_rotateZ.o" "Main_SceneRN.phl[299]";
connectAttr "R_Eye_Jnt_05_Ctrl_scaleX.o" "Main_SceneRN.phl[300]";
connectAttr "R_Eye_Jnt_05_Ctrl_scaleY.o" "Main_SceneRN.phl[301]";
connectAttr "R_Eye_Jnt_05_Ctrl_scaleZ.o" "Main_SceneRN.phl[302]";
connectAttr "L_Claw_Jnt_Ctrl_translateX.o" "Main_SceneRN.phl[303]";
connectAttr "L_Claw_Jnt_Ctrl_translateY.o" "Main_SceneRN.phl[304]";
connectAttr "L_Claw_Jnt_Ctrl_translateZ.o" "Main_SceneRN.phl[305]";
connectAttr "L_Claw_Jnt_Ctrl_rotateX.o" "Main_SceneRN.phl[306]";
connectAttr "L_Claw_Jnt_Ctrl_rotateY.o" "Main_SceneRN.phl[307]";
connectAttr "L_Claw_Jnt_Ctrl_rotateZ.o" "Main_SceneRN.phl[308]";
connectAttr "L_Claw_Jnt_Ctrl_scaleX.o" "Main_SceneRN.phl[309]";
connectAttr "L_Claw_Jnt_Ctrl_scaleY.o" "Main_SceneRN.phl[310]";
connectAttr "L_Claw_Jnt_Ctrl_scaleZ.o" "Main_SceneRN.phl[311]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[312]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[313]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[314]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[315]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[316]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[317]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[318]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[319]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[320]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[321]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[322]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[323]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[324]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[325]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[326]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[327]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[328]";
connectAttr "L_Claw_Top_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[329]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[330]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[331]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[332]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[333]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[334]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[335]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[336]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[337]";
connectAttr "L_Claw_Top_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[338]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[339]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[340]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[341]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[342]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[343]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[344]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[345]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[346]";
connectAttr "L_Claw_Bottom_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[347]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[348]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[349]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[350]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[351]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[352]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[353]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[354]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[355]";
connectAttr "L_Claw_Bottom_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[356]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[357]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[358]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[359]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[360]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[361]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[362]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[363]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[364]";
connectAttr "L_Claw_Bottom_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[365]";
connectAttr "R_Claw_Jnt_Ctrl_translateX.o" "Main_SceneRN.phl[366]";
connectAttr "R_Claw_Jnt_Ctrl_translateY.o" "Main_SceneRN.phl[367]";
connectAttr "R_Claw_Jnt_Ctrl_translateZ.o" "Main_SceneRN.phl[368]";
connectAttr "R_Claw_Jnt_Ctrl_rotateX.o" "Main_SceneRN.phl[369]";
connectAttr "R_Claw_Jnt_Ctrl_rotateY.o" "Main_SceneRN.phl[370]";
connectAttr "R_Claw_Jnt_Ctrl_rotateZ.o" "Main_SceneRN.phl[371]";
connectAttr "R_Claw_Jnt_Ctrl_scaleX.o" "Main_SceneRN.phl[372]";
connectAttr "R_Claw_Jnt_Ctrl_scaleY.o" "Main_SceneRN.phl[373]";
connectAttr "R_Claw_Jnt_Ctrl_scaleZ.o" "Main_SceneRN.phl[374]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[375]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[376]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[377]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[378]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[379]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[380]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[381]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[382]";
connectAttr "R_Claw_Top_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[383]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[384]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[385]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[386]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[387]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[388]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[389]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[390]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[391]";
connectAttr "R_Claw_Top_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[392]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[393]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[394]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[395]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[396]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[397]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[398]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[399]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[400]";
connectAttr "R_Claw_Top_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[401]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[402]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[403]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[404]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[405]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[406]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[407]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[408]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[409]";
connectAttr "R_Claw_Bottom_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[410]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_translateX.o" "Main_SceneRN.phl[411]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_translateY.o" "Main_SceneRN.phl[412]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_translateZ.o" "Main_SceneRN.phl[413]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_rotateX.o" "Main_SceneRN.phl[414]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_rotateY.o" "Main_SceneRN.phl[415]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_rotateZ.o" "Main_SceneRN.phl[416]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_scaleX.o" "Main_SceneRN.phl[417]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_scaleY.o" "Main_SceneRN.phl[418]";
connectAttr "R_Claw_Bottom_Jnt_02_Ctrl_scaleZ.o" "Main_SceneRN.phl[419]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_translateX.o" "Main_SceneRN.phl[420]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_translateY.o" "Main_SceneRN.phl[421]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_translateZ.o" "Main_SceneRN.phl[422]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_rotateX.o" "Main_SceneRN.phl[423]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_rotateY.o" "Main_SceneRN.phl[424]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_rotateZ.o" "Main_SceneRN.phl[425]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_scaleX.o" "Main_SceneRN.phl[426]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_scaleY.o" "Main_SceneRN.phl[427]";
connectAttr "R_Claw_Bottom_Jnt_03_Ctrl_scaleZ.o" "Main_SceneRN.phl[428]";
connectAttr "Main_SceneRN.phl[429]" "Main_SceneRN.phl[430]";
connectAttr "Transform_Ctrl_translateX1.o" "FishRigRN.phl[1]";
connectAttr "Transform_Ctrl_translateY1.o" "FishRigRN.phl[2]";
connectAttr "Transform_Ctrl_translateZ1.o" "FishRigRN.phl[3]";
connectAttr "Transform_Ctrl_rotateX1.o" "FishRigRN.phl[4]";
connectAttr "Transform_Ctrl_rotateY1.o" "FishRigRN.phl[5]";
connectAttr "Transform_Ctrl_rotateZ1.o" "FishRigRN.phl[6]";
connectAttr "COG_Ctrl_translateX1.o" "FishRigRN.phl[7]";
connectAttr "COG_Ctrl_translateY1.o" "FishRigRN.phl[8]";
connectAttr "COG_Ctrl_translateZ1.o" "FishRigRN.phl[9]";
connectAttr "COG_Ctrl_rotateX1.o" "FishRigRN.phl[10]";
connectAttr "COG_Ctrl_rotateY1.o" "FishRigRN.phl[11]";
connectAttr "COG_Ctrl_rotateZ1.o" "FishRigRN.phl[12]";
connectAttr "COG_Ctrl_scaleX1.o" "FishRigRN.phl[13]";
connectAttr "COG_Ctrl_scaleY1.o" "FishRigRN.phl[14]";
connectAttr "COG_Ctrl_scaleZ1.o" "FishRigRN.phl[15]";
connectAttr "Spine_01_Ctrl_translateX.o" "FishRigRN.phl[16]";
connectAttr "Spine_01_Ctrl_translateY.o" "FishRigRN.phl[17]";
connectAttr "Spine_01_Ctrl_translateZ.o" "FishRigRN.phl[18]";
connectAttr "Spine_01_Ctrl_rotateX.o" "FishRigRN.phl[19]";
connectAttr "Spine_01_Ctrl_rotateY.o" "FishRigRN.phl[20]";
connectAttr "Spine_01_Ctrl_rotateZ.o" "FishRigRN.phl[21]";
connectAttr "Spine_01_Ctrl_scaleX.o" "FishRigRN.phl[22]";
connectAttr "Spine_01_Ctrl_scaleY.o" "FishRigRN.phl[23]";
connectAttr "Spine_01_Ctrl_scaleZ.o" "FishRigRN.phl[24]";
connectAttr "Spine_02_Ctrl_translateX.o" "FishRigRN.phl[25]";
connectAttr "Spine_02_Ctrl_translateY.o" "FishRigRN.phl[26]";
connectAttr "Spine_02_Ctrl_translateZ.o" "FishRigRN.phl[27]";
connectAttr "Spine_02_Ctrl_rotateX.o" "FishRigRN.phl[28]";
connectAttr "Spine_02_Ctrl_rotateY.o" "FishRigRN.phl[29]";
connectAttr "Spine_02_Ctrl_rotateZ.o" "FishRigRN.phl[30]";
connectAttr "Spine_02_Ctrl_scaleX.o" "FishRigRN.phl[31]";
connectAttr "Spine_02_Ctrl_scaleY.o" "FishRigRN.phl[32]";
connectAttr "Spine_02_Ctrl_scaleZ.o" "FishRigRN.phl[33]";
connectAttr "Spine_03_Ctrl_translateX.o" "FishRigRN.phl[34]";
connectAttr "Spine_03_Ctrl_translateY.o" "FishRigRN.phl[35]";
connectAttr "Spine_03_Ctrl_translateZ.o" "FishRigRN.phl[36]";
connectAttr "Spine_03_Ctrl_rotateX.o" "FishRigRN.phl[37]";
connectAttr "Spine_03_Ctrl_rotateY.o" "FishRigRN.phl[38]";
connectAttr "Spine_03_Ctrl_rotateZ.o" "FishRigRN.phl[39]";
connectAttr "Spine_03_Ctrl_scaleX.o" "FishRigRN.phl[40]";
connectAttr "Spine_03_Ctrl_scaleY.o" "FishRigRN.phl[41]";
connectAttr "Spine_03_Ctrl_scaleZ.o" "FishRigRN.phl[42]";
connectAttr "Spine_04_Ctrl_translateX.o" "FishRigRN.phl[43]";
connectAttr "Spine_04_Ctrl_translateY.o" "FishRigRN.phl[44]";
connectAttr "Spine_04_Ctrl_translateZ.o" "FishRigRN.phl[45]";
connectAttr "Spine_04_Ctrl_rotateX.o" "FishRigRN.phl[46]";
connectAttr "Spine_04_Ctrl_rotateY.o" "FishRigRN.phl[47]";
connectAttr "Spine_04_Ctrl_rotateZ.o" "FishRigRN.phl[48]";
connectAttr "Spine_04_Ctrl_scaleX.o" "FishRigRN.phl[49]";
connectAttr "Spine_04_Ctrl_scaleY.o" "FishRigRN.phl[50]";
connectAttr "Spine_04_Ctrl_scaleZ.o" "FishRigRN.phl[51]";
connectAttr "Spine_05_Ctrl_translateX.o" "FishRigRN.phl[52]";
connectAttr "Spine_05_Ctrl_translateY.o" "FishRigRN.phl[53]";
connectAttr "Spine_05_Ctrl_translateZ.o" "FishRigRN.phl[54]";
connectAttr "Spine_05_Ctrl_rotateX.o" "FishRigRN.phl[55]";
connectAttr "Spine_05_Ctrl_rotateY.o" "FishRigRN.phl[56]";
connectAttr "Spine_05_Ctrl_rotateZ.o" "FishRigRN.phl[57]";
connectAttr "Spine_05_Ctrl_scaleX.o" "FishRigRN.phl[58]";
connectAttr "Spine_05_Ctrl_scaleY.o" "FishRigRN.phl[59]";
connectAttr "Spine_05_Ctrl_scaleZ.o" "FishRigRN.phl[60]";
connectAttr "Spine_05_Ctrl_visibility.o" "FishRigRN.phl[61]";
connectAttr "Right_Fin_Ctrl_translateX.o" "FishRigRN.phl[62]";
connectAttr "Right_Fin_Ctrl_translateY.o" "FishRigRN.phl[63]";
connectAttr "Right_Fin_Ctrl_translateZ.o" "FishRigRN.phl[64]";
connectAttr "Right_Fin_Ctrl_rotateX.o" "FishRigRN.phl[65]";
connectAttr "Right_Fin_Ctrl_rotateY.o" "FishRigRN.phl[66]";
connectAttr "Right_Fin_Ctrl_rotateZ.o" "FishRigRN.phl[67]";
connectAttr "Right_Fin_Ctrl_scaleX.o" "FishRigRN.phl[68]";
connectAttr "Right_Fin_Ctrl_scaleY.o" "FishRigRN.phl[69]";
connectAttr "Right_Fin_Ctrl_scaleZ.o" "FishRigRN.phl[70]";
connectAttr "Left_Fin_Ctrl_translateX.o" "FishRigRN.phl[71]";
connectAttr "Left_Fin_Ctrl_translateY.o" "FishRigRN.phl[72]";
connectAttr "Left_Fin_Ctrl_translateZ.o" "FishRigRN.phl[73]";
connectAttr "Left_Fin_Ctrl_rotateX.o" "FishRigRN.phl[74]";
connectAttr "Left_Fin_Ctrl_rotateY.o" "FishRigRN.phl[75]";
connectAttr "Left_Fin_Ctrl_rotateZ.o" "FishRigRN.phl[76]";
connectAttr "Left_Fin_Ctrl_scaleX.o" "FishRigRN.phl[77]";
connectAttr "Left_Fin_Ctrl_scaleY.o" "FishRigRN.phl[78]";
connectAttr "Left_Fin_Ctrl_scaleZ.o" "FishRigRN.phl[79]";
connectAttr "Jaw_Ctrl_translateX.o" "FishRigRN.phl[80]";
connectAttr "Jaw_Ctrl_translateY.o" "FishRigRN.phl[81]";
connectAttr "Jaw_Ctrl_translateZ.o" "FishRigRN.phl[82]";
connectAttr "Jaw_Ctrl_rotateX.o" "FishRigRN.phl[83]";
connectAttr "Jaw_Ctrl_rotateY.o" "FishRigRN.phl[84]";
connectAttr "Jaw_Ctrl_rotateZ.o" "FishRigRN.phl[85]";
connectAttr "Jaw_Ctrl_scaleX.o" "FishRigRN.phl[86]";
connectAttr "Jaw_Ctrl_scaleY.o" "FishRigRN.phl[87]";
connectAttr "Jaw_Ctrl_scaleZ.o" "FishRigRN.phl[88]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig:FishModelUVFlipped:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig:FishModelUVFlipped:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig:FishModelUVFlipped:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig:FishModelUV:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig:FishModelUV:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig:FishModelUV:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig:FishModelSmallEyes:pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig1:FishModelUVFlipped:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig1:FishModelUVFlipped:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig1:FishModelUVFlipped:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig1:FishModelUV:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig1:FishModelUV:lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig1:FishModelUV:lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "FishRig1:FishModelSmallEyes:pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig:FishModelUVFlipped:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig:FishModelUVFlipped:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig:FishModelUVFlipped:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig:FishModelUV:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig:FishModelUV:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig:FishModelUV:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig:FishModelSmallEyes:pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig1:FishModelUVFlipped:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig1:FishModelUVFlipped:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig1:FishModelUVFlipped:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig1:FishModelUV:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig1:FishModelUV:lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig1:FishModelUV:lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "FishRig1:FishModelSmallEyes:pasted__lambert3SG2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "set3.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "FishRig:FishModelUVFlipped:lambert2SG1.oc" "FishRig:FishModelUVFlipped:lambert2SG.ss"
		;
connectAttr "FishRig:FishModelUVFlipped:lambert2SG.msg" "FishRig:FishModelUVFlipped:materialInfo1.sg"
		;
connectAttr "FishRig:FishModelUVFlipped:lambert2SG1.msg" "FishRig:FishModelUVFlipped:materialInfo1.m"
		;
connectAttr "FishRig:FishModelUVFlipped:lambert3SG1.oc" "FishRig:FishModelUVFlipped:lambert3SG.ss"
		;
connectAttr "FishRig:FishModelUVFlipped:lambert3SG.msg" "FishRig:FishModelUVFlipped:materialInfo2.sg"
		;
connectAttr "FishRig:FishModelUVFlipped:lambert3SG1.msg" "FishRig:FishModelUVFlipped:materialInfo2.m"
		;
connectAttr "FishRig:FishModelUVFlipped:lambert4SG1.oc" "FishRig:FishModelUVFlipped:lambert4SG.ss"
		;
connectAttr "FishRig:FishModelUVFlipped:lambert4SG.msg" "FishRig:FishModelUVFlipped:materialInfo3.sg"
		;
connectAttr "FishRig:FishModelUVFlipped:lambert4SG1.msg" "FishRig:FishModelUVFlipped:materialInfo3.m"
		;
connectAttr "FishRig:FishModelUV:lambert2SG1.oc" "FishRig:FishModelUV:lambert2SG.ss"
		;
connectAttr "FishRig:FishModelUV:lambert2SG.msg" "FishRig:FishModelUV:materialInfo1.sg"
		;
connectAttr "FishRig:FishModelUV:lambert2SG1.msg" "FishRig:FishModelUV:materialInfo1.m"
		;
connectAttr "FishRig:FishModelUV:lambert3SG1.oc" "FishRig:FishModelUV:lambert3SG.ss"
		;
connectAttr "FishRig:FishModelUV:lambert3SG.msg" "FishRig:FishModelUV:materialInfo2.sg"
		;
connectAttr "FishRig:FishModelUV:lambert3SG1.msg" "FishRig:FishModelUV:materialInfo2.m"
		;
connectAttr "FishRig:FishModelUV:lambert4SG1.oc" "FishRig:FishModelUV:lambert4SG.ss"
		;
connectAttr "FishRig:FishModelUV:lambert4SG.msg" "FishRig:FishModelUV:materialInfo3.sg"
		;
connectAttr "FishRig:FishModelUV:lambert4SG1.msg" "FishRig:FishModelUV:materialInfo3.m"
		;
connectAttr "FishRig:FishModelSmallEyes:pasted__lambert3SG3.oc" "FishRig:FishModelSmallEyes:pasted__lambert3SG2.ss"
		;
connectAttr "FishRig:FishModelSmallEyes:pasted__lambert3SG2.msg" "FishRig:FishModelSmallEyes:materialInfo1.sg"
		;
connectAttr "FishRig:FishModelSmallEyes:pasted__lambert3SG3.msg" "FishRig:FishModelSmallEyes:materialInfo1.m"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert2SG1.oc" "FishRig1:FishModelUVFlipped:lambert2SG.ss"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert2SG.msg" "FishRig1:FishModelUVFlipped:materialInfo1.sg"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert2SG1.msg" "FishRig1:FishModelUVFlipped:materialInfo1.m"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert3SG1.oc" "FishRig1:FishModelUVFlipped:lambert3SG.ss"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert3SG.msg" "FishRig1:FishModelUVFlipped:materialInfo2.sg"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert3SG1.msg" "FishRig1:FishModelUVFlipped:materialInfo2.m"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert4SG1.oc" "FishRig1:FishModelUVFlipped:lambert4SG.ss"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert4SG.msg" "FishRig1:FishModelUVFlipped:materialInfo3.sg"
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert4SG1.msg" "FishRig1:FishModelUVFlipped:materialInfo3.m"
		;
connectAttr "FishRig1:FishModelUV:lambert2SG1.oc" "FishRig1:FishModelUV:lambert2SG.ss"
		;
connectAttr "FishRig1:FishModelUV:lambert2SG.msg" "FishRig1:FishModelUV:materialInfo1.sg"
		;
connectAttr "FishRig1:FishModelUV:lambert2SG1.msg" "FishRig1:FishModelUV:materialInfo1.m"
		;
connectAttr "FishRig1:FishModelUV:lambert3SG1.oc" "FishRig1:FishModelUV:lambert3SG.ss"
		;
connectAttr "FishRig1:FishModelUV:lambert3SG.msg" "FishRig1:FishModelUV:materialInfo2.sg"
		;
connectAttr "FishRig1:FishModelUV:lambert3SG1.msg" "FishRig1:FishModelUV:materialInfo2.m"
		;
connectAttr "FishRig1:FishModelUV:lambert4SG1.oc" "FishRig1:FishModelUV:lambert4SG.ss"
		;
connectAttr "FishRig1:FishModelUV:lambert4SG.msg" "FishRig1:FishModelUV:materialInfo3.sg"
		;
connectAttr "FishRig1:FishModelUV:lambert4SG1.msg" "FishRig1:FishModelUV:materialInfo3.m"
		;
connectAttr "FishRig1:FishModelSmallEyes:pasted__lambert3SG3.oc" "FishRig1:FishModelSmallEyes:pasted__lambert3SG2.ss"
		;
connectAttr "FishRig1:FishModelSmallEyes:pasted__lambert3SG2.msg" "FishRig1:FishModelSmallEyes:materialInfo1.sg"
		;
connectAttr "FishRig1:FishModelSmallEyes:pasted__lambert3SG3.msg" "FishRig1:FishModelSmallEyes:materialInfo1.m"
		;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture1.o" "file2.uv";
connectAttr "place2dTexture1.ofs" "file2.fs";
connectAttr "place2dTexture1.c" "file2.c";
connectAttr "place2dTexture1.tf" "file2.tf";
connectAttr "place2dTexture1.rf" "file2.rf";
connectAttr "place2dTexture1.mu" "file2.mu";
connectAttr "place2dTexture1.mv" "file2.mv";
connectAttr "place2dTexture1.s" "file2.s";
connectAttr "place2dTexture1.wu" "file2.wu";
connectAttr "place2dTexture1.wv" "file2.wv";
connectAttr "place2dTexture1.re" "file2.re";
connectAttr "place2dTexture1.of" "file2.of";
connectAttr "place2dTexture1.r" "file2.ro";
connectAttr "place2dTexture1.n" "file2.n";
connectAttr "place2dTexture1.vt1" "file2.vt1";
connectAttr "place2dTexture1.vt2" "file2.vt2";
connectAttr "place2dTexture1.vt3" "file2.vt3";
connectAttr "place2dTexture1.vc1" "file2.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture1.o" "file3.uv";
connectAttr "place2dTexture1.ofs" "file3.fs";
connectAttr "place2dTexture1.c" "file3.c";
connectAttr "place2dTexture1.tf" "file3.tf";
connectAttr "place2dTexture1.rf" "file3.rf";
connectAttr "place2dTexture1.mu" "file3.mu";
connectAttr "place2dTexture1.mv" "file3.mv";
connectAttr "place2dTexture1.s" "file3.s";
connectAttr "place2dTexture1.wu" "file3.wu";
connectAttr "place2dTexture1.wv" "file3.wv";
connectAttr "place2dTexture1.re" "file3.re";
connectAttr "place2dTexture1.of" "file3.of";
connectAttr "place2dTexture1.r" "file3.ro";
connectAttr "place2dTexture1.n" "file3.n";
connectAttr "place2dTexture1.vt1" "file3.vt1";
connectAttr "place2dTexture1.vt2" "file3.vt2";
connectAttr "place2dTexture1.vt3" "file3.vt3";
connectAttr "place2dTexture1.vc1" "file3.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture1.o" "file4.uv";
connectAttr "place2dTexture1.ofs" "file4.fs";
connectAttr "place2dTexture1.c" "file4.c";
connectAttr "place2dTexture1.tf" "file4.tf";
connectAttr "place2dTexture1.rf" "file4.rf";
connectAttr "place2dTexture1.mu" "file4.mu";
connectAttr "place2dTexture1.mv" "file4.mv";
connectAttr "place2dTexture1.s" "file4.s";
connectAttr "place2dTexture1.wu" "file4.wu";
connectAttr "place2dTexture1.wv" "file4.wv";
connectAttr "place2dTexture1.re" "file4.re";
connectAttr "place2dTexture1.of" "file4.of";
connectAttr "place2dTexture1.r" "file4.ro";
connectAttr "place2dTexture1.n" "file4.n";
connectAttr "place2dTexture1.vt1" "file4.vt1";
connectAttr "place2dTexture1.vt2" "file4.vt2";
connectAttr "place2dTexture1.vt3" "file4.vt3";
connectAttr "place2dTexture1.vc1" "file4.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture1.o" "file5.uv";
connectAttr "place2dTexture1.ofs" "file5.fs";
connectAttr "place2dTexture1.c" "file5.c";
connectAttr "place2dTexture1.tf" "file5.tf";
connectAttr "place2dTexture1.rf" "file5.rf";
connectAttr "place2dTexture1.mu" "file5.mu";
connectAttr "place2dTexture1.mv" "file5.mv";
connectAttr "place2dTexture1.s" "file5.s";
connectAttr "place2dTexture1.wu" "file5.wu";
connectAttr "place2dTexture1.wv" "file5.wv";
connectAttr "place2dTexture1.re" "file5.re";
connectAttr "place2dTexture1.of" "file5.of";
connectAttr "place2dTexture1.r" "file5.ro";
connectAttr "place2dTexture1.n" "file5.n";
connectAttr "place2dTexture1.vt1" "file5.vt1";
connectAttr "place2dTexture1.vt2" "file5.vt2";
connectAttr "place2dTexture1.vt3" "file5.vt3";
connectAttr "place2dTexture1.vc1" "file5.vc1";
connectAttr "file1.oc" "multiplyDivide1.i1";
connectAttr "multiplyDivide1.o" "CrabBody.base_color";
connectAttr "file3.oa" "CrabBody.metalness";
connectAttr "bump2d1.o" "CrabBody.n";
connectAttr "file5.oa" "CrabBody.specular_roughness";
connectAttr "CrabBody.out" "set1.ss";
connectAttr "set1.msg" "materialInfo1.sg";
connectAttr "CrabBody.msg" "materialInfo1.m";
connectAttr "CrabBody.msg" "materialInfo1.t" -na;
connectAttr "file4.oa" "bump2d1.bv";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture2.o" "file6.uv";
connectAttr "place2dTexture2.ofs" "file6.fs";
connectAttr "place2dTexture2.c" "file6.c";
connectAttr "place2dTexture2.tf" "file6.tf";
connectAttr "place2dTexture2.rf" "file6.rf";
connectAttr "place2dTexture2.mu" "file6.mu";
connectAttr "place2dTexture2.mv" "file6.mv";
connectAttr "place2dTexture2.s" "file6.s";
connectAttr "place2dTexture2.wu" "file6.wu";
connectAttr "place2dTexture2.wv" "file6.wv";
connectAttr "place2dTexture2.re" "file6.re";
connectAttr "place2dTexture2.of" "file6.of";
connectAttr "place2dTexture2.r" "file6.ro";
connectAttr "place2dTexture2.n" "file6.n";
connectAttr "place2dTexture2.vt1" "file6.vt1";
connectAttr "place2dTexture2.vt2" "file6.vt2";
connectAttr "place2dTexture2.vt3" "file6.vt3";
connectAttr "place2dTexture2.vc1" "file6.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture2.o" "file7.uv";
connectAttr "place2dTexture2.ofs" "file7.fs";
connectAttr "place2dTexture2.c" "file7.c";
connectAttr "place2dTexture2.tf" "file7.tf";
connectAttr "place2dTexture2.rf" "file7.rf";
connectAttr "place2dTexture2.mu" "file7.mu";
connectAttr "place2dTexture2.mv" "file7.mv";
connectAttr "place2dTexture2.s" "file7.s";
connectAttr "place2dTexture2.wu" "file7.wu";
connectAttr "place2dTexture2.wv" "file7.wv";
connectAttr "place2dTexture2.re" "file7.re";
connectAttr "place2dTexture2.of" "file7.of";
connectAttr "place2dTexture2.r" "file7.ro";
connectAttr "place2dTexture2.n" "file7.n";
connectAttr "place2dTexture2.vt1" "file7.vt1";
connectAttr "place2dTexture2.vt2" "file7.vt2";
connectAttr "place2dTexture2.vt3" "file7.vt3";
connectAttr "place2dTexture2.vc1" "file7.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "place2dTexture2.o" "file8.uv";
connectAttr "place2dTexture2.ofs" "file8.fs";
connectAttr "place2dTexture2.c" "file8.c";
connectAttr "place2dTexture2.tf" "file8.tf";
connectAttr "place2dTexture2.rf" "file8.rf";
connectAttr "place2dTexture2.mu" "file8.mu";
connectAttr "place2dTexture2.mv" "file8.mv";
connectAttr "place2dTexture2.s" "file8.s";
connectAttr "place2dTexture2.wu" "file8.wu";
connectAttr "place2dTexture2.wv" "file8.wv";
connectAttr "place2dTexture2.re" "file8.re";
connectAttr "place2dTexture2.of" "file8.of";
connectAttr "place2dTexture2.r" "file8.ro";
connectAttr "place2dTexture2.n" "file8.n";
connectAttr "place2dTexture2.vt1" "file8.vt1";
connectAttr "place2dTexture2.vt2" "file8.vt2";
connectAttr "place2dTexture2.vt3" "file8.vt3";
connectAttr "place2dTexture2.vc1" "file8.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "place2dTexture2.o" "file9.uv";
connectAttr "place2dTexture2.ofs" "file9.fs";
connectAttr "place2dTexture2.c" "file9.c";
connectAttr "place2dTexture2.tf" "file9.tf";
connectAttr "place2dTexture2.rf" "file9.rf";
connectAttr "place2dTexture2.mu" "file9.mu";
connectAttr "place2dTexture2.mv" "file9.mv";
connectAttr "place2dTexture2.s" "file9.s";
connectAttr "place2dTexture2.wu" "file9.wu";
connectAttr "place2dTexture2.wv" "file9.wv";
connectAttr "place2dTexture2.re" "file9.re";
connectAttr "place2dTexture2.of" "file9.of";
connectAttr "place2dTexture2.r" "file9.ro";
connectAttr "place2dTexture2.n" "file9.n";
connectAttr "place2dTexture2.vt1" "file9.vt1";
connectAttr "place2dTexture2.vt2" "file9.vt2";
connectAttr "place2dTexture2.vt3" "file9.vt3";
connectAttr "place2dTexture2.vc1" "file9.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "place2dTexture2.o" "file10.uv";
connectAttr "place2dTexture2.ofs" "file10.fs";
connectAttr "place2dTexture2.c" "file10.c";
connectAttr "place2dTexture2.tf" "file10.tf";
connectAttr "place2dTexture2.rf" "file10.rf";
connectAttr "place2dTexture2.mu" "file10.mu";
connectAttr "place2dTexture2.mv" "file10.mv";
connectAttr "place2dTexture2.s" "file10.s";
connectAttr "place2dTexture2.wu" "file10.wu";
connectAttr "place2dTexture2.wv" "file10.wv";
connectAttr "place2dTexture2.re" "file10.re";
connectAttr "place2dTexture2.of" "file10.of";
connectAttr "place2dTexture2.r" "file10.ro";
connectAttr "place2dTexture2.n" "file10.n";
connectAttr "place2dTexture2.vt1" "file10.vt1";
connectAttr "place2dTexture2.vt2" "file10.vt2";
connectAttr "place2dTexture2.vt3" "file10.vt3";
connectAttr "place2dTexture2.vc1" "file10.vc1";
connectAttr "file6.oc" "multiplyDivide2.i1";
connectAttr "multiplyDivide2.o" "CrabEyes.base_color";
connectAttr "file8.oa" "CrabEyes.metalness";
connectAttr "bump2d2.o" "CrabEyes.n";
connectAttr "file10.oa" "CrabEyes.specular_roughness";
connectAttr "CrabEyes.out" "set2.ss";
connectAttr "set2.msg" "materialInfo2.sg";
connectAttr "CrabEyes.msg" "materialInfo2.m";
connectAttr "CrabEyes.msg" "materialInfo2.t" -na;
connectAttr "file9.oa" "bump2d2.bv";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "place2dTexture3.o" "file11.uv";
connectAttr "place2dTexture3.ofs" "file11.fs";
connectAttr "place2dTexture3.c" "file11.c";
connectAttr "place2dTexture3.tf" "file11.tf";
connectAttr "place2dTexture3.rf" "file11.rf";
connectAttr "place2dTexture3.mu" "file11.mu";
connectAttr "place2dTexture3.mv" "file11.mv";
connectAttr "place2dTexture3.s" "file11.s";
connectAttr "place2dTexture3.wu" "file11.wu";
connectAttr "place2dTexture3.wv" "file11.wv";
connectAttr "place2dTexture3.re" "file11.re";
connectAttr "place2dTexture3.of" "file11.of";
connectAttr "place2dTexture3.r" "file11.ro";
connectAttr "place2dTexture3.n" "file11.n";
connectAttr "place2dTexture3.vt1" "file11.vt1";
connectAttr "place2dTexture3.vt2" "file11.vt2";
connectAttr "place2dTexture3.vt3" "file11.vt3";
connectAttr "place2dTexture3.vc1" "file11.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file12.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file12.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file12.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file12.ws";
connectAttr "place2dTexture3.o" "file12.uv";
connectAttr "place2dTexture3.ofs" "file12.fs";
connectAttr "place2dTexture3.c" "file12.c";
connectAttr "place2dTexture3.tf" "file12.tf";
connectAttr "place2dTexture3.rf" "file12.rf";
connectAttr "place2dTexture3.mu" "file12.mu";
connectAttr "place2dTexture3.mv" "file12.mv";
connectAttr "place2dTexture3.s" "file12.s";
connectAttr "place2dTexture3.wu" "file12.wu";
connectAttr "place2dTexture3.wv" "file12.wv";
connectAttr "place2dTexture3.re" "file12.re";
connectAttr "place2dTexture3.of" "file12.of";
connectAttr "place2dTexture3.r" "file12.ro";
connectAttr "place2dTexture3.n" "file12.n";
connectAttr "place2dTexture3.vt1" "file12.vt1";
connectAttr "place2dTexture3.vt2" "file12.vt2";
connectAttr "place2dTexture3.vt3" "file12.vt3";
connectAttr "place2dTexture3.vc1" "file12.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file13.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file13.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file13.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file13.ws";
connectAttr "place2dTexture3.o" "file13.uv";
connectAttr "place2dTexture3.ofs" "file13.fs";
connectAttr "place2dTexture3.c" "file13.c";
connectAttr "place2dTexture3.tf" "file13.tf";
connectAttr "place2dTexture3.rf" "file13.rf";
connectAttr "place2dTexture3.mu" "file13.mu";
connectAttr "place2dTexture3.mv" "file13.mv";
connectAttr "place2dTexture3.s" "file13.s";
connectAttr "place2dTexture3.wu" "file13.wu";
connectAttr "place2dTexture3.wv" "file13.wv";
connectAttr "place2dTexture3.re" "file13.re";
connectAttr "place2dTexture3.of" "file13.of";
connectAttr "place2dTexture3.r" "file13.ro";
connectAttr "place2dTexture3.n" "file13.n";
connectAttr "place2dTexture3.vt1" "file13.vt1";
connectAttr "place2dTexture3.vt2" "file13.vt2";
connectAttr "place2dTexture3.vt3" "file13.vt3";
connectAttr "place2dTexture3.vc1" "file13.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file14.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file14.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file14.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file14.ws";
connectAttr "place2dTexture3.o" "file14.uv";
connectAttr "place2dTexture3.ofs" "file14.fs";
connectAttr "place2dTexture3.c" "file14.c";
connectAttr "place2dTexture3.tf" "file14.tf";
connectAttr "place2dTexture3.rf" "file14.rf";
connectAttr "place2dTexture3.mu" "file14.mu";
connectAttr "place2dTexture3.mv" "file14.mv";
connectAttr "place2dTexture3.s" "file14.s";
connectAttr "place2dTexture3.wu" "file14.wu";
connectAttr "place2dTexture3.wv" "file14.wv";
connectAttr "place2dTexture3.re" "file14.re";
connectAttr "place2dTexture3.of" "file14.of";
connectAttr "place2dTexture3.r" "file14.ro";
connectAttr "place2dTexture3.n" "file14.n";
connectAttr "place2dTexture3.vt1" "file14.vt1";
connectAttr "place2dTexture3.vt2" "file14.vt2";
connectAttr "place2dTexture3.vt3" "file14.vt3";
connectAttr "place2dTexture3.vc1" "file14.vc1";
connectAttr ":defaultColorMgtGlobals.cme" "file15.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file15.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file15.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file15.ws";
connectAttr "place2dTexture3.o" "file15.uv";
connectAttr "place2dTexture3.ofs" "file15.fs";
connectAttr "place2dTexture3.c" "file15.c";
connectAttr "place2dTexture3.tf" "file15.tf";
connectAttr "place2dTexture3.rf" "file15.rf";
connectAttr "place2dTexture3.mu" "file15.mu";
connectAttr "place2dTexture3.mv" "file15.mv";
connectAttr "place2dTexture3.s" "file15.s";
connectAttr "place2dTexture3.wu" "file15.wu";
connectAttr "place2dTexture3.wv" "file15.wv";
connectAttr "place2dTexture3.re" "file15.re";
connectAttr "place2dTexture3.of" "file15.of";
connectAttr "place2dTexture3.r" "file15.ro";
connectAttr "place2dTexture3.n" "file15.n";
connectAttr "place2dTexture3.vt1" "file15.vt1";
connectAttr "place2dTexture3.vt2" "file15.vt2";
connectAttr "place2dTexture3.vt3" "file15.vt3";
connectAttr "place2dTexture3.vc1" "file15.vc1";
connectAttr "file11.oc" "multiplyDivide3.i1";
connectAttr "multiplyDivide3.o" "CrabShell.base_color";
connectAttr "file13.oa" "CrabShell.metalness";
connectAttr "bump2d3.o" "CrabShell.n";
connectAttr "file15.oa" "CrabShell.specular_roughness";
connectAttr "CrabShell.out" "set3.ss";
connectAttr "set3.msg" "materialInfo3.sg";
connectAttr "CrabShell.msg" "materialInfo3.m";
connectAttr "CrabShell.msg" "materialInfo3.t" -na;
connectAttr "file14.oa" "bump2d3.bv";
connectAttr "FishRig:FishModelUVFlipped:lambert2SG.pa" ":renderPartition.st" -na
		;
connectAttr "FishRig:FishModelUVFlipped:lambert3SG.pa" ":renderPartition.st" -na
		;
connectAttr "FishRig:FishModelUVFlipped:lambert4SG.pa" ":renderPartition.st" -na
		;
connectAttr "FishRig:FishModelUV:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "FishRig:FishModelUV:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "FishRig:FishModelUV:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "FishRig:FishModelSmallEyes:pasted__lambert3SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "FishRig1:FishModelUVFlipped:lambert2SG.pa" ":renderPartition.st" -na
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert3SG.pa" ":renderPartition.st" -na
		;
connectAttr "FishRig1:FishModelUVFlipped:lambert4SG.pa" ":renderPartition.st" -na
		;
connectAttr "FishRig1:FishModelUV:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "FishRig1:FishModelUV:lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "FishRig1:FishModelUV:lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "FishRig1:FishModelSmallEyes:pasted__lambert3SG2.pa" ":renderPartition.st"
		 -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "set3.pa" ":renderPartition.st" -na;
connectAttr "FishRig:FishModelUVFlipped:lambert2SG1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FishRig:FishModelUVFlipped:lambert3SG1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FishRig:FishModelUVFlipped:lambert4SG1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FishRig:FishModelUV:lambert2SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "FishRig:FishModelUV:lambert3SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "FishRig:FishModelUV:lambert4SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "FishRig:FishModelSmallEyes:pasted__lambert3SG3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FishRig1:FishModelUVFlipped:lambert2SG1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FishRig1:FishModelUVFlipped:lambert3SG1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FishRig1:FishModelUVFlipped:lambert4SG1.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "FishRig1:FishModelUV:lambert2SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "FishRig1:FishModelUV:lambert3SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "FishRig1:FishModelUV:lambert4SG1.msg" ":defaultShaderList1.s" -na;
connectAttr "FishRig1:FishModelSmallEyes:pasted__lambert3SG3.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "CrabBody.msg" ":defaultShaderList1.s" -na;
connectAttr "CrabEyes.msg" ":defaultShaderList1.s" -na;
connectAttr "CrabShell.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "file13.msg" ":defaultTextureList1.tx" -na;
connectAttr "file14.msg" ":defaultTextureList1.tx" -na;
connectAttr "file15.msg" ":defaultTextureList1.tx" -na;
// End of Anim_2.ma
