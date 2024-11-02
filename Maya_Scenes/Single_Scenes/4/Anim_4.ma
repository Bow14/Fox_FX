//Maya ASCII 2023 scene
//Name: Anim_4.ma
//Last modified: Mon, Oct 28, 2024 12:24:47 AM
//Codeset: 1252
file -rdi 1 -ns "Main_Scene" -rfn "Main_SceneRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Main_Scene.ma";
file -rdi 2 -ns "Hermit_Crab_Rig_New" -rfn "Main_Scene:Hermit_Crab_Rig_NewRN"
		 -op "v=0;" -typ "mayaAscii" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/HermitCrab/Hermit_Crab_Rig_New.ma";
file -rdi 2 -ns "Palm_Tree" -rfn "Main_Scene:Palm_TreeRN" -op "fbx" -typ "mayaAscii"
		 "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/PalmTree/Palm_Tree.ma";
file -rdi 2 -ns "IslandTest2" -rfn "Main_Scene:IslandTest2RN" -op "v=0;" -typ
		 "mayaAscii" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/Island/Island.ma";
file -r -ns "Main_Scene" -dr 1 -rfn "Main_SceneRN" -op "v=0;" -typ "mayaAscii" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Main_Scene.ma";
requires maya "2023";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.17";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.2.1";
requires "fbxmaya" "2020.3.1";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "9BB4CCB8-4295-9FA5-D190-B7996AAE5B8C";
createNode transform -s -n "persp";
	rename -uid "9D50560C-4AC8-3EDA-A4B4-D99B24B95E99";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 87.75850178503039 26.582268453396047 30.439341850009455 ;
	setAttr ".r" -type "double3" -5.4000000000000243 63.999999999972026 9.0692404847947792e-16 ;
	setAttr ".rpt" -type "double3" -1.504053644746112e-15 1.4218167182728426e-16 -1.8617768060267457e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C57C7EEB-46C3-5AD6-1C2E-AAB61A9B4E4B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 71.935491528463643;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 28.261257472218169 3.6432841395968687 -9.6050531582533552 ;
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
	rename -uid "10EB9F8F-4058-23B2-72AC-7887C353AA13";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "E8AA0E16-47ED-EE64-F365-1EB2A42E4675";
	setAttr ".version" 6;
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".denoiseEngine" 3;
	setAttr ".GIEnabled" yes;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
	setAttr ".shadingNormalAdaptionTechnique" 1;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
	setAttr ".enableLegacyMotionBlurSampling" no;
	setAttr ".enableLegacySSSGI" no;
	setAttr ".enableLegacyVolumePhase" no;
	setAttr ".enableLegacyDispersionNestedDielectricsTechnique" no;
	setAttr ".enableLegacyTimeBehavior" no;
	setAttr ".enableOptiXRTOnSupportedGPUs" yes;
	setAttr ".enableAutomaticSampling" yes;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "D3430946-479E-2FED-053A-40B877370FBA";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A0C63F58-490D-D1F1-CB53-B8AA7F3F5CEB";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 3 0 1 2 ;
	setAttr -s 3 ".bspr";
	setAttr -s 3 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6C08A5B6-4FBD-0E00-5EE0-F3B79B1C8449";
createNode displayLayerManager -n "layerManager";
	rename -uid "3F3C9D3D-4938-9730-826C-FFB7FE202630";
createNode displayLayer -n "defaultLayer";
	rename -uid "8A535081-4B99-8E92-9747-1FA970430AEC";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FEE21242-483F-6859-B672-FDA31840F7EC";
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
	setAttr -s 30 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Main_SceneRN"
		"Main_Scene:IslandTest2RN" 0
		"Main_SceneRN" 0
		"Main_Scene:Hermit_Crab_Rig_NewRN" 0
		"Main_Scene:Palm_TreeRN" 0
		"Main_SceneRN" 19
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
		2 "|Main_Scene:camera1|Main_Scene:cameraShape1" "centerOfInterest" " 18.52716089741198502"
		
		2 "|Main_Scene:camera1|Main_Scene:cameraShape1" "tumblePivot" " -type \"double3\" 17.04741916947435243 16.34075822802688904 5.91479545426517461"
		
		2 "Main_Scene:defaultRedshiftPostEffects" "version" " 2"
		"Main_Scene:Palm_TreeRN" 2
		2 "Main_Scene:Palm_Tree:defaultRedshiftPostEffects" "version" " 2"
		2 "Main_Scene:Palm_Tree:Main_Scene:defaultRedshiftPostEffects" "version" 
		" 2"
		"Main_Scene:Hermit_Crab_Rig_NewRN" 31
		2 "Main_Scene:Hermit_Crab_Rig_New:defaultRedshiftPostEffects" "version" " 2"
		
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[1]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[2]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[3]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[4]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[5]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[6]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[7]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[8]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[9]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[10]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[11]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[12]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[13]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[14]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[15]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[16]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[17]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[18]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[19]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[20]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[21]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[22]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[23]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[24]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[25]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[26]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[27]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[28]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[29]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[30]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "97D8B77D-4515-2CA8-D156-C4B9857A876A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n"
		+ "            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n"
		+ "            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n"
		+ "            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1376\n            -height 681\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n"
		+ "                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1376\\n    -height 681\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1376\\n    -height 681\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CE570586-4CCD-5E0B-9D0B-009F5E38E252";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 288 -ast 0 -aet 288 ";
	setAttr ".st" 6;
createNode timeEditor -s -n "timeEditor";
	rename -uid "DC7FBE78-4ED0-F6DB-04B3-14B183BA23B6";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "12A03886-4D5E-31D6-E677-75A9984B7FA4";
createNode animCurveTL -n "Transform_Ctrl_translateX";
	rename -uid "0FCC5A76-43B6-2A79-3E79-8D9E4AE01000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.940324945423683 30 25.14819422624047
		 72 19.375435028518517 192 16.62792017224632 288 17.391934806745045;
createNode animCurveTL -n "Transform_Ctrl_translateY";
	rename -uid "AADF4D4F-4635-49BC-A171-B7A81651579C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 3.3952194418105597 30 7.5620012894902837
		 72 14.614519618327165 192 14.907681783232658 288 5.0710874067607392;
createNode animCurveTL -n "Transform_Ctrl_translateZ";
	rename -uid "8DC47F6C-4384-C4E1-D9D9-BCA528C22FD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.7060027856792654 30 -5.1728272605858363
		 72 3.490121767252746 192 5.8525143134253241 288 31.116307295418636;
createNode animCurveTA -n "Transform_Ctrl_rotateX";
	rename -uid "AC45DF34-429F-5A90-1782-4396F98E422B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -20.691742976926445 30 -14.758453308083514
		 72 -2.4795557955106879 192 3.4636417112207876 288 17.36781397654935;
createNode animCurveTA -n "Transform_Ctrl_rotateY";
	rename -uid "1C395323-49E4-1BC4-B382-A1A8FFEB3C85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -51.196705662281232 30 -51.778277341786847
		 72 -52.742791604105385 192 5.8054042024349686 288 5.8054042024349712;
createNode animCurveTA -n "Transform_Ctrl_rotateZ";
	rename -uid "61EBE2C5-44AC-DF79-9F39-6D872344EB3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -24.455243719588641 30 -30.497438130312098
		 72 -40.518185168404244 192 -10.649183644702338 288 -10.649183644702338;
createNode animCurveTL -n "R_Leg_01_Jnt_01_Ctrl_translateX";
	rename -uid "2B498506-4DB6-CD63-BFCA-D5B42B90CCC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "L_Leg_01_Jnt_01_Ctrl_translateX";
	rename -uid "B469F6B3-479D-564B-CF63-66883E310C41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "R_Leg_01_Jnt_01_Ctrl_translateY";
	rename -uid "10361183-4E06-DB79-B117-51987A2DE7D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "L_Leg_01_Jnt_01_Ctrl_translateY";
	rename -uid "01F294AC-4E38-FA8A-C9C7-D48973307D8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "R_Leg_01_Jnt_01_Ctrl_translateZ";
	rename -uid "E4E16FAD-4E97-F278-5C63-CAA180F56F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTL -n "L_Leg_01_Jnt_01_Ctrl_translateZ";
	rename -uid "41CBE4C4-4F7B-A2B2-3A81-2F9145E9EBCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "R_Leg_01_Jnt_01_Ctrl_rotateX";
	rename -uid "E4C3BAA1-4A6C-E7D1-A04C-A081D2599D28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "L_Leg_01_Jnt_01_Ctrl_rotateX";
	rename -uid "8D360A4C-4324-41DA-5E0F-97ACBFA95F07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "R_Leg_01_Jnt_01_Ctrl_rotateY";
	rename -uid "8E49CC8F-449B-EF72-5DB7-C9A37783FF9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "L_Leg_01_Jnt_01_Ctrl_rotateY";
	rename -uid "1EEA6FAB-4AB0-9FBC-CAC1-79AD23BA9577";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 30 0;
createNode animCurveTA -n "R_Leg_01_Jnt_01_Ctrl_rotateZ";
	rename -uid "FFBB872C-4F44-BE19-A705-BD9D16FFDB4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.523227980742927 30 0;
createNode animCurveTA -n "L_Leg_01_Jnt_01_Ctrl_rotateZ";
	rename -uid "542ED80A-4B8D-5FC0-AD77-F1BC98D3D51F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.523227980742927 30 0;
createNode animCurveTL -n "R_Leg_02_Jnt_01_Ctrl_translateX";
	rename -uid "9F20EAAD-4325-0B0D-A5B1-45BE070AA98E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "L_Leg_02_Jnt_01_Ctrl_translateX";
	rename -uid "1869C8B4-4B55-022C-8D9C-929D410C7FC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "R_Leg_02_Jnt_01_Ctrl_translateY";
	rename -uid "2D3D4FFB-476E-B383-9112-11937E188E50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "L_Leg_02_Jnt_01_Ctrl_translateY";
	rename -uid "50996E3E-432C-3D5F-B149-82AB7E138C8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "R_Leg_02_Jnt_01_Ctrl_translateZ";
	rename -uid "1395C8F6-402D-F41D-7480-7CA8BFD1E5F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "L_Leg_02_Jnt_01_Ctrl_translateZ";
	rename -uid "3241BC57-4AE2-0387-3EE4-838F63AD9647";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "R_Leg_02_Jnt_01_Ctrl_rotateX";
	rename -uid "6B4A4851-4BF9-FBA1-1790-38A92C30919B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "L_Leg_02_Jnt_01_Ctrl_rotateX";
	rename -uid "0D8795E4-4663-29C0-812B-C180BB9FAB0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "R_Leg_02_Jnt_01_Ctrl_rotateY";
	rename -uid "DAD57BF2-4FDD-B451-F2B2-FEA87E080325";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "L_Leg_02_Jnt_01_Ctrl_rotateY";
	rename -uid "3EE8881B-474F-CDD2-05C6-F3859F440E7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "R_Leg_02_Jnt_01_Ctrl_rotateZ";
	rename -uid "3FB05CA2-45A7-E91B-20E6-70995DFF1156";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 17.096380989197421;
createNode animCurveTA -n "L_Leg_02_Jnt_01_Ctrl_rotateZ";
	rename -uid "FDE00430-4493-2232-41BA-F2A7FE3685BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 17.096380989197421;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 21 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 6 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 25 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
connectAttr "Transform_Ctrl_translateY.o" "Main_SceneRN.phl[1]";
connectAttr "Transform_Ctrl_translateX.o" "Main_SceneRN.phl[2]";
connectAttr "Transform_Ctrl_translateZ.o" "Main_SceneRN.phl[3]";
connectAttr "Transform_Ctrl_rotateX.o" "Main_SceneRN.phl[4]";
connectAttr "Transform_Ctrl_rotateY.o" "Main_SceneRN.phl[5]";
connectAttr "Transform_Ctrl_rotateZ.o" "Main_SceneRN.phl[6]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[7]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[8]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[9]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[10]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[11]";
connectAttr "L_Leg_01_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[12]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[13]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[14]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[15]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[16]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[17]";
connectAttr "L_Leg_02_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[18]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[19]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[20]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[21]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[22]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[23]";
connectAttr "R_Leg_01_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[24]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[25]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[26]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[27]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[28]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[29]";
connectAttr "R_Leg_02_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[30]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Anim_4.ma
