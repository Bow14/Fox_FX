//Maya ASCII 2023 scene
//Name: Anim_1.ma
//Last modified: Tue, Oct 29, 2024 06:56:49 PM
//Codeset: 1252
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
file -r -ns "Main_Scene" -dr 1 -rfn "Main_SceneRN" -op "v=0;" -typ "mayaAscii" "C:/Users/redpa/OneDrive/Documents/git/Fox_FX/Maya_Scenes/Main_Scene.ma";
requires maya "2023";
requires -dataType "ngst2SkinLayerDataStorage" "ngSkinTools2" "2.1.3";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.17";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "89D27BB9-43FB-E8FA-A54D-8A9D878651BA";
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
	setAttr ".t" -type "double3" 48.031857188341242 58.889920992011724 -59.133232757431387 ;
	setAttr ".r" -type "double3" -35.138352730670199 -1302.6000000000206 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "FFFB1DB3-4815-9C09-F2F1-E8A009B01575";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 61.429109123011521;
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
createNode transform -n "WAVE";
	rename -uid "FF6722BE-40A1-CF67-9BF4-4680232D79F9";
createNode mesh -n "WAVEShape" -p "WAVE";
	rename -uid "B1AA24F3-4765-61D1-1962-A688DE79D0C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "rocks:lightLinker1";
	rename -uid "B756EF3A-4406-6470-71C5-27A677954593";
	setAttr -s 17 ".lnk";
	setAttr -s 17 ".slnk";
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
	rename -uid "4481981E-47D5-9967-2070-2B994D199D68";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 3 0 1 2 ;
	setAttr -s 3 ".bspr";
	setAttr -s 3 ".obsv";
createNode poseInterpolatorManager -n "rocks:poseInterpolatorManager";
	rename -uid "549672A2-4FD4-A671-2FC3-D28B89FD4BCC";
createNode displayLayerManager -n "rocks:layerManager";
	rename -uid "86429055-4C73-697D-3EB3-C799C0F21BB7";
createNode displayLayer -n "rocks:defaultLayer";
	rename -uid "70BB9F69-4A73-B45F-A011-0591A599AC2E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "rocks:renderLayerManager";
	rename -uid "6B4C696A-4C4C-1781-D09F-E1A3E9C6A900";
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
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|Main_Scene:camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 515\n            -height 452\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|Main_Scene:camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 452\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|Main_Scene:camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 515\\n    -height 452\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "rocks:sceneConfigurationScriptNode";
	rename -uid "8158B049-4EAC-37EC-895F-47BC99B5B411";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 288 -ast 0 -aet 288 ";
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
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.2.1.1";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=Main_Scene:cameraShape1;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "E93F7067-47A1-43D9-1DB7-DCBFED04D655";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A831D3EA-4842-E0C4-7897-BCB980B00F92";
	setAttr ".ai_translator" -type "string" "exr";
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
	setAttr -s 75 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Main_SceneRN"
		"Main_Scene:IslandTest2RN" 0
		"Main_SceneRN" 18
		2 "|Main_Scene:camera1" "translateX" " 90.83029837920538796"
		2 "|Main_Scene:camera1" "translateY" " 5.87935148775321625"
		2 "|Main_Scene:camera1" "translateZ" " 28.11996203839510855"
		2 "|Main_Scene:camera1" "rotateX" " 9.59966133982435821"
		2 "|Main_Scene:camera1" "rotateY" " 73.20000000000028706"
		2 "|Main_Scene:camera1" "rotateZ" " 0"
		2 "|Main_Scene:camera1" "scaleX" " 0.99999999999999978"
		2 "|Main_Scene:camera1" "scaleY" " 1"
		2 "|Main_Scene:camera1" "scaleZ" " 1"
		2 "|Main_Scene:camera1" "translateX" " 90.83029837920538796"
		2 "|Main_Scene:camera1" "translateY" " 5.87935148775321625"
		2 "|Main_Scene:camera1" "translateZ" " 28.11996203839510855"
		2 "|Main_Scene:camera1" "rotateX" " 9.59966133982435821"
		2 "|Main_Scene:camera1" "rotateY" " 73.20000000000028706"
		2 "|Main_Scene:camera1" "rotateZ" " 0"
		2 "|Main_Scene:camera1" "scaleX" " 0.99999999999999978"
		2 "|Main_Scene:camera1" "scaleY" " 1"
		2 "|Main_Scene:camera1" "scaleZ" " 1"
		"Main_Scene:Hermit_Crab_Rig_NewRN" 0
		"Main_Scene:Palm_TreeRN" 0
		"Main_Scene:FlagRN" 0
		"Main_Scene:IslandTest2RN" 1
		5 3 "Main_SceneRN" "|Main_Scene:IslandTest2:island:Mesh|Main_Scene:IslandTest2:island:MeshShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[65]" ""
		"Main_Scene:Hermit_Crab_Rig_NewRN" 93
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Shell_Ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Legs_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_Jnt_01_Ctrl" 
		"rotate" " -type \"double3\" -0.67692302454043585 -4.01581932930801866 9.57619755348515511"
		
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_05_Ctrl" 
		"rotate" " -type \"double3\" 0 0 -12.83203371027273398"
		2 "Main_Scene:Hermit_Crab_Rig_New:file29" "fileTextureName" " -type \"string\" \"C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Normal_DirectX.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file26" "fileTextureName" " -type \"string\" \"C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Base_color.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file24" "fileTextureName" " -type \"string\" \"C:/Users/Melia/Desktop/Fox_FX/Models/Hermit_crab/Textures/CrabEyes/CrabEyes_Normal_DirectX.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file21" "fileTextureName" " -type \"string\" \"C:/Users/Melia/Desktop/Fox_FX/Models/Hermit_crab/Textures/CrabEyes/CrabEyes_Base_color.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file19" "fileTextureName" " -type \"string\" \"C:/Users/Melia/Desktop/Fox_FX/Models/Hermit_crab/Textures/CrabBody/CrabBody_Normal_DirectX.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file16" "fileTextureName" " -type \"string\" \"C:/Users/Melia/Desktop/Fox_FX/Models/Hermit_crab/Textures/CrabBody/CrabBody_Base_color.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file30" "fileTextureName" " -type \"string\" \"C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Roughness.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file28" "fileTextureName" " -type \"string\" \"C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Metallic.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file25" "fileTextureName" " -type \"string\" \"C:/Users/Melia/Desktop/Fox_FX/Models/Hermit_crab/Textures/CrabEyes/CrabEyes_Roughness.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file23" "fileTextureName" " -type \"string\" \"C:/Users/Melia/Desktop/Fox_FX/Models/Hermit_crab/Textures/CrabEyes/CrabEyes_Metallic.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file20" "fileTextureName" " -type \"string\" \"C:/Users/Melia/Desktop/Fox_FX/Models/Hermit_crab/Textures/CrabBody/CrabBody_Roughness.png\""
		
		2 "Main_Scene:Hermit_Crab_Rig_New:file18" "fileTextureName" " -type \"string\" \"C:/Users/Melia/Desktop/Fox_FX/Models/Hermit_crab/Textures/CrabBody/CrabBody_Metallic.png\""
		
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Stalk|Main_Scene:Hermit_Crab_Rig_New:L_Eye_StalkShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Stalk|Main_Scene:Hermit_Crab_Rig_New:R_Eye_StalkShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_LPShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_LPShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_LPShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_LPShape1.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Claw_LP|Main_Scene:Hermit_Crab_Rig_New:R_Claw_LPShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_LPShape1.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_LPShape1.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Claw_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Claw_LP1Shape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:Body_LP1|Main_Scene:Hermit_Crab_Rig_New:Body_LP1Shape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye|Main_Scene:Hermit_Crab_Rig_New:R_EyeShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:set5.dagSetMembers" "-na"
		3 "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye|Main_Scene:Hermit_Crab_Rig_New:L_EyeShape.instObjGroups" 
		"Main_Scene:Hermit_Crab_Rig_New:set5.dagSetMembers" "-na"
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:Body_LP1|Main_Scene:Hermit_Crab_Rig_New:Body_LP1Shape.instObjGroups" 
		"Main_SceneRN.placeHolderList[1]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Claw_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Claw_LP1Shape.instObjGroups" 
		"Main_SceneRN.placeHolderList[2]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Claw_LP|Main_Scene:Hermit_Crab_Rig_New:R_Claw_LPShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[3]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_01_LPShape1.instObjGroups" 
		"Main_SceneRN.placeHolderList[4]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_02_LPShape1.instObjGroups" 
		"Main_SceneRN.placeHolderList[5]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_LP1|Main_Scene:Hermit_Crab_Rig_New:L_Leg_03_LPShape1.instObjGroups" 
		"Main_SceneRN.placeHolderList[6]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_01_LPShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[7]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_02_LPShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[8]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_LP|Main_Scene:Hermit_Crab_Rig_New:R_Leg_03_LPShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[9]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye|Main_Scene:Hermit_Crab_Rig_New:L_EyeShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[10]" "Main_Scene:Hermit_Crab_Rig_New:set5.dsm"
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Stalk|Main_Scene:Hermit_Crab_Rig_New:L_Eye_StalkShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[11]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Stalk|Main_Scene:Hermit_Crab_Rig_New:R_Eye_StalkShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[12]" "Main_Scene:Hermit_Crab_Rig_New:Crab_Body1SG.dsm"
		
		5 3 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Geo_LP|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye|Main_Scene:Hermit_Crab_Rig_New:R_EyeShape.instObjGroups" 
		"Main_SceneRN.placeHolderList[13]" "Main_Scene:Hermit_Crab_Rig_New:set5.dsm"
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[14]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[15]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[16]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[17]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[18]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[19]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[20]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[21]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[22]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:Transform_Ctrl.visibility" 
		"Main_SceneRN.placeHolderList[23]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[24]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[25]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[26]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[27]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[28]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[29]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[30]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[31]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[32]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Eye_Jnt_01_Ctrl.visibility" 
		"Main_SceneRN.placeHolderList[33]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[34]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[35]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[36]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[37]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[38]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[39]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[40]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[41]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[42]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Eyes_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:R_Eye_Jnt_01_Ctrl.visibility" 
		"Main_SceneRN.placeHolderList[43]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[44]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[45]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[46]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[47]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[48]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[49]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[50]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[51]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[52]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Jnt_Ctrl.visibility" 
		"Main_SceneRN.placeHolderList[53]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.translateX" 
		"Main_SceneRN.placeHolderList[54]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.translateY" 
		"Main_SceneRN.placeHolderList[55]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.translateZ" 
		"Main_SceneRN.placeHolderList[56]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.rotateZ" 
		"Main_SceneRN.placeHolderList[57]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.rotateX" 
		"Main_SceneRN.placeHolderList[58]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.rotateY" 
		"Main_SceneRN.placeHolderList[59]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.scaleX" 
		"Main_SceneRN.placeHolderList[60]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.scaleY" 
		"Main_SceneRN.placeHolderList[61]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.scaleZ" 
		"Main_SceneRN.placeHolderList[62]" ""
		5 4 "Main_SceneRN" "|Main_Scene:Hermit_Crab|Main_Scene:Hermit_Crab_Rig_New:Crab_Asset|Main_Scene:Hermit_Crab_Rig_New:Controls|Main_Scene:Hermit_Crab_Rig_New:Claws_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl_Grp|Main_Scene:Hermit_Crab_Rig_New:L_Claw_Top_Jnt_01_Ctrl.visibility" 
		"Main_SceneRN.placeHolderList[63]" ""
		5 3 "Main_SceneRN" "Main_Scene:Hermit_Crab_Rig_New:Crab_Shell1.message" 
		"Main_SceneRN.placeHolderList[64]" ""
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
		2 "|Main_Scene:camera1|Main_Scene:cameraShape1" "centerOfInterest" " 269.57796802490088339"
		
		2 "|Main_Scene:aiSkyDomeLight1" "translate" " -type \"double3\" 0 0 5.21676162573082003"
		
		2 "|Main_Scene:aiSkyDomeLight1" "rotate" " -type \"double3\" 0 0 0"
		"Main_Scene:FlagRN" 11
		2 "|Main_Scene:Flag:Flag|Main_Scene:Flag:Flag_Banner" "translate" " -type \"double3\" 5.10132307718631495 7.52335131472940333 0"
		
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.translateX" "Main_SceneRN.placeHolderList[66]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.translateZ" "Main_SceneRN.placeHolderList[67]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.translateY" "Main_SceneRN.placeHolderList[68]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.rotateX" "Main_SceneRN.placeHolderList[69]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.rotateY" "Main_SceneRN.placeHolderList[70]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.rotateZ" "Main_SceneRN.placeHolderList[71]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.scaleX" "Main_SceneRN.placeHolderList[72]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.scaleY" "Main_SceneRN.placeHolderList[73]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.scaleZ" "Main_SceneRN.placeHolderList[74]" 
		""
		5 4 "Main_SceneRN" "|Main_Scene:Flag:Flag.visibility" "Main_SceneRN.placeHolderList[75]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode lambert -n "lambert2";
	rename -uid "BEF7210F-4B38-EB4C-BF47-B1A247847AA0";
createNode shadingEngine -n "lambert1SG";
	rename -uid "3EF66EBA-4DD0-E1DE-52EA-FCBA3591422D";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "0D6B3E37-4F84-30A3-71D4-D48429BF50EB";
createNode animCurveTL -n "Transform_Ctrl_translateX";
	rename -uid "E00799F5-468D-87EB-D48A-43A76EB25F5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 20.680530556910536 4.1911770408163269 20.680530556910536
		 5.0294117346938778 20.680530556910536 17.602942346938775 21.925513400800835 33.529413775510207 21.925513400800835
		 37.720591326530609 21.925513400800835 41.07353214285714 21.925513400800835 43.588238265306124 21.925513400800835
		 58.676474319727895 17.901159159600116 67.058828401360543 16.245046303138913 99.750006462585034 16.245046303138913
		 107 16.245046303138913 113 16.245046303138913 128 16.245046303138913 135 16.245046303138913
		 145 16.245046303138913 155 16.245046303138913 159 16.245046303138913 164 16.245046303138913
		 170 16.245046303138913 173 16.245046303138913 176 16.245046303138913 181 16.245046303138913
		 186 18.583558562176012 189 17.444248828406177 196 21.738389828524895 205 26.576635726369968
		 209 26.560733985432819 214 30.220642635194839 218 39.41925327989744 223 46.18200444596782
		 232 50.122216318237214;
createNode animCurveTL -n "Transform_Ctrl_translateY";
	rename -uid "E1CA2FAD-4A2A-83DC-B256-F192848E9CA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 1.6114936780772062 4.1911770408163269 1.84087682291785
		 5.0294117346938778 2.4940377582531972 17.602942346938775 4.2328991155246065 33.529413775510207 5.8841280811488001
		 37.720591326530609 6.1147788311707174 41.07353214285714 6.4120348433305949 43.588238265306124 7.3808066928327456
		 58.676474319727895 11.438207111349914 67.058828401360543 11.955751596759395 99.750006462585034 12.930307646421092
		 107 13.962299168046577 113 13.962299168046577 128 13.962299168046577 135 13.962299168046577
		 145 13.962299168046577 155 13.962299168046577 159 13.962299168046577 164 13.603180186777754
		 170 13.443200510375753 173 13.537705384456412 176 14.614989868531012 181 18.238945276829114
		 186 18.238945276829114 189 18.238945276829114 196 18.238945276829114 205 15.081338972978056
		 209 10.102418276060996 214 7.8117893389447577 218 7.8117893389447577 223 3.8057293237905485
		 232 3.8057293237905485;
createNode animCurveTL -n "Transform_Ctrl_translateZ";
	rename -uid "E7833D8C-45AB-80CF-8C44-9BAD5E021DB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 42.266319498178078 4.1911770408163269 35.549675761699206
		 5.0294117346938778 32.963276180489665 17.602942346938775 29.051764727302629 33.529413775510207 24.265115482788566
		 37.720591326530609 22.852951162966381 41.07353214285714 21.331875618546562 43.588238265306124 18.722840984420046
		 58.676474319727895 15.515344084953004 67.058828401360543 14.529293546396804 99.750006462585034 12.38529199106355
		 107 10.123263371723976 113 10.123263371723976 128 10.305145603639518 135 10.231360470995904
		 145 10.983179643021771 155 10.983179643021771 159 10.983179643021771 164 10.983179643021771
		 170 10.983179643021771 173 10.983179643021771 176 10.983179643021771 181 6.2063842743247246
		 186 -0.56104357074511846 189 -4.8864768717421212 196 -4.8864768717421212 205 -15.43725332866423
		 209 -18.412787591578201 214 -18.412787591578201 218 -18.412787591578201 223 -18.412787591578201
		 232 -50.070841751518287;
createNode animCurveTA -n "Transform_Ctrl_rotateX";
	rename -uid "A646A171-4A44-C20E-6E4F-90BDCF6A8DAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -2.4898272809654176 4.1911770408163269 -2.4898272809654176
		 5.0294117346938778 -17.981038885488392 17.602942346938775 -17.981038885488392 33.529413775510207 -17.981038885488392
		 37.720591326530609 -16.899693592530618 41.07353214285714 -17.981038885488392 43.588238265306124 -17.981038885488392
		 58.676474319727895 -13.656062918302384 67.058828401360543 -17.981038885488392 99.750006462585034 -17.981038885488392
		 107 -10.284868045694529 113 -15.156031871045309 128 -15.156031871045309 135 -15.156031871045309
		 145 -15.156031871045309 155 -10.247371166476578 159 -11.625957421502788 164 -11.158732929638635
		 170 -14.211039461580764 173 -11.798755061771732 176 -9.3864706619627007 181 -2.2194829797120108
		 186 10.354813867967943 189 20.433124045402764 196 30.499233011045792 205 22.988025357714463
		 209 14.874471097299489 214 10.187379835701195 218 -0.2458481517496626 223 -0.2458481517496626
		 232 -0.2458481517496626;
createNode animCurveTA -n "Transform_Ctrl_rotateY";
	rename -uid "9435C534-4EB6-4274-7C1D-6DBEF99720C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -176.41437659797199 4.1911770408163269 -176.41437659797199
		 5.0294117346938778 -174.64008062185374 17.602942346938775 -174.64008062185374 33.529413775510207 -174.64008062185374
		 37.720591326530609 -172.59814119682397 41.07353214285714 -174.64008062185374 43.588238265306124 -174.64008062185374
		 58.676474319727895 -171.5057457977295 67.058828401360543 -174.64008062185374 99.750006462585034 -174.64008062185374
		 107 -174.64008062185374 113 -227.16332794682168 128 -227.16332794682168 135 -227.16332794682168
		 145 -227.16332794682168 155 -182.24628066311936 159 -151.89637782211884 164 -151.40016010489526
		 170 -152.61219787209942 173 -151.8715692215645 176 -151.13094057102956 181 -149.84261380845467
		 186 -151.43850886266029 189 -157.22213385257663 196 -184.55684976560269 205 -201.09171823803081
		 209 -207.29067173212187 214 -209.2295529831718 218 -210.80443878551122 223 -210.80443878551122
		 232 -210.80443878551122;
createNode animCurveTA -n "Transform_Ctrl_rotateZ";
	rename -uid "86275721-4AAB-7304-50D6-A9B66A39A8BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -17.709137146212989 4.1911770408163269 -17.709137146212989
		 5.0294117346938778 -16.019259887953382 17.602942346938775 -16.019259887953382 33.529413775510207 -16.019259887953382
		 37.720591326530609 -19.416921046635711 41.07353214285714 -16.019259887953382 43.588238265306124 -16.019259887953382
		 58.676474319727895 -25.996541894515328 67.058828401360543 -16.019259887953382 99.750006462585034 -16.019259887953382
		 107 -16.019259887953382 113 -28.224656770461703 128 -28.224656770461703 135 -28.224656770461703
		 145 -28.224656770461703 155 -17.396325586794308 159 -11.454604714682073 164 -12.433770241852926
		 170 -7.7293872035705844 173 -11.938649732292383 176 -16.147912261014181 181 -30.636866573938981
		 186 -55.963987714309781 189 -78.946999835826148 196 -131.39781883766736 205 -164.02319148742561
		 209 -183.63327528076647 214 -193.51217505696641 218 -214.1961606306393 223 -214.1961606306393
		 232 -214.1961606306393;
createNode animCurveTU -n "Transform_Ctrl_scaleX";
	rename -uid "51C1E3C4-42F7-8F7A-92A0-E4A43EFC028A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.7513273596373482 4.1911770408163269 0.7513273596373482
		 5.0294117346938778 0.7513273596373482 17.602942346938775 0.7513273596373482 33.529413775510207 0.7513273596373482
		 37.720591326530609 0.7513273596373482 41.07353214285714 0.7513273596373482 43.588238265306124 0.7513273596373482
		 58.676474319727895 0.7513273596373482 67.058828401360543 0.7513273596373482 99.750006462585034 0.7513273596373482
		 107 0.7513273596373482 113 0.7513273596373482 128 0.7513273596373482 135 0.7513273596373482
		 145 0.7513273596373482 155 0.7513273596373482 159 0.7513273596373482 164 0.7513273596373482
		 170 0.7513273596373482 173 0.7513273596373482 176 0.7513273596373482 181 0.7513273596373482
		 186 0.7513273596373482 189 0.7513273596373482 196 0.7513273596373482 205 0.7513273596373482
		 209 0.7513273596373482 214 0.7513273596373482 218 0.7513273596373482 223 0.7513273596373482
		 232 0.7513273596373482;
createNode animCurveTU -n "Transform_Ctrl_scaleY";
	rename -uid "FF206BA1-4E2D-B386-1B14-4A826BC1369E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.7513273596373482 4.1911770408163269 0.7513273596373482
		 5.0294117346938778 0.7513273596373482 17.602942346938775 0.7513273596373482 33.529413775510207 0.7513273596373482
		 37.720591326530609 0.7513273596373482 41.07353214285714 0.7513273596373482 43.588238265306124 0.7513273596373482
		 58.676474319727895 0.7513273596373482 67.058828401360543 0.7513273596373482 99.750006462585034 0.7513273596373482
		 107 0.7513273596373482 113 0.7513273596373482 128 0.7513273596373482 135 0.7513273596373482
		 145 0.7513273596373482 155 0.7513273596373482 159 0.7513273596373482 164 0.7513273596373482
		 170 0.7513273596373482 173 0.7513273596373482 176 0.7513273596373482 181 0.7513273596373482
		 186 0.7513273596373482 189 0.7513273596373482 196 0.7513273596373482 205 0.7513273596373482
		 209 0.7513273596373482 214 0.7513273596373482 218 0.7513273596373482 223 0.7513273596373482
		 232 0.7513273596373482;
createNode animCurveTU -n "Transform_Ctrl_scaleZ";
	rename -uid "A607EE42-44DB-7C6E-CF53-01AB4EAE7A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0.7513273596373482 4.1911770408163269 0.7513273596373482
		 5.0294117346938778 0.7513273596373482 17.602942346938775 0.7513273596373482 33.529413775510207 0.7513273596373482
		 37.720591326530609 0.7513273596373482 41.07353214285714 0.7513273596373482 43.588238265306124 0.7513273596373482
		 58.676474319727895 0.7513273596373482 67.058828401360543 0.7513273596373482 99.750006462585034 0.7513273596373482
		 107 0.7513273596373482 113 0.7513273596373482 128 0.7513273596373482 135 0.7513273596373482
		 145 0.7513273596373482 155 0.7513273596373482 159 0.7513273596373482 164 0.7513273596373482
		 170 0.7513273596373482 173 0.7513273596373482 176 0.7513273596373482 181 0.7513273596373482
		 186 0.7513273596373482 189 0.7513273596373482 196 0.7513273596373482 205 0.7513273596373482
		 209 0.7513273596373482 214 0.7513273596373482 218 0.7513273596373482 223 0.7513273596373482
		 232 0.7513273596373482;
createNode reference -n "_UNKNOWN_REF_NODE_";
	rename -uid "E0CC9943-4EFE-FEDB-702E-7182155E08FE";
	setAttr ".ed" -type "dataReferenceEdits" 
		"_UNKNOWN_REF_NODE_"
		"_UNKNOWN_REF_NODE_" 31
		1 :rocks:defaultRenderGlobals "defaultSurfaceShader" "dss" " -ci 1 -h 1 -dt \"string\""
		
		2 ":rocks:time1" "o" " 0"
		2 ":rocks:hardwareRenderingGlobals" "otfna" " -type \"stringArray\" 22 \"NURBS Curves\" \"NURBS Surfaces\" \"Polygons\" \"Subdiv Surface\" \"Particles\" \"Particle Instance\" \"Fluids\" \"Strokes\" \"Image Planes\" \"UI\" \"Lights\" \"Cameras\" \"Locators\" \"Joints\" \"IK Handles\" \"Deformers\" \"Motion Trails\" \"Components\" \"Hair Systems\" \"Follicles\" \"Misc. UI\" \"Ornaments\""
		
		2 ":rocks:hardwareRenderingGlobals" "otfva" " -type \"Int32Array\" 22 0 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0"
		
		2 ":rocks:hardwareRenderingGlobals" "fprt" " 1"
		2 ":rocks:renderPartition" "st" " -s 4"
		2 ":rocks:defaultShaderList1" "s" " -s 6"
		2 ":rocks:postProcessList1" "p" " -s 2"
		2 ":rocks:defaultRenderUtilityList1" "u" " -s 4"
		2 ":rocks:defaultTextureList1" "tx" " -s 6"
		2 ":rocks:initialShadingGroup" "ro" " 1"
		2 ":rocks:initialParticleSE" "ro" " 1"
		2 ":rocks:defaultRenderGlobals" "ren" " -type \"string\" \"arnold\""
		2 ":rocks:defaultRenderGlobals" "outf" " 51"
		2 ":rocks:defaultRenderGlobals" "imfkey" " -type \"string\" \"exr\""
		2 ":rocks:defaultRenderGlobals" "dss" " -type \"string\" \"rocks:lambert1\""
		
		2 ":rocks:defaultResolution" "w" " 1920"
		2 ":rocks:defaultResolution" "h" " 1080"
		2 ":rocks:defaultResolution" "pa" " 1"
		2 ":rocks:defaultResolution" "dar" " 1.77699995040893555"
		2 ":rocks:defaultColorMgtGlobals" "cfe" " 1"
		2 ":rocks:defaultColorMgtGlobals" "cfp" " -type \"string\" \"C:/Program Files/Autodesk/Maya2023/resources/OCIO-configs/Maya2022-default/config.ocio\""
		
		2 ":rocks:defaultColorMgtGlobals" "vtn" " -type \"string\" \"ACES 1.0 SDR-video (sRGB)\""
		
		2 ":rocks:defaultColorMgtGlobals" "vn" " -type \"string\" \"ACES 1.0 SDR-video\""
		
		2 ":rocks:defaultColorMgtGlobals" "dn" " -type \"string\" \"sRGB\""
		2 ":rocks:defaultColorMgtGlobals" "wsn" " -type \"string\" \"ACEScg\""
		2 ":rocks:defaultColorMgtGlobals" "otn" " -type \"string\" \"ACES 1.0 SDR-video (sRGB)\""
		
		2 ":rocks:defaultColorMgtGlobals" "potn" " -type \"string\" \"ACES 1.0 SDR-video (sRGB)\""
		
		2 ":rocks:hardwareRenderGlobals" "ctrs" " 256"
		2 ":rocks:hardwareRenderGlobals" "btrs" " 512"
		2 ":rocks:ikSystem" "sol" " -s 4";
createNode animCurveTL -n "L_Claw_Jnt_Ctrl_translateX";
	rename -uid "16868456-4A2F-48F8-D5CD-33979E33F942";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 0 111 0 119 0 131 0 143 0 147 0;
createNode animCurveTL -n "L_Claw_Jnt_Ctrl_translateY";
	rename -uid "CC39C80D-47E4-BDA7-B781-5686AA9EF24D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 0 111 0 119 0 131 0 143 0 147 0;
createNode animCurveTL -n "L_Claw_Jnt_Ctrl_translateZ";
	rename -uid "39560631-4713-56F7-6B90-1C88FE00BDB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 0 111 0 119 0 131 0 143 0 147 0;
createNode animCurveTA -n "L_Claw_Jnt_Ctrl_rotateX";
	rename -uid "489E592C-4FAA-3B7D-6259-798E60DEA30D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 5.9540550224196691 111 0 119 11.724221972639361
		 131 73.438920395554234 143 72.987949844674546 147 -2.0442740512811999;
createNode animCurveTA -n "L_Claw_Jnt_Ctrl_rotateY";
	rename -uid "D8648431-49B9-6BBA-0FE9-EEB03ACF2E81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 16.22335201521032 111 17.253832375287757
		 119 12.74831373107288 131 12.7483137310729 143 -12.131619551327001 147 5.6324676759621282;
createNode animCurveTA -n "L_Claw_Jnt_Ctrl_rotateZ";
	rename -uid "F760FF4B-4F4E-6AA6-271C-718757D754D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 20.470617324482838 111 0 119 43.24263696663953
		 131 43.24263696663953 143 -27.819347295632806 147 21.721085184577181;
createNode animCurveTU -n "L_Claw_Jnt_Ctrl_scaleX";
	rename -uid "A8373429-43A9-EC63-A7D8-A5AFA110A54C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 1 111 1 119 1 131 1 143 1 147 1;
createNode animCurveTU -n "L_Claw_Jnt_Ctrl_scaleY";
	rename -uid "6078F928-494A-3CC1-6D2C-22AFB4605FB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 1 111 1 119 1 131 1 143 1 147 1;
createNode animCurveTU -n "L_Claw_Jnt_Ctrl_scaleZ";
	rename -uid "A601332D-420A-15EE-8E40-E0A56D909E91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  105 1 111 1 119 1 131 1 143 1 147 1;
createNode animCurveTL -n "Flag_translateX";
	rename -uid "E897B244-4631-B902-9A77-5F8DC3949634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 15.033785270426508 102 15.033785270426508
		 105 15.02826000050981 111 16.255720677402884 116 16.837411303538957 121 16.968800705002238
		 131 16.968800705002238 143 16.968800705002238 183 16.968800705002238 187 21.356694768911311
		 194 22.874774624034579 204 22.874774624034579 211 22.874774624034579 217 29.541621361919887;
createNode animCurveTL -n "Flag_translateY";
	rename -uid "FD9B1959-4ABC-E6A0-99C7-F8964680C49D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 16.06755024364795 102 16.181593294529637
		 105 17.026076638056843 111 16.750450846834816 116 16.943712995000329 121 17.212339355881912
		 131 17.212339355881912 143 15.776469838173249 183 16.81297480595731 187 16.81297480595731
		 194 16.81297480595731 204 16.81297480595731 211 9.023167013678302 217 9.023167013678302;
createNode animCurveTL -n "Flag_translateZ";
	rename -uid "EEC4FBEE-43D0-D4CE-951E-22AC3C8004ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 10.994213473398293 102 10.746766123792895
		 105 9.438243233239918 111 8.2061253568697445 116 7.7380452817220693 121 8.0047644096321164
		 131 8.0047644096321164 143 8.0047644096321164 183 8.0047644096321164 187 -6.1340336181440982
		 194 -6.1340336181440982 204 -23.31675184447834 211 -23.31675184447834 217 -28.723368554603898;
createNode animCurveTA -n "Flag_rotateX";
	rename -uid "97F41A58-413D-8703-70C9-F2A3500E1F3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 50.057775048153914 102 31.612711224983013
		 105 60.822062060227537 111 156.33578640734078 116 189.36969305922656 121 239.40117926553629
		 131 284.82560156057338 143 284.82560156057338 183 284.82560156057338 187 346.81164113930208
		 194 391.54835684479281 204 391.54835684479281 211 391.54835684479281 217 391.54835684479281;
createNode animCurveTA -n "Flag_rotateY";
	rename -uid "830A8F1F-4154-DD36-CDA9-1095A448DFAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 -41.682818567220878 102 -48.99261169733478
		 105 20.794407964126474 111 72.604617807659537 116 74.372989729761215 121 80.984464074363174
		 131 80.984464074363217 143 80.984464074363217 183 80.984464074363217 187 80.984464074363245
		 194 79.082582527770228 204 79.082582527770228 211 79.082582527770228 217 79.082582527770228;
createNode animCurveTA -n "Flag_rotateZ";
	rename -uid "317E50F2-4273-3B60-EF2B-BE9B43CF4A7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 56.445582320929248 102 75.861959780354937
		 105 99.231657239372112 111 230.52955587736773 116 263.40983873819846 121 296.72871411824838
		 131 296.72871411824758 143 296.72871411824758 183 296.72871411824758 187 296.72871411824599
		 194 273.24028570452458 204 273.24028570452458 211 273.24028570452458 217 273.24028570452458;
createNode animCurveTU -n "Flag_scaleX";
	rename -uid "227D7BE4-4F88-E485-CE55-BB99EBB33E82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 0.61933391864899945 102 0.61933391864899945
		 105 0.61933391864899945 111 0.61933391864899945 116 0.61933391864899945 121 0.61933391864899945
		 131 0.61933391864899945 143 0.61933391864899945 183 0.61933391864899945 187 0.61933391864899945
		 194 0.61933391864899945 204 0.61933391864899945 211 0.61933391864899945 217 0.61933391864899945;
createNode animCurveTU -n "Flag_scaleY";
	rename -uid "4C85B8C5-45AB-5F66-83CA-9F82F5E088E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 0.61933391864899945 102 0.61933391864899945
		 105 0.61933391864899945 111 0.61933391864899945 116 0.61933391864899945 121 0.61933391864899945
		 131 0.61933391864899945 143 0.61933391864899945 183 0.61933391864899945 187 0.61933391864899945
		 194 0.61933391864899945 204 0.61933391864899945 211 0.61933391864899945 217 0.61933391864899945;
createNode animCurveTU -n "Flag_scaleZ";
	rename -uid "3F7C7064-46B9-6000-083E-9AA0FFAE48E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  101 0.61933391864899945 102 0.61933391864899945
		 105 0.61933391864899945 111 0.61933391864899945 116 0.61933391864899945 121 0.61933391864899945
		 131 0.61933391864899945 143 0.61933391864899945 183 0.61933391864899945 187 0.61933391864899945
		 194 0.61933391864899945 204 0.61933391864899945 211 0.61933391864899945 217 0.61933391864899945;
createNode animCurveTU -n "Flag_visibility";
	rename -uid "4CAD62D4-42EC-464E-10B3-1BA80D5FEFAC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  25 0 101 1 102 1 105 1 111 1 116 1 121 1
		 131 1 143 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTU -n "L_Claw_Jnt_Ctrl_visibility";
	rename -uid "7E8DF408-4874-A4B6-1571-87A87684C19A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  105 1 119 1 131 1 143 1 147 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "L_Claw_Top_Jnt_01_Ctrl_translateX";
	rename -uid "E834E08A-4E42-5287-5F71-768429B1CB25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 0 119 0 129 0 147 0;
createNode animCurveTL -n "L_Claw_Top_Jnt_01_Ctrl_translateY";
	rename -uid "D5F9F8C9-46F7-E243-CF79-4E92EA9732AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 0 119 0 129 0 147 0;
createNode animCurveTL -n "L_Claw_Top_Jnt_01_Ctrl_translateZ";
	rename -uid "850D3683-4E9D-B45C-2886-C19808F4ED5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 0 119 0 129 0 147 0;
createNode animCurveTA -n "L_Claw_Top_Jnt_01_Ctrl_rotateX";
	rename -uid "927AAFEC-4121-EDF0-E6E1-00BA0D230681";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 0 119 0 129 0 147 0;
createNode animCurveTA -n "L_Claw_Top_Jnt_01_Ctrl_rotateY";
	rename -uid "0C485E9A-4A3C-255D-FC97-2580DFB63F9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 0 119 0 129 0 147 0;
createNode animCurveTA -n "L_Claw_Top_Jnt_01_Ctrl_rotateZ";
	rename -uid "B79B46AB-440A-DDFD-26C2-99BD961D9F0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 15.373094427868924 119 -11.115260303181923
		 129 -6.3382776156340057 147 12.800522560319985;
createNode animCurveTU -n "L_Claw_Top_Jnt_01_Ctrl_scaleX";
	rename -uid "8A83E56B-468E-BB54-A186-FD909DC1E622";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 1 119 1 129 1 147 1;
createNode animCurveTU -n "L_Claw_Top_Jnt_01_Ctrl_scaleY";
	rename -uid "FA6A8081-4957-514A-7AC8-05BDC2B59751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 1 119 1 129 1 147 1;
createNode animCurveTU -n "L_Claw_Top_Jnt_01_Ctrl_scaleZ";
	rename -uid "13379CE0-4557-0264-CAAE-9FA4FBA3AAE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 1 119 1 129 1 147 1;
createNode animCurveTU -n "L_Claw_Top_Jnt_01_Ctrl_visibility";
	rename -uid "FB44C927-4640-61DA-7745-2C891D781B65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  24 1 119 1 129 1 147 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "R_Eye_Jnt_01_Ctrl_translateX";
	rename -uid "2861D571-45ED-4CDD-F0E6-53A1FF3FB113";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTL -n "R_Eye_Jnt_01_Ctrl_translateY";
	rename -uid "8F90FDD9-4EE1-C5E8-BBD9-CC97A5943BF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTL -n "R_Eye_Jnt_01_Ctrl_translateZ";
	rename -uid "37325F91-4442-8727-2934-7DACFD83720C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTA -n "R_Eye_Jnt_01_Ctrl_rotateX";
	rename -uid "392E2B22-4A43-679B-9DF9-038B7DE8C242";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTA -n "R_Eye_Jnt_01_Ctrl_rotateY";
	rename -uid "73F362EC-4B29-BA17-B11E-B6BEBD141311";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 4.6259881923191797 130 21.132706975237838;
createNode animCurveTA -n "R_Eye_Jnt_01_Ctrl_rotateZ";
	rename -uid "5C6910C3-405B-7BBA-8FFB-52B7CC6A0130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTU -n "R_Eye_Jnt_01_Ctrl_scaleX";
	rename -uid "F166AF6A-4DE7-C964-9064-77AB72044EAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 1 130 1;
createNode animCurveTU -n "R_Eye_Jnt_01_Ctrl_scaleY";
	rename -uid "42C1A819-4836-8D1D-2356-E982FC6C4EB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 1 130 1;
createNode animCurveTU -n "R_Eye_Jnt_01_Ctrl_scaleZ";
	rename -uid "0B5739B0-4362-CBBB-66E2-A5933EDC5E06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 1 130 1;
createNode animCurveTU -n "R_Eye_Jnt_01_Ctrl_visibility";
	rename -uid "CA1A9C8D-48FD-3BD1-3DE0-FD8CD8E4B3D7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 1 130 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "L_Eye_Jnt_01_Ctrl_translateX";
	rename -uid "29ADDDA6-4BB3-84CF-5503-9A922BE152B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTL -n "L_Eye_Jnt_01_Ctrl_translateY";
	rename -uid "64E1DB3B-4004-2CE2-7DDE-FCA09DE40475";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTL -n "L_Eye_Jnt_01_Ctrl_translateZ";
	rename -uid "E7B2D063-4C91-1A16-540E-099D50DA4D18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTA -n "L_Eye_Jnt_01_Ctrl_rotateX";
	rename -uid "67CA1007-4F84-C37D-6583-8CA7D57EA8A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTA -n "L_Eye_Jnt_01_Ctrl_rotateY";
	rename -uid "6615C187-4815-1E79-C578-F78F69FD04A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 4.5698683790067749 130 10.365124525659457;
createNode animCurveTA -n "L_Eye_Jnt_01_Ctrl_rotateZ";
	rename -uid "CA9F56C2-4DFF-35CB-810E-5FA39607CB58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 0 130 0;
createNode animCurveTU -n "L_Eye_Jnt_01_Ctrl_scaleX";
	rename -uid "A07EB524-4CC3-BA16-1442-6782BAD7168C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 1 130 1;
createNode animCurveTU -n "L_Eye_Jnt_01_Ctrl_scaleY";
	rename -uid "E1387DF6-49C7-F2A5-89C8-C9AA6AD6592D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 1 130 1;
createNode animCurveTU -n "L_Eye_Jnt_01_Ctrl_scaleZ";
	rename -uid "91B1A557-4F77-3AE7-A6BD-FEBE9E8DB619";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 1 130 1;
createNode animCurveTU -n "L_Eye_Jnt_01_Ctrl_visibility";
	rename -uid "F89A7F42-4D8D-FE1D-005C-1DAC0F69CB15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  89 1 130 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "Transform_Ctrl_visibility";
	rename -uid "D59F74F1-42D3-37AD-FE12-288B6356DDFD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  128 1 135 1 145 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode polyCube -n "polyCube1";
	rename -uid "9CCB7467-4C91-6E84-56AF-03B010359118";
	setAttr ".cuv" 4;
createNode animCurveTL -n "pCube1_translateX";
	rename -uid "1E65502D-44D4-B2D5-0FB8-2E9AA401731E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 -75.536739937502048 160 -22.725094326127699
		 167 2.0292306730714884 180 9.7443719251528762 187 17.892252915347314 196 22.800406134086792
		 200 26.414491024053405 205 29.418991074159706 209 30.353464471226779 215 33.951425435510757
		 221 48.988501380730206 230 48.988501380730206 234 48.988501380730206;
createNode animCurveTL -n "pCube1_translateY";
	rename -uid "D3E1C7A6-40A8-8EE4-700C-17AADC1DC889";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 8.3864951210132723 160 8.3864951210132723
		 167 8.3864951210132723 180 8.3864951210132723 187 8.3864951210132723 196 8.3864951210132723
		 200 8.3864951210132723 205 8.3864951210132723 209 8.3864951210132723 215 7.4277254667561614
		 221 3.1014778099004268 230 3.1014778099004268 234 3.1014778099004268;
createNode animCurveTL -n "pCube1_translateZ";
	rename -uid "0305C5D0-4806-3A33-8E61-139775146EF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 0 160 0 167 0 180 0 187 0 196 0 200 0
		 205 0 209 0 215 0 221 0 230 0 234 0;
createNode animCurveTA -n "pCube1_rotateX";
	rename -uid "5D0C086A-4753-5522-DEDC-8D96295EC133";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 0 160 0 167 0 180 0 187 0 196 0 200 0
		 205 0 209 0 215 0 221 0 230 0 234 0;
createNode animCurveTA -n "pCube1_rotateY";
	rename -uid "A11D3878-41F2-5438-3B60-DFB426387BD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 22 160 22 167 22 180 22 187 22 196 22
		 200 22 205 22 209 22 215 22 221 22 230 22 234 22;
createNode animCurveTA -n "pCube1_rotateZ";
	rename -uid "2ECDAC4F-49B0-EAC4-750D-D1AA86BE2814";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 0 160 0 167 0 180 0 187 0 196 0 200 0
		 205 0 209 0 215 0 221 0 230 0 234 0;
createNode animCurveTU -n "pCube1_scaleX";
	rename -uid "AEA46A15-48B8-0ACA-5C9E-80850C4F66EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 0.80137581198432106 160 0.80137581198432106
		 167 0.80137581198432106 180 0.80137581198432106 187 0.80137581198432106 196 0.80137581198432106
		 200 0.80137581198432106 205 0.80137581198432106 209 0.80137581198432106 215 0.80137581198432106
		 221 0.80137581198432106 230 0.80137581198432106 234 0.80137581198432106;
createNode animCurveTU -n "pCube1_scaleY";
	rename -uid "5BB1684D-407E-0AFD-28D8-B1B53609F2DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 19.883146344163862 160 38.011398361763831
		 167 38.011398361763831 180 38.011398361763831 187 38.011398361763831 196 31.030813222464754
		 200 26.337816474930662 205 20.362951605187011 209 14.423675571807513 215 10.528339074361231
		 221 6.7751293855367107 230 3.7974475205132787 234 3.7974475205132787;
createNode animCurveTU -n "pCube1_scaleZ";
	rename -uid "78FD11E7-4B4C-9C78-128E-0E8B843EFE37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 160.50849647149298 160 162.3300402137032
		 167 162.3300402137032 180 162.3300402137032 187 162.3300402137032 196 162.3300402137032
		 200 162.3300402137032 205 162.3300402137032 209 162.3300402137032 215 162.3300402137032
		 221 162.3300402137032 230 162.3300402137032 234 162.3300402137032;
createNode animCurveTU -n "pCube1_visibility";
	rename -uid "D18F087B-4D7F-C797-F04F-F1B9A9DF4F6F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  129 1 160 1 167 1 180 1 187 1 196 1 200 1
		 205 1 209 1 215 1 221 1 230 1 234 0;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode lambert -n "lambert3";
	rename -uid "E720EB78-40D1-B1B7-C712-5484F8DF3190";
	setAttr ".c" -type "float3" 0.048067991 0.39399999 0.39399999 ;
	setAttr ".it" -type "float3" 0.61904764 0.61904764 0.61904764 ;
	setAttr ".tc" 0.1964285671710968;
createNode shadingEngine -n "lambert3SG";
	rename -uid "7208A356-4762-D0E6-DE9B-7E9D1164FE90";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "1B8D58ED-4CA8-F427-8D42-6AA06BEF415B";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "50620B84-441D-9E0C-BED0-F589A0FE0067";
createNode file -n "file1";
	rename -uid "45F49CBE-4E5C-2003-0F90-269231D4FFEA";
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabBody/CrabBody_Base_color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file2";
	rename -uid "47E7750E-4468-15EF-580A-1C9BEDC5BE38";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabBody/CrabBody_Height.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file3";
	rename -uid "B77DA129-46A4-0163-8FE2-7385CEB4617E";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabBody/CrabBody_Metallic.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file4";
	rename -uid "16063AFC-4DB7-11A7-6146-FDABD306B5F5";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabBody/CrabBody_Normal_DirectX.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file5";
	rename -uid "A795B37C-4DCA-E2E0-7FE6-608FC31A73DE";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabBody/CrabBody_Roughness.png";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "75DF7722-4939-6D63-55A7-6999014B2CB0";
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "E750A740-44B7-5968-8331-60A7CA6EA1F3";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set1";
	rename -uid "898133BE-45DE-2C24-515B-EFB37CC0E389";
	setAttr ".ihi" 0;
	setAttr -s 11 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "22D25F95-473D-824B-4F86-8BA64E0BC37D";
createNode displacementShader -n "displacementShader1";
	rename -uid "E20B1B38-4D4A-10A9-C707-5A9F05435423";
createNode bump2d -n "bump2d1";
	rename -uid "9D48C39B-4699-F10A-7AC7-6B89692E7517";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode place2dTexture -n "place2dTexture2";
	rename -uid "84AE4F0D-4767-ABF0-D65F-27A53B81D6AA";
createNode file -n "file6";
	rename -uid "F5B911FD-4E4E-8152-8CC7-F986A3515895";
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabEyes/CrabEyes_Base_color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file7";
	rename -uid "099F8B54-4A69-F975-5DB5-0F927D634906";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabEyes/CrabEyes_Height.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file8";
	rename -uid "2E1DEC1F-4A76-A6C3-424A-B3BEF402FDAC";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabEyes/CrabEyes_Metallic.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file9";
	rename -uid "4378E653-4D9E-ABE7-DF7C-4B845F999285";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabEyes/CrabEyes_Normal_DirectX.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file10";
	rename -uid "4B45F0EF-4E83-3636-871E-E4B8688129A1";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabEyes/CrabEyes_Roughness.png";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "BB2E875F-497F-4368-8BDE-318B388925E9";
createNode aiStandardSurface -n "aiStandardSurface2";
	rename -uid "931E59CE-4FEE-DFC4-8249-DC86D6306836";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set2";
	rename -uid "39FC9A9C-4D0C-3D1A-A184-59843AF8B093";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "DFACD767-49A1-87A7-2C28-DF92D173D31C";
createNode displacementShader -n "displacementShader2";
	rename -uid "78BCC31E-411D-2990-5E87-A9B81A5BD791";
createNode bump2d -n "bump2d2";
	rename -uid "DC1F8001-459A-56CF-FF68-22B9AD1DF6A0";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode place2dTexture -n "place2dTexture3";
	rename -uid "8AF25D1A-4834-481C-D5A4-67A68AA87C2D";
createNode file -n "file11";
	rename -uid "E5F75F98-442A-2001-2F98-B380441308A0";
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Base_color.png";
	setAttr ".cs" -type "string" "sRGB";
createNode file -n "file12";
	rename -uid "82684CC5-43B9-E6E3-364D-B68BB50B5E7C";
	setAttr ".ail" yes;
	setAttr ".ao" -0.5;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Height.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file13";
	rename -uid "559784DA-46EE-A7A5-661B-1AAD890B8CCE";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Metallic.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file14";
	rename -uid "ED0BB4A9-41C4-24AA-ECA3-6CA9460865E3";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Normal_DirectX.png";
	setAttr ".cs" -type "string" "Raw";
createNode file -n "file15";
	rename -uid "C4A08660-4826-F43F-61CC-A1941F59B86A";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/redpa/Downloads/Crab_Textures_2/Crab_Textures_2/CrabShell/CrabShell_Roughness.png";
	setAttr ".cs" -type "string" "Raw";
createNode multiplyDivide -n "multiplyDivide3";
	rename -uid "E4745094-4F64-FEFF-4DE7-658C1E110A82";
createNode aiStandardSurface -n "aiStandardSurface3";
	rename -uid "132FA176-4CC9-D37C-5DC3-06895F63726D";
	setAttr ".emission" 1;
	setAttr ".emission_color" -type "float3" 0 0 0 ;
createNode shadingEngine -n "set3";
	rename -uid "DEC255F8-4B3B-5E3A-CC1B-23B75DEA7B45";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "21696648-46C4-4486-EBE1-F1B109647DDE";
createNode displacementShader -n "displacementShader3";
	rename -uid "34789AC9-4A07-890E-4A22-37A9918DD34D";
createNode bump2d -n "bump2d3";
	rename -uid "BDE617DA-4FBB-ED18-0E1B-48BBA1679D6B";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 9.9999997e-06 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-06 9.9999997e-06 0 ;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "9143BF80-47B1-6C19-6D89-8B9D68A05852";
	setAttr -s 2 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -2231.1994889441862 -1505.7630108461919 ;
	setAttr ".tgi[0].vh" -type "double2" 1964.3005793818008 777.18164912573332 ;
	setAttr -s 33 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -620;
	setAttr ".tgi[0].ni[0].y" 87.142860412597656;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -312.85714721679688;
	setAttr ".tgi[0].ni[1].y" 288.57144165039062;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 14.285714149475098;
	setAttr ".tgi[0].ni[2].y" 431.42855834960938;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 14.285714149475098;
	setAttr ".tgi[0].ni[3].y" 80;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 670;
	setAttr ".tgi[0].ni[4].y" 344.28570556640625;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 321.42855834960938;
	setAttr ".tgi[0].ni[5].y" 234.28572082519531;
	setAttr ".tgi[0].ni[5].nvs" 2387;
	setAttr ".tgi[0].ni[6].x" 321.42855834960938;
	setAttr ".tgi[0].ni[6].y" 410;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 14.285714149475098;
	setAttr ".tgi[0].ni[7].y" -95.714286804199219;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" -311.42855834960938;
	setAttr ".tgi[0].ni[8].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 14.285714149475098;
	setAttr ".tgi[0].ni[9].y" -248.57142639160156;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" 14.285714149475098;
	setAttr ".tgi[0].ni[10].y" 431.42855834960938;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 14.285714149475098;
	setAttr ".tgi[0].ni[11].y" 80;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" -267.38095092773438;
	setAttr ".tgi[0].ni[12].y" 270.71429443359375;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" -618.5714111328125;
	setAttr ".tgi[0].ni[13].y" 87.142860412597656;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 12.857142448425293;
	setAttr ".tgi[0].ni[14].y" 255.71427917480469;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 12.857142448425293;
	setAttr ".tgi[0].ni[15].y" 431.42855834960938;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" -310;
	setAttr ".tgi[0].ni[16].y" 288.57144165039062;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" -617.14288330078125;
	setAttr ".tgi[0].ni[17].y" 87.142860412597656;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 12.857142448425293;
	setAttr ".tgi[0].ni[18].y" 80;
	setAttr ".tgi[0].ni[18].nvs" 1923;
	setAttr ".tgi[0].ni[19].x" -310;
	setAttr ".tgi[0].ni[19].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" 12.857142448425293;
	setAttr ".tgi[0].ni[20].y" -248.57142639160156;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" 668.5714111328125;
	setAttr ".tgi[0].ni[21].y" 344.28570556640625;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" 320;
	setAttr ".tgi[0].ni[22].y" 234.28572082519531;
	setAttr ".tgi[0].ni[22].nvs" 2387;
	setAttr ".tgi[0].ni[23].x" 320;
	setAttr ".tgi[0].ni[23].y" 410;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" 12.857142448425293;
	setAttr ".tgi[0].ni[24].y" -95.714286804199219;
	setAttr ".tgi[0].ni[24].nvs" 1923;
	setAttr ".tgi[0].ni[25].x" 321.42855834960938;
	setAttr ".tgi[0].ni[25].y" 410;
	setAttr ".tgi[0].ni[25].nvs" 1923;
	setAttr ".tgi[0].ni[26].x" 670;
	setAttr ".tgi[0].ni[26].y" 344.28570556640625;
	setAttr ".tgi[0].ni[26].nvs" 1923;
	setAttr ".tgi[0].ni[27].x" 14.285714149475098;
	setAttr ".tgi[0].ni[27].y" -95.714286804199219;
	setAttr ".tgi[0].ni[27].nvs" 1923;
	setAttr ".tgi[0].ni[28].x" -312.85714721679688;
	setAttr ".tgi[0].ni[28].y" -1.4285714626312256;
	setAttr ".tgi[0].ni[28].nvs" 1923;
	setAttr ".tgi[0].ni[29].x" 14.285714149475098;
	setAttr ".tgi[0].ni[29].y" 255.71427917480469;
	setAttr ".tgi[0].ni[29].nvs" 1923;
	setAttr ".tgi[0].ni[30].x" 321.42855834960938;
	setAttr ".tgi[0].ni[30].y" 234.28572082519531;
	setAttr ".tgi[0].ni[30].nvs" 2387;
	setAttr ".tgi[0].ni[31].x" 14.285714149475098;
	setAttr ".tgi[0].ni[31].y" -248.57142639160156;
	setAttr ".tgi[0].ni[31].nvs" 1923;
	setAttr ".tgi[0].ni[32].x" 14.285714149475098;
	setAttr ".tgi[0].ni[32].y" 255.71427917480469;
	setAttr ".tgi[0].ni[32].nvs" 1923;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -516.09838829549005 -372.61903281249761 ;
	setAttr ".tgi[1].vh" -type "double2" 933.24965701226608 416.03102715432323 ;
	setAttr -s 2 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" -114.28571319580078;
	setAttr ".tgi[1].ni[0].y" 330;
	setAttr ".tgi[1].ni[0].nvs" 2387;
	setAttr ".tgi[1].ni[1].x" 295.71429443359375;
	setAttr ".tgi[1].ni[1].y" 358.57144165039062;
	setAttr ".tgi[1].ni[1].nvs" 2387;
select -ne :time1;
	setAttr ".o" 51;
	setAttr ".unw" 51;
select -ne :hardwareRenderingGlobals;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 15 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 30 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 6 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 40 ".tx";
select -ne :initialShadingGroup;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya-legacy/config.ocio";
	setAttr ".vtn" -type "string" "sRGB gamma (legacy)";
	setAttr ".vn" -type "string" "sRGB gamma";
	setAttr ".dn" -type "string" "legacy";
	setAttr ".wsn" -type "string" "scene-linear Rec 709/sRGB";
	setAttr ".ovt" no;
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "sRGB gamma (legacy)";
	setAttr ".potn" -type "string" "sRGB gamma (legacy)";
select -ne :defaultHideFaceDataSet;
	setAttr -s 2 ".dnsm";
connectAttr "Main_SceneRN.phl[65]" "lambert1SG.dsm" -na;
connectAttr "Main_SceneRN.phl[1]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[2]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[3]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[4]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[5]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[6]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[7]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[8]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[9]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[10]" "set2.dsm" -na;
connectAttr "Main_SceneRN.phl[11]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[12]" "set1.dsm" -na;
connectAttr "Main_SceneRN.phl[13]" "set2.dsm" -na;
connectAttr "Transform_Ctrl_translateX.o" "Main_SceneRN.phl[14]";
connectAttr "Transform_Ctrl_translateY.o" "Main_SceneRN.phl[15]";
connectAttr "Transform_Ctrl_translateZ.o" "Main_SceneRN.phl[16]";
connectAttr "Transform_Ctrl_rotateX.o" "Main_SceneRN.phl[17]";
connectAttr "Transform_Ctrl_rotateY.o" "Main_SceneRN.phl[18]";
connectAttr "Transform_Ctrl_rotateZ.o" "Main_SceneRN.phl[19]";
connectAttr "Transform_Ctrl_scaleX.o" "Main_SceneRN.phl[20]";
connectAttr "Transform_Ctrl_scaleY.o" "Main_SceneRN.phl[21]";
connectAttr "Transform_Ctrl_scaleZ.o" "Main_SceneRN.phl[22]";
connectAttr "Transform_Ctrl_visibility.o" "Main_SceneRN.phl[23]";
connectAttr "L_Eye_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[24]";
connectAttr "L_Eye_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[25]";
connectAttr "L_Eye_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[26]";
connectAttr "L_Eye_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[27]";
connectAttr "L_Eye_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[28]";
connectAttr "L_Eye_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[29]";
connectAttr "L_Eye_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[30]";
connectAttr "L_Eye_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[31]";
connectAttr "L_Eye_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[32]";
connectAttr "L_Eye_Jnt_01_Ctrl_visibility.o" "Main_SceneRN.phl[33]";
connectAttr "R_Eye_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[34]";
connectAttr "R_Eye_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[35]";
connectAttr "R_Eye_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[36]";
connectAttr "R_Eye_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[37]";
connectAttr "R_Eye_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[38]";
connectAttr "R_Eye_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[39]";
connectAttr "R_Eye_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[40]";
connectAttr "R_Eye_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[41]";
connectAttr "R_Eye_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[42]";
connectAttr "R_Eye_Jnt_01_Ctrl_visibility.o" "Main_SceneRN.phl[43]";
connectAttr "L_Claw_Jnt_Ctrl_translateX.o" "Main_SceneRN.phl[44]";
connectAttr "L_Claw_Jnt_Ctrl_translateY.o" "Main_SceneRN.phl[45]";
connectAttr "L_Claw_Jnt_Ctrl_translateZ.o" "Main_SceneRN.phl[46]";
connectAttr "L_Claw_Jnt_Ctrl_rotateY.o" "Main_SceneRN.phl[47]";
connectAttr "L_Claw_Jnt_Ctrl_rotateX.o" "Main_SceneRN.phl[48]";
connectAttr "L_Claw_Jnt_Ctrl_rotateZ.o" "Main_SceneRN.phl[49]";
connectAttr "L_Claw_Jnt_Ctrl_scaleX.o" "Main_SceneRN.phl[50]";
connectAttr "L_Claw_Jnt_Ctrl_scaleY.o" "Main_SceneRN.phl[51]";
connectAttr "L_Claw_Jnt_Ctrl_scaleZ.o" "Main_SceneRN.phl[52]";
connectAttr "L_Claw_Jnt_Ctrl_visibility.o" "Main_SceneRN.phl[53]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_translateX.o" "Main_SceneRN.phl[54]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_translateY.o" "Main_SceneRN.phl[55]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_translateZ.o" "Main_SceneRN.phl[56]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_rotateZ.o" "Main_SceneRN.phl[57]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_rotateX.o" "Main_SceneRN.phl[58]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_rotateY.o" "Main_SceneRN.phl[59]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_scaleX.o" "Main_SceneRN.phl[60]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_scaleY.o" "Main_SceneRN.phl[61]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_scaleZ.o" "Main_SceneRN.phl[62]";
connectAttr "L_Claw_Top_Jnt_01_Ctrl_visibility.o" "Main_SceneRN.phl[63]";
connectAttr "Main_SceneRN.phl[64]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "Flag_translateX.o" "Main_SceneRN.phl[66]";
connectAttr "Flag_translateZ.o" "Main_SceneRN.phl[67]";
connectAttr "Flag_translateY.o" "Main_SceneRN.phl[68]";
connectAttr "Flag_rotateX.o" "Main_SceneRN.phl[69]";
connectAttr "Flag_rotateY.o" "Main_SceneRN.phl[70]";
connectAttr "Flag_rotateZ.o" "Main_SceneRN.phl[71]";
connectAttr "Flag_scaleX.o" "Main_SceneRN.phl[72]";
connectAttr "Flag_scaleY.o" "Main_SceneRN.phl[73]";
connectAttr "Flag_scaleZ.o" "Main_SceneRN.phl[74]";
connectAttr "Flag_visibility.o" "Main_SceneRN.phl[75]";
connectAttr "pCube1_translateX.o" "WAVE.tx";
connectAttr "pCube1_translateY.o" "WAVE.ty";
connectAttr "pCube1_translateZ.o" "WAVE.tz";
connectAttr "pCube1_rotateX.o" "WAVE.rx";
connectAttr "pCube1_rotateY.o" "WAVE.ry";
connectAttr "pCube1_rotateZ.o" "WAVE.rz";
connectAttr "pCube1_scaleX.o" "WAVE.sx";
connectAttr "pCube1_scaleY.o" "WAVE.sy";
connectAttr "pCube1_scaleZ.o" "WAVE.sz";
connectAttr "pCube1_visibility.o" "WAVE.v";
connectAttr "polyCube1.out" "WAVEShape.i";
relationship "link" ":rocks:lightLinker1" "rocks:set1.message" ":defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "link" ":rocks:lightLinker1" "set3.message" ":defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" "rocks:set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" "lambert1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" "set1.message" ":defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" "set2.message" ":defaultLightSet.message";
relationship "shadowLink" ":rocks:lightLinker1" "set3.message" ":defaultLightSet.message";
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
connectAttr "_UNKNOWN_REF_NODE_.ur" "Main_SceneRN.ur";
connectAttr ":lambert1.oc" "lambert1SG.ss";
connectAttr "lambert1SG.msg" "materialInfo1.sg";
connectAttr ":lambert1.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "WAVEShape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
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
connectAttr "multiplyDivide1.o" "aiStandardSurface1.base_color";
connectAttr "file3.oa" "aiStandardSurface1.metalness";
connectAttr "bump2d1.o" "aiStandardSurface1.n";
connectAttr "file5.oa" "aiStandardSurface1.specular_roughness";
connectAttr "aiStandardSurface1.out" "set1.ss";
connectAttr "displacementShader1.d" "set1.ds";
connectAttr "set1.msg" "materialInfo3.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo3.m";
connectAttr "aiStandardSurface1.msg" "materialInfo3.t" -na;
connectAttr "file2.oa" "displacementShader1.d";
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
connectAttr "multiplyDivide2.o" "aiStandardSurface2.base_color";
connectAttr "file8.oa" "aiStandardSurface2.metalness";
connectAttr "bump2d2.o" "aiStandardSurface2.n";
connectAttr "file10.oa" "aiStandardSurface2.specular_roughness";
connectAttr "aiStandardSurface2.out" "set2.ss";
connectAttr "displacementShader2.d" "set2.ds";
connectAttr "set2.msg" "materialInfo4.sg";
connectAttr "aiStandardSurface2.msg" "materialInfo4.m";
connectAttr "aiStandardSurface2.msg" "materialInfo4.t" -na;
connectAttr "file7.oa" "displacementShader2.d";
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
connectAttr "multiplyDivide3.o" "aiStandardSurface3.base_color";
connectAttr "file13.oa" "aiStandardSurface3.metalness";
connectAttr "bump2d3.o" "aiStandardSurface3.n";
connectAttr "file15.oa" "aiStandardSurface3.specular_roughness";
connectAttr "aiStandardSurface3.out" "set3.ss";
connectAttr "displacementShader3.d" "set3.ds";
connectAttr "set3.msg" "materialInfo5.sg";
connectAttr "aiStandardSurface3.msg" "materialInfo5.m";
connectAttr "aiStandardSurface3.msg" "materialInfo5.t" -na;
connectAttr "file12.oa" "displacementShader3.d";
connectAttr "file14.oa" "bump2d3.bv";
connectAttr "place2dTexture1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "file1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "file2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "file3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "set3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "aiStandardSurface3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "displacementShader3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "bump2d3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "file14.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "file15.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "file12.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "file13.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "file11.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "place2dTexture3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "multiplyDivide2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "file7.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "file6.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "place2dTexture2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "file8.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "file9.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "file10.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "set2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "aiStandardSurface2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "displacementShader2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "bump2d2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "displacementShader1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "set1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "bump2d1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "file4.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "multiplyDivide1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "aiStandardSurface1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "file5.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "multiplyDivide3.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "aiStandardSurface1.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "set1.pa" ":renderPartition.st" -na;
connectAttr "set2.pa" ":renderPartition.st" -na;
connectAttr "set3.pa" ":renderPartition.st" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader2.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "displacementShader3.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d3.msg" ":defaultRenderUtilityList1.u" -na;
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
// End of Anim_1.ma
