//Maya ASCII 2023 scene
//Name: Anim_1.ma
//Last modified: Fri, Oct 25, 2024 11:34:29 PM
//Codeset: 1252
file -rdi 1 -ns "rocks" -dr 1 -rfn "rocks:islandRN" -op "mo=1" -typ "OBJexport"
		 "C:/Users/redpa/OneDrive/Documents/git/Fox_FX/Maya_Scenes/Models/Island/island.obj";
file -rdi 1 -ns "rocks" -dr 1 -rfn "rocks:rocksRN" -op "mo=1" -typ "OBJexport"
		 "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/Island/rocks.obj";
file -rdi 1 -ns "Main_Scene" -rfn "Main_SceneRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/redpa/OneDrive/Documents/git/Fox_FX/Maya_Scenes/Main_Scene.ma";
file -rdi 2 -ns "Hermit_Crab_Rig_New" -rfn "Main_Scene:Hermit_Crab_Rig_NewRN"
		 -op "v=0;" -typ "mayaAscii" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/HermitCrab/Hermit_Crab_Rig_New.ma";
file -rdi 2 -ns "Palm_Tree" -rfn "Main_Scene:Palm_TreeRN" -op "fbx" -typ "mayaAscii"
		 "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/PalmTree/Palm_Tree.ma";
file -rdi 2 -ns "IslandTest2" -rfn "Main_Scene:IslandTest2RN" -op "v=0;" -typ
		 "mayaAscii" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/Island/Island.ma";
file -rdi 2 -ns "Flag" -rfn "Main_Scene:FlagRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/Flag/Flag.ma";
file -r -ns "rocks" -dr 1 -rfn "rocks:islandRN" -op "mo=1" -typ "OBJexport" "C:/Users/redpa/OneDrive/Documents/git/Fox_FX/Maya_Scenes/Models/Island/island.obj";
file -r -ns "rocks" -dr 1 -rfn "rocks:rocksRN" -op "mo=1" -typ "OBJexport" "C:/Users/Melia/Gitrepo/Fox_FX/Maya_Scenes//Models/Island/rocks.obj";
file -r -ns "Main_Scene" -dr 1 -rfn "Main_SceneRN" -op "v=0;" -typ "mayaAscii" "C:/Users/redpa/OneDrive/Documents/git/Fox_FX/Maya_Scenes/Main_Scene.ma";
requires maya "2023";
requires -dataType "ngst2SkinLayerDataStorage" "ngSkinTools2" "2.1.3";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.17";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "986C87AC-4ED2-3B99-7E6D-6DBB31EBB1A8";
createNode transform -s -n "rocks:persp";
	rename -uid "06D20F71-4E11-86F7-2107-AAB30961FAE9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 69.210143279684317 46.273647430288193 173.90746156813745 ;
	setAttr ".r" -type "double3" -3.6000000000000121 16.400000000000141 2.0721544026998792e-16 ;
	setAttr ".rpt" -type "double3" 6.1211962946751479e-15 3.4751397871350543e-15 -3.1385637785535947e-15 ;
createNode camera -s -n "rocks:perspShape" -p "rocks:persp";
	rename -uid "41EBD044-41EE-7229-94E9-8095322B51BB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 180.91820437918551;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "rocks:top";
	rename -uid "133DAFD4-4D37-30FE-4EAC-E88909AF99B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "rocks:topShape" -p "rocks:top";
	rename -uid "53B511DC-4317-A0DA-94D5-5EADE57E2E38";
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
createNode transform -s -n "rocks:front";
	rename -uid "D3AD83C5-44DF-6436-CA04-B7AD947D5A09";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "rocks:frontShape" -p "rocks:front";
	rename -uid "75C40CEE-46C7-0CAB-EC3B-95BE39940DE4";
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
createNode transform -s -n "rocks:side";
	rename -uid "DEEE5CC4-4FB3-4F03-D8FB-71BAE1146429";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "rocks:sideShape" -p "rocks:side";
	rename -uid "79CC6866-4452-6060-E725-2BB9D71264F0";
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
createNode transform -n "rocks:Hermit_Crab";
	rename -uid "5E67071D-49B9-D59C-72F5-BB893A68B9FC";
	setAttr ".rp" -type "double3" 9.0982608795166016 12.73201847076416 -11.459846496582031 ;
	setAttr ".sp" -type "double3" 9.0982608795166016 12.73201847076416 -11.459846496582031 ;
createNode transform -n "rocks:Palm_Tree1";
	rename -uid "CAAAAB35-427E-BAE0-E568-BE94F538A472";
	setAttr ".t" -type "double3" 55.23920255692255 8.2631846120104537 -0.71564883327611817 ;
	setAttr ".s" -type "double3" 10.600302502924356 10.600302502924356 10.600302502924356 ;
createNode transform -s -n "persp";
	rename -uid "9EBE08B3-4EA1-16FF-F6D8-0AB32D27BB8F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 54.143080661548098 21.898533990527479 67.137066480919046 ;
	setAttr ".r" -type "double3" -4.5383527296009687 26.199999999999619 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FFFB1DB3-4815-9C09-F2F1-E8A009B01575";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 64.699328454460854;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7F8CDDE9-4ECF-CF76-B231-50864FE1CCFB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0EFD1325-4843-8ED9-5BCE-998DA68B2DFE";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "E31B3E31-4252-375C-C36E-73A3A9D4EFBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "6F67FB2D-479E-FD11-29E1-2D84E6FE3B41";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "7378166A-42A5-9C86-5508-0FBCC9317E5D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6B3BA1F8-4E2D-69BE-ECE9-8FACCCBCD78B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode fosterParent -n "rocks:Hermit_Crab_Rig_NewRNfosterParent1";
	rename -uid "5C37EE13-4A5B-3A93-CB9F-FBB5A39F4F4F";
createNode nurbsCurve -n "rocks:Transform_CtrlShapeDeformed" -p "rocks:Hermit_Crab_Rig_NewRNfosterParent1";
	rename -uid "95B059B5-499A-87DD-D7A7-B8BD0D341601";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.315436372881968 1.5137634360972778 -4.315436372881968
		3.7369782623960689e-16 1.513763436097278 -6.1029486460878335
		-4.315436372881968 1.5137634360972778 -4.3154363728819671
		-6.1029486460878362 1.5137634360972776 -3.2725204519506175e-16
		-4.315436372881968 1.5137634360972776 4.315436372881968
		-6.1133653987631817e-16 1.5137634360972771 6.102948646087837
		4.315436372881968 1.5137634360972776 4.3154363728819671
		6.1029486460878362 1.5137634360972776 8.2138284236925245e-16
		4.315436372881968 1.5137634360972778 -4.315436372881968
		3.7369782623960689e-16 1.513763436097278 -6.1029486460878335
		-4.315436372881968 1.5137634360972778 -4.3154363728819671
		;
createNode lightLinker -s -n "rocks:lightLinker1";
	rename -uid "502DF810-4B2B-3E60-C564-C09E789496D3";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode RedshiftOptions -s -n "rocks:redshiftOptions";
	rename -uid "31D3D8CF-4E5B-F7EB-4244-E38D8F274F42";
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
createNode RedshiftPostEffects -n "rocks:defaultRedshiftPostEffects";
	rename -uid "73031217-434A-4393-EAFF-F6AC7019D460";
	setAttr ".v" 2;
	setAttr ".cr[1]" -type "float2" 1 1 ;
	setAttr ".cg[1]" -type "float2" 1 1 ;
	setAttr ".cb[1]" -type "float2" 1 1 ;
	setAttr ".cl[1]" -type "float2" 1 1 ;
createNode shapeEditorManager -n "rocks:shapeEditorManager";
	rename -uid "B41C36F9-4729-A6AA-65E1-B398A926B4EC";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 3 0 1 2 ;
	setAttr -s 3 ".bspr";
	setAttr -s 3 ".obsv";
createNode poseInterpolatorManager -n "rocks:poseInterpolatorManager";
	rename -uid "74D08A00-4456-C7E0-404D-DF97423D5089";
createNode displayLayerManager -n "rocks:layerManager";
	rename -uid "60311E0C-43BA-1E1E-9480-A5BB8F6C9A17";
createNode displayLayer -n "rocks:defaultLayer";
	rename -uid "70BB9F69-4A73-B45F-A011-0591A599AC2E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "rocks:renderLayerManager";
	rename -uid "83556490-4919-B55C-7357-1B9C6009A691";
createNode renderLayer -n "rocks:defaultRenderLayer";
	rename -uid "1FDAF10F-4F7C-048F-7755-2E870EE7590B";
	setAttr ".g" yes;
createNode aiOptions -s -n "rocks:defaultArnoldRenderOptions";
	rename -uid "78E32408-46AF-DE67-2933-9E83D10B9E6A";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.2.2.1";
createNode aiAOVFilter -s -n "rocks:defaultArnoldFilter";
	rename -uid "CB8FECD8-4F05-B6E8-03B4-11AD9E39999D";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "rocks:defaultArnoldDriver";
	rename -uid "83E3160D-4127-1592-84A8-52988A2D9970";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "rocks:defaultArnoldDisplayDriver";
	rename -uid "77F671C6-48FC-E8CC-0D7F-47A018FC360F";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "rocks:uiConfigurationScriptNode";
	rename -uid "E94E7DB6-4C49-1021-E116-4BAB9E457DFE";
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
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"rocks:defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "rocks:sceneConfigurationScriptNode";
	rename -uid "8158B049-4EAC-37EC-895F-47BC99B5B411";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode reference -n "rocks:uv_isle2RN";
	rename -uid "4A97AD82-4878-9FD6-4C2D-26B3654F352C";
	setAttr ".ed" -type "dataReferenceEdits" 
		"rocks:uv_isle2RN"
		"uv_isle2RN" 4
		0 "|uv_isle2:Mesh" "|Island_Base" "-s -r "
		2 "|Island_Base|uv_isle2:Mesh" "visibility" " 1"
		2 "|Island_Base|uv_isle2:Mesh" "scale" " -type \"double3\" 1 1 1"
		2 "|Island_Base|uv_isle2:Mesh|uv_isle2:MeshShape" "uvPivot" " -type \"double2\" 0.35638293623924255 0.46015527844429016";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "rocks:sharedReferenceNode";
	rename -uid "CD8C7562-4A05-EAAB-4C9C-6180E9DE6CAC";
	setAttr ".ed" -type "dataReferenceEdits" 
		"rocks:sharedReferenceNode";
createNode place2dTexture -n "rocks:place2dTexture1";
	rename -uid "DB7F2A54-41F6-28D0-A04C-B4A31D1E70F4";
createNode file -n "rocks:file1";
	rename -uid "6B0D43E0-4DC7-2FB0-E19F-6BA3571E70EF";
	setAttr ".ftn" -type "string" "C:/Users/Melia/Desktop/Fox_FX/Models/Palm_Tree/Textures/Maya_Hero_PalmTree_Final_Leaves_BaseColor.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "rocks:file2";
	rename -uid "3DD1EFB3-4F78-F3AD-C2BC-DF8247256777";
	setAttr ".ftn" -type "string" "C:/Users/Melia/Desktop/Fox_FX/Models/Palm_Tree/Textures/Maya_Hero_PalmTree_Final_Leaves_Emissive.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "rocks:file3";
	rename -uid "81809CB8-4D38-D740-5741-188B3D358A47";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".ftn" -type "string" "C:/Users/Melia/Desktop/Fox_FX/Models/Palm_Tree/Textures/Maya_Hero_PalmTree_Final_Leaves_Height.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "rocks:file4";
	rename -uid "804A2664-4784-12E1-9A86-F682EAAE2E88";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Melia/Desktop/Fox_FX/Models/Palm_Tree/Textures/Maya_Hero_PalmTree_Final_Leaves_Metallic.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "rocks:file5";
	rename -uid "0E744BE3-4E2C-0FC4-240F-FB96514A6469";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Melia/Desktop/Fox_FX/Models/Palm_Tree/Textures/Maya_Hero_PalmTree_Final_Leaves_Normal.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "rocks:file6";
	rename -uid "28829679-4458-E644-1197-84AD51217F57";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/Melia/Desktop/Fox_FX/Models/Palm_Tree/Textures/Maya_Hero_PalmTree_Final_Leaves_Roughness.png";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "rocks:multiplyDivide1";
	rename -uid "27A0594D-4989-FFED-3FC6-8181DCB61F38";
createNode shadingEngine -n "rocks:set1";
	rename -uid "D7B2DF6A-48F4-4BE0-3E85-F8B4530FA191";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "rocks:materialInfo1";
	rename -uid "DBCDC3D3-45EE-AD59-36FD-94A17DBCC3CB";
createNode bump2d -n "rocks:bump2d1";
	rename -uid "72D0DFC9-4358-2C6C-4A47-5080364828E8";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode nodeGraphEditorInfo -n "rocks:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "66D21D6F-479A-D103-D27B-8CAF685CF9C4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323967 38.02264657273944 ;
	setAttr ".tgi[0].vh" -type "double2" 1013.1532698454359 377.60838607920164 ;
	setAttr -s 2 ".tgi[0].ni";
createNode reference -n "rocks:islandRN";
	rename -uid "A649F23D-4AE7-AF4D-1E7A-2EA6F6A4CB8C";
	setAttr ".fn[0]" -type "string" "C:/Users/redpa/OneDrive/Documents/git/Fox_FX/Maya_Scenes/Models/Island/island.obj";
	setAttr ".ed" -type "dataReferenceEdits" 
		"rocks:islandRN"
		"islandRN" 4
		2 "|rocks:Mesh" "translate" " -type \"double3\" 0 0 0"
		2 "|island:Mesh" "visibility" " 1"
		2 "|island:Mesh" "scale" " -type \"double3\" 1 1 1"
		2 "|island:Mesh|island:MeshShape" "uvPivot" " -type \"double2\" 0 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "rocks:rocksRN";
	rename -uid "DF942EF1-4345-2A1A-09A2-F0A3B6C8131E";
	setAttr -s 4 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"rocks:rocksRN"
		"rocksRN" 8
		2 "|rocks:Mesh|rocks:MeshShape" "instObjGroups.objectGroups" " -s 11"
		2 "|rocks:Mesh|rocks:MeshShape" "instObjGroups.objectGroups[9].objectGrpCompList" 
		" -type \"componentList\" 16 \"f[1498:4137]\" \"f[5636:8275]\" \"f[9774:11271]\" \"f[24832:27471]\" \"f[32140:42973]\" \"f[56004:57501]\" \"f[76784:85675]\" \"f[101346:102843]\" \"f[121154:123793]\" \"f[125292:126789]\" \"f[153380:156019]\" \"f[158660:161299]\" \"f[167466:170105]\" \"f[196696:205587]\" \"f[207086:215977]\" \"f[229538:231035]\""
		
		2 "|rocks:Mesh|rocks:MeshShape" "instObjGroups.objectGroups[10].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[167466:170105]\""
		2 "|rocks:Mesh|rocks:MeshShape" "uvPivot" " -type \"double2\" 0.49217259883880615 0.49132850766181946"
		
		5 3 "rocks:rocksRN" "|rocks:Mesh|rocks:MeshShape.instObjGroups.objectGroups[9]" 
		"rocks:rocksRN.placeHolderList[1]" ""
		5 4 "rocks:rocksRN" "|rocks:Mesh|rocks:MeshShape.instObjGroups.objectGroups[9].objectGroupId" 
		"rocks:rocksRN.placeHolderList[2]" ""
		5 4 "rocks:rocksRN" "|rocks:Mesh|rocks:MeshShape.instObjGroups.objectGroups[9].objectGrpColor" 
		"rocks:rocksRN.placeHolderList[3]" ""
		5 4 "rocks:rocksRN" "|rocks:Mesh|rocks:MeshShape.instObjGroups.objectGroups[10].objectGroupId" 
		"rocks:rocksRN.placeHolderList[4]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode objectSet -n "rocks:MeshShapeHiddenFacesSet";
	rename -uid "A2D01A0F-4C5D-26A8-8F05-4AB123E1882F";
	setAttr ".ihi" 0;
createNode groupId -n "rocks:groupId10";
	rename -uid "A3C3EB0D-4381-8CD7-648A-36B69C5A254A";
	setAttr ".ihi" 0;
createNode groupId -n "rocks:groupId11";
	rename -uid "4D8E0697-4780-3A2F-5753-E3A1DB71FC18";
	setAttr ".ihi" 0;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "AE864156-466B-BEF2-EF68-4EB248055F74";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "E93F7067-47A1-43D9-1DB7-DCBFED04D655";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A831D3EA-4842-E0C4-7897-BCB980B00F92";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "B27A66ED-4295-AF5F-3A7B-F3BC841778E9";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "4A00DF7E-47EE-0229-4A5A-B6BE4E99967A";
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
createNode reference -n "Main_SceneRN";
	rename -uid "C5B3474A-401D-4FB1-0F80-3CA15A39DDD1";
	setAttr ".phl[1]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Main_SceneRN"
		"Main_Scene:IslandTest2RN" 0
		"Main_SceneRN" 0
		"Main_Scene:Hermit_Crab_Rig_NewRN" 0
		"Main_Scene:Palm_TreeRN" 0
		"Main_Scene:FlagRN" 0
		"Main_Scene:IslandTest2RN" 1
		5 3 "Main_SceneRN" "|Main_Scene:IslandTest2:island:Mesh|Main_Scene:IslandTest2:island:MeshShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[1]" ""
		"Main_Scene:Hermit_Crab_Rig_NewRN" 6
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl" 
		"translate" " -type \"double3\" 20.68053055691053643 14.08725053864478483 6.09793687957633423"
		
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl" 
		"rotate" " -type \"double3\" 2.59850234781942424 -16.99525227115302783 -18.62494812230304575"
		
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl" 
		"rotate" " -type \"double3\" -0.67692302454043585 -4.01581932930801866 9.57619755348515511"
		
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -12.83203371027273398";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode lambert -n "lambert1";
	rename -uid "BEF7210F-4B38-EB4C-BF47-B1A247847AA0";
createNode shadingEngine -n "lambert1SG";
	rename -uid "3EF66EBA-4DD0-E1DE-52EA-FCBA3591422D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "0D6B3E37-4F84-30A3-71D4-D48429BF50EB";
select -ne :rocks:time1;
	setAttr ".o" 11;
	setAttr ".unw" 11;
select -ne :rocks:hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :rocks:renderPartition;
	setAttr -s 4 ".st";
select -ne :rocks:renderGlobalsList1;
select -ne :rocks:defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :rocks:postProcessList1;
	setAttr -s 2 ".p";
select -ne :rocks:defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :rocks:defaultRenderingList1;
select -ne :rocks:defaultTextureList1;
	setAttr -s 6 ".tx";
select -ne :rocks:initialShadingGroup;
	setAttr ".ro" yes;
select -ne :rocks:initialParticleSE;
	setAttr ".ro" yes;
select -ne :rocks:defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "rocks:lambert1";
select -ne :rocks:defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :rocks:defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "C:/Program Files/Autodesk/Maya2023/resources/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :rocks:hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :rocks:defaultHideFaceDataSet;
select -ne :rocks:ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Main_SceneRN.phl[1]" "lambert1SG.dsm" -na;
relationship "link" ":rocks:lightLinker1" ":rocks:initialShadingGroup.message" ":rocks:defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" ":rocks:initialParticleSE.message" ":rocks:defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" "rocks:set1.message" ":rocks:defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" "lambert1SG.message" ":rocks:defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" ":rocks:initialShadingGroup.message" ":rocks:defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" ":rocks:initialParticleSE.message" ":rocks:defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" "rocks:set1.message" ":rocks:defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" "lambert1SG.message" ":rocks:defaultLightSet.message";
connectAttr "rocks:defaultRedshiftPostEffects.msg" ":rocks:redshiftOptions.postEffects"
		;
connectAttr "rocks:layerManager.dli[0]" "rocks:defaultLayer.id";
connectAttr "rocks:renderLayerManager.rlmi[0]" "rocks:defaultRenderLayer.rlid";
connectAttr ":rocks:defaultArnoldDisplayDriver.msg" ":rocks:defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":rocks:defaultArnoldFilter.msg" ":rocks:defaultArnoldRenderOptions.filt"
		;
connectAttr ":rocks:defaultArnoldDriver.msg" ":rocks:defaultArnoldRenderOptions.drvr"
		;
connectAttr ":rocks:defaultColorMgtGlobals.cme" "rocks:file1.cme";
connectAttr ":rocks:defaultColorMgtGlobals.cfe" "rocks:file1.cmcf";
connectAttr ":rocks:defaultColorMgtGlobals.cfp" "rocks:file1.cmcp";
connectAttr ":rocks:defaultColorMgtGlobals.wsn" "rocks:file1.ws";
connectAttr "rocks:place2dTexture1.o" "rocks:file1.uv";
connectAttr "rocks:place2dTexture1.ofs" "rocks:file1.fs";
connectAttr "rocks:place2dTexture1.c" "rocks:file1.c";
connectAttr "rocks:place2dTexture1.tf" "rocks:file1.tf";
connectAttr "rocks:place2dTexture1.rf" "rocks:file1.rf";
connectAttr "rocks:place2dTexture1.mu" "rocks:file1.mu";
connectAttr "rocks:place2dTexture1.mv" "rocks:file1.mv";
connectAttr "rocks:place2dTexture1.s" "rocks:file1.s";
connectAttr "rocks:place2dTexture1.wu" "rocks:file1.wu";
connectAttr "rocks:place2dTexture1.wv" "rocks:file1.wv";
connectAttr "rocks:place2dTexture1.re" "rocks:file1.re";
connectAttr "rocks:place2dTexture1.of" "rocks:file1.of";
connectAttr "rocks:place2dTexture1.r" "rocks:file1.ro";
connectAttr "rocks:place2dTexture1.n" "rocks:file1.n";
connectAttr "rocks:place2dTexture1.vt1" "rocks:file1.vt1";
connectAttr "rocks:place2dTexture1.vt2" "rocks:file1.vt2";
connectAttr "rocks:place2dTexture1.vt3" "rocks:file1.vt3";
connectAttr "rocks:place2dTexture1.vc1" "rocks:file1.vc1";
connectAttr ":rocks:defaultColorMgtGlobals.cme" "rocks:file2.cme";
connectAttr ":rocks:defaultColorMgtGlobals.cfe" "rocks:file2.cmcf";
connectAttr ":rocks:defaultColorMgtGlobals.cfp" "rocks:file2.cmcp";
connectAttr ":rocks:defaultColorMgtGlobals.wsn" "rocks:file2.ws";
connectAttr "rocks:place2dTexture1.o" "rocks:file2.uv";
connectAttr "rocks:place2dTexture1.ofs" "rocks:file2.fs";
connectAttr "rocks:place2dTexture1.c" "rocks:file2.c";
connectAttr "rocks:place2dTexture1.tf" "rocks:file2.tf";
connectAttr "rocks:place2dTexture1.rf" "rocks:file2.rf";
connectAttr "rocks:place2dTexture1.mu" "rocks:file2.mu";
connectAttr "rocks:place2dTexture1.mv" "rocks:file2.mv";
connectAttr "rocks:place2dTexture1.s" "rocks:file2.s";
connectAttr "rocks:place2dTexture1.wu" "rocks:file2.wu";
connectAttr "rocks:place2dTexture1.wv" "rocks:file2.wv";
connectAttr "rocks:place2dTexture1.re" "rocks:file2.re";
connectAttr "rocks:place2dTexture1.of" "rocks:file2.of";
connectAttr "rocks:place2dTexture1.r" "rocks:file2.ro";
connectAttr "rocks:place2dTexture1.n" "rocks:file2.n";
connectAttr "rocks:place2dTexture1.vt1" "rocks:file2.vt1";
connectAttr "rocks:place2dTexture1.vt2" "rocks:file2.vt2";
connectAttr "rocks:place2dTexture1.vt3" "rocks:file2.vt3";
connectAttr "rocks:place2dTexture1.vc1" "rocks:file2.vc1";
connectAttr ":rocks:defaultColorMgtGlobals.cme" "rocks:file3.cme";
connectAttr ":rocks:defaultColorMgtGlobals.cfe" "rocks:file3.cmcf";
connectAttr ":rocks:defaultColorMgtGlobals.cfp" "rocks:file3.cmcp";
connectAttr ":rocks:defaultColorMgtGlobals.wsn" "rocks:file3.ws";
connectAttr "rocks:place2dTexture1.o" "rocks:file3.uv";
connectAttr "rocks:place2dTexture1.ofs" "rocks:file3.fs";
connectAttr "rocks:place2dTexture1.c" "rocks:file3.c";
connectAttr "rocks:place2dTexture1.tf" "rocks:file3.tf";
connectAttr "rocks:place2dTexture1.rf" "rocks:file3.rf";
connectAttr "rocks:place2dTexture1.mu" "rocks:file3.mu";
connectAttr "rocks:place2dTexture1.mv" "rocks:file3.mv";
connectAttr "rocks:place2dTexture1.s" "rocks:file3.s";
connectAttr "rocks:place2dTexture1.wu" "rocks:file3.wu";
connectAttr "rocks:place2dTexture1.wv" "rocks:file3.wv";
connectAttr "rocks:place2dTexture1.re" "rocks:file3.re";
connectAttr "rocks:place2dTexture1.of" "rocks:file3.of";
connectAttr "rocks:place2dTexture1.r" "rocks:file3.ro";
connectAttr "rocks:place2dTexture1.n" "rocks:file3.n";
connectAttr "rocks:place2dTexture1.vt1" "rocks:file3.vt1";
connectAttr "rocks:place2dTexture1.vt2" "rocks:file3.vt2";
connectAttr "rocks:place2dTexture1.vt3" "rocks:file3.vt3";
connectAttr "rocks:place2dTexture1.vc1" "rocks:file3.vc1";
connectAttr ":rocks:defaultColorMgtGlobals.cme" "rocks:file4.cme";
connectAttr ":rocks:defaultColorMgtGlobals.cfe" "rocks:file4.cmcf";
connectAttr ":rocks:defaultColorMgtGlobals.cfp" "rocks:file4.cmcp";
connectAttr ":rocks:defaultColorMgtGlobals.wsn" "rocks:file4.ws";
connectAttr "rocks:place2dTexture1.o" "rocks:file4.uv";
connectAttr "rocks:place2dTexture1.ofs" "rocks:file4.fs";
connectAttr "rocks:place2dTexture1.c" "rocks:file4.c";
connectAttr "rocks:place2dTexture1.tf" "rocks:file4.tf";
connectAttr "rocks:place2dTexture1.rf" "rocks:file4.rf";
connectAttr "rocks:place2dTexture1.mu" "rocks:file4.mu";
connectAttr "rocks:place2dTexture1.mv" "rocks:file4.mv";
connectAttr "rocks:place2dTexture1.s" "rocks:file4.s";
connectAttr "rocks:place2dTexture1.wu" "rocks:file4.wu";
connectAttr "rocks:place2dTexture1.wv" "rocks:file4.wv";
connectAttr "rocks:place2dTexture1.re" "rocks:file4.re";
connectAttr "rocks:place2dTexture1.of" "rocks:file4.of";
connectAttr "rocks:place2dTexture1.r" "rocks:file4.ro";
connectAttr "rocks:place2dTexture1.n" "rocks:file4.n";
connectAttr "rocks:place2dTexture1.vt1" "rocks:file4.vt1";
connectAttr "rocks:place2dTexture1.vt2" "rocks:file4.vt2";
connectAttr "rocks:place2dTexture1.vt3" "rocks:file4.vt3";
connectAttr "rocks:place2dTexture1.vc1" "rocks:file4.vc1";
connectAttr ":rocks:defaultColorMgtGlobals.cme" "rocks:file5.cme";
connectAttr ":rocks:defaultColorMgtGlobals.cfe" "rocks:file5.cmcf";
connectAttr ":rocks:defaultColorMgtGlobals.cfp" "rocks:file5.cmcp";
connectAttr ":rocks:defaultColorMgtGlobals.wsn" "rocks:file5.ws";
connectAttr "rocks:place2dTexture1.o" "rocks:file5.uv";
connectAttr "rocks:place2dTexture1.ofs" "rocks:file5.fs";
connectAttr "rocks:place2dTexture1.c" "rocks:file5.c";
connectAttr "rocks:place2dTexture1.tf" "rocks:file5.tf";
connectAttr "rocks:place2dTexture1.rf" "rocks:file5.rf";
connectAttr "rocks:place2dTexture1.mu" "rocks:file5.mu";
connectAttr "rocks:place2dTexture1.mv" "rocks:file5.mv";
connectAttr "rocks:place2dTexture1.s" "rocks:file5.s";
connectAttr "rocks:place2dTexture1.wu" "rocks:file5.wu";
connectAttr "rocks:place2dTexture1.wv" "rocks:file5.wv";
connectAttr "rocks:place2dTexture1.re" "rocks:file5.re";
connectAttr "rocks:place2dTexture1.of" "rocks:file5.of";
connectAttr "rocks:place2dTexture1.r" "rocks:file5.ro";
connectAttr "rocks:place2dTexture1.n" "rocks:file5.n";
connectAttr "rocks:place2dTexture1.vt1" "rocks:file5.vt1";
connectAttr "rocks:place2dTexture1.vt2" "rocks:file5.vt2";
connectAttr "rocks:place2dTexture1.vt3" "rocks:file5.vt3";
connectAttr "rocks:place2dTexture1.vc1" "rocks:file5.vc1";
connectAttr ":rocks:defaultColorMgtGlobals.cme" "rocks:file6.cme";
connectAttr ":rocks:defaultColorMgtGlobals.cfe" "rocks:file6.cmcf";
connectAttr ":rocks:defaultColorMgtGlobals.cfp" "rocks:file6.cmcp";
connectAttr ":rocks:defaultColorMgtGlobals.wsn" "rocks:file6.ws";
connectAttr "rocks:place2dTexture1.o" "rocks:file6.uv";
connectAttr "rocks:place2dTexture1.ofs" "rocks:file6.fs";
connectAttr "rocks:place2dTexture1.c" "rocks:file6.c";
connectAttr "rocks:place2dTexture1.tf" "rocks:file6.tf";
connectAttr "rocks:place2dTexture1.rf" "rocks:file6.rf";
connectAttr "rocks:place2dTexture1.mu" "rocks:file6.mu";
connectAttr "rocks:place2dTexture1.mv" "rocks:file6.mv";
connectAttr "rocks:place2dTexture1.s" "rocks:file6.s";
connectAttr "rocks:place2dTexture1.wu" "rocks:file6.wu";
connectAttr "rocks:place2dTexture1.wv" "rocks:file6.wv";
connectAttr "rocks:place2dTexture1.re" "rocks:file6.re";
connectAttr "rocks:place2dTexture1.of" "rocks:file6.of";
connectAttr "rocks:place2dTexture1.r" "rocks:file6.ro";
connectAttr "rocks:place2dTexture1.n" "rocks:file6.n";
connectAttr "rocks:place2dTexture1.vt1" "rocks:file6.vt1";
connectAttr "rocks:place2dTexture1.vt2" "rocks:file6.vt2";
connectAttr "rocks:place2dTexture1.vt3" "rocks:file6.vt3";
connectAttr "rocks:place2dTexture1.vc1" "rocks:file6.vc1";
connectAttr "rocks:file1.oc" "rocks:multiplyDivide1.i1";
connectAttr "rocks:set1.msg" "rocks:materialInfo1.sg";
connectAttr "rocks:file5.oa" "rocks:bump2d1.bv";
connectAttr "rocks:sharedReferenceNode.sr" "rocks:islandRN.sr";
connectAttr "rocks:groupId10.id" "rocks:rocksRN.phl[2]";
connectAttr "rocks:MeshShapeHiddenFacesSet.mwc" "rocks:rocksRN.phl[3]";
connectAttr "rocks:groupId11.id" "rocks:rocksRN.phl[4]";
connectAttr "rocks:sharedReferenceNode.sr" "rocks:rocksRN.sr";
connectAttr "rocks:rocksRN.phl[1]" "rocks:MeshShapeHiddenFacesSet.dsm" -na;
connectAttr "rocks:groupId10.msg" "rocks:MeshShapeHiddenFacesSet.gn" -na;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "lambert1.oc" "lambert1SG.ss";
connectAttr "lambert1SG.msg" "materialInfo1.sg";
connectAttr "lambert1.msg" "materialInfo1.m";
connectAttr "rocks:set1.pa" ":rocks:renderPartition.st" -na;
connectAttr "lambert1SG.pa" ":rocks:renderPartition.st" -na;
connectAttr "lambert1.msg" ":rocks:defaultShaderList1.s" -na;
connectAttr "rocks:defaultRedshiftPostEffects.msg" ":rocks:defaultRenderUtilityList1.u"
		 -na;
connectAttr "rocks:place2dTexture1.msg" ":rocks:defaultRenderUtilityList1.u" -na
		;
connectAttr "rocks:multiplyDivide1.msg" ":rocks:defaultRenderUtilityList1.u" -na
		;
connectAttr "rocks:bump2d1.msg" ":rocks:defaultRenderUtilityList1.u" -na;
connectAttr "rocks:defaultRenderLayer.msg" ":rocks:defaultRenderingList1.r" -na;
connectAttr "rocks:file1.msg" ":rocks:defaultTextureList1.tx" -na;
connectAttr "rocks:file2.msg" ":rocks:defaultTextureList1.tx" -na;
connectAttr "rocks:file3.msg" ":rocks:defaultTextureList1.tx" -na;
connectAttr "rocks:file4.msg" ":rocks:defaultTextureList1.tx" -na;
connectAttr "rocks:file5.msg" ":rocks:defaultTextureList1.tx" -na;
connectAttr "rocks:file6.msg" ":rocks:defaultTextureList1.tx" -na;
connectAttr "rocks:MeshShapeHiddenFacesSet.msg" ":rocks:defaultHideFaceDataSet.dnsm"
		 -na;
connectAttr "rocks:groupId11.msg" ":rocks:defaultLastHiddenSet.gn" -na;
// End of Anim_1.ma
