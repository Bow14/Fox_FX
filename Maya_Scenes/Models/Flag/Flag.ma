//Maya ASCII 2023 scene
//Name: Flag.ma
//Last modified: Thu, Oct 24, 2024 10:57:59 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.17";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "0098B599-4E5F-986B-1947-8EA332259790";
createNode transform -s -n "persp";
	rename -uid "250CF064-48A1-9C3F-F01D-EF91450213FA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.14904997805615194 8.8663872808778059 23.571513315957173 ;
	setAttr ".r" -type "double3" -5.7383527294148804 -7.7999999999856202 1.5048077280961224e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CB4EDFF7-4488-D6DB-5547-FABEA4B8795C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 24.575970908642397;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.8846441008703749 9.4389441228013951 -6.0413667013481387e-08 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DF44AE75-4E7A-A749-624C-A184427F7BDD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4CFCFF5E-4072-4E34-947D-74A46131637E";
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
	rename -uid "1022C25A-4C93-34BF-7F88-03BF052F4BCB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8329B30C-4C5B-4DA3-30FB-E7AF2DDD9A08";
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
	rename -uid "D6C52478-4A5A-1040-EA21-F8AF33311236";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5C210025-42A7-5D1B-141C-68BBA278BAB3";
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
createNode transform -n "Flag";
	rename -uid "6EDD2B7F-4E51-E040-2E5D-0F83488691AC";
	setAttr ".t" -type "double3" 0 1.9155924663540689 0 ;
createNode transform -n "Flag_Stem" -p "Flag";
	rename -uid "5A10AD1B-4D7D-4C88-FC24-9D9651B8ED97";
	setAttr ".t" -type "double3" 0 4.3574799011603886 0 ;
	setAttr ".s" -type "double3" 0.81969173627672665 1.0344569340740251 0.81969173627672665 ;
createNode mesh -n "Flag_StemShape" -p "Flag_Stem";
	rename -uid "492BA04E-4B83-C1A1-66B2-EE9121DEB88A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45956280082464218 0.50000787619501352 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Flag_Banner" -p "Flag";
	rename -uid "24F36399-4D78-B033-7BF5-5798EA6A5F35";
	setAttr ".t" -type "double3" 5.1013230771863149 7.5233513147294033 0 ;
	setAttr ".r" -type "double3" 0 0 -90 ;
	setAttr ".s" -type "double3" 2.8665377102804319 2.1555788334962167 0.33785771361609102 ;
createNode mesh -n "Flag_BannerShape" -p "Flag_Banner";
	rename -uid "A69E5F0F-4ADC-46AF-91B4-578B3185A7E6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.13518044352531433 0.40128406882286072 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 85 ".pt";
	setAttr ".pt[20]" -type "float3" 0 2.0861626e-07 2.9802322e-08 ;
	setAttr ".pt[21]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[22]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[23]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[24]" -type "float3" 0 0 -3.5762787e-07 ;
	setAttr ".pt[25]" -type "float3" 0 0 1.7881393e-07 ;
	setAttr ".pt[26]" -type "float3" 0 0 1.7881393e-07 ;
	setAttr ".pt[27]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".pt[28]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[29]" -type "float3" 0 0 2.8421709e-14 ;
	setAttr ".pt[30]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[31]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[32]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[33]" -type "float3" 0 0 -2.3841858e-07 ;
	setAttr ".pt[34]" -type "float3" 0 0 3.5762787e-07 ;
	setAttr ".pt[35]" -type "float3" 0 0 -1.7881393e-07 ;
	setAttr ".pt[36]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[37]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[38]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".pt[39]" -type "float3" 0 0 2.8421709e-14 ;
	setAttr ".pt[40]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".pt[41]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[42]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[43]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[45]" -type "float3" 0 0 1.7881393e-07 ;
	setAttr ".pt[48]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[49]" -type "float3" 0 0 2.8421709e-14 ;
	setAttr ".pt[50]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".pt[52]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[53]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[54]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[55]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[56]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[57]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[58]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[59]" -type "float3" 0 0 2.8421709e-14 ;
	setAttr ".pt[61]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[62]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[63]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[65]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[66]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[67]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[69]" -type "float3" 0 0 2.8421709e-14 ;
	setAttr ".pt[72]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[73]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".pt[74]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[75]" -type "float3" 0 0 -1.4901161e-07 ;
	setAttr ".pt[76]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[77]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[78]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[79]" -type "float3" 0 0 2.8421709e-14 ;
	setAttr ".pt[80]" -type "float3" 0 0 -5.2154064e-08 ;
	setAttr ".pt[81]" -type "float3" 0 0 4.4703484e-08 ;
	setAttr ".pt[82]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".pt[84]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[85]" -type "float3" 0 0 -8.9406967e-08 ;
	setAttr ".pt[87]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[88]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[90]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[91]" -type "float3" 0 0 -4.4703484e-08 ;
	setAttr ".pt[92]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[93]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[95]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[96]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".pt[97]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[98]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[100]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[103]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[104]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[105]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[106]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[107]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[109]" -type "float3" 0 0 7.1054274e-15 ;
	setAttr ".pt[110]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[111]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[112]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[113]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[115]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[116]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[117]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[118]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[119]" -type "float3" 0 0 7.1054274e-15 ;
	setAttr ".pt[120]" -type "float3" 0 -2.9802322e-08 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "44252F43-47A4-8A1D-D22C-7E8EAADE2F8C";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "2D7BD386-416E-1B91-7DFE-3185564336FC";
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
	rename -uid "50BF167D-49D3-14B5-FDE2-98A410E3E1F6";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6EE5B001-489A-A969-72A0-CEB314393B33";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "06DA0687-4E1B-F3A6-189A-28A1757C216E";
createNode displayLayerManager -n "layerManager";
	rename -uid "BAA0ECE5-4B84-254B-70D1-208330DA22EE";
createNode displayLayer -n "defaultLayer";
	rename -uid "AD296F68-4BE8-B422-DE31-13BC4BCB090D";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F7884F18-4F23-D19C-B65E-FAA2C4FF35FF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D4F96BF7-46D0-2C7A-09DC-5F85B6CFEB60";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "4811ACF6-4024-DE66-FE08-07B66F02864D";
	setAttr ".version" -type "string" "5.2.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "28CCE891-4DB0-CBE3-03FE-B0AE32BE8BF6";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "8CFD9801-4ACB-EA47-7DB9-77BDB544A7C0";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6CFC4413-4FA4-B2F9-AAF3-81B00EF931BC";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "717C8307-4EA3-8DEA-EF2B-93BE29364158";
	setAttr ".r" 0.25;
	setAttr ".h" 6.4708923257438311;
	setAttr ".sh" 4;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
	setAttr ".rcp" yes;
createNode polyCone -n "polyCone1";
	rename -uid "57B7087C-4E9E-5C35-EC88-88A6A1D673EE";
	setAttr ".h" 4.6249230898170222;
	setAttr ".sh" 6;
	setAttr ".cuv" 3;
	setAttr ".rcp" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F07FA72E-43D7-B21A-9998-9C8CDE02D1AC";
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
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1059\n            -height 784\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 0\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1059\\n    -height 784\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1059\\n    -height 784\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "A547E350-495B-A4E4-6199-00AEFAA3DDDF";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "584E1EA9-4586-3EA0-7C26-3D8760DA2676";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:159]";
	setAttr ".ix" -type "matrix" 1.4294101099174781 0 0 0 0 1.8039259570386288 0 0 0 0 1.4294101099174781 0
		 0 6.2730723675144571 0 1;
	setAttr ".s" -type "double3" 12.574973797031792 12.574973797031792 12.574973797031792 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "84847328-4F45-B60F-B2C1-838DD1405524";
	setAttr ".uopa" yes;
	setAttr -s 210 ".uvtk[0:209]" -type "float2" 0.075623453 0.00020005275
		 0.075034142 -0.00036042824 0.072958112 0.00098224729 0.074150547 0.0011714399 0.075743973
		 -0.0014571168 0.073889248 0.00055162236 0.068282336 0.00066646934 0.069410928 0.00048741698
		 0.076913565 0.00031847437 0.07646203 0.0011121966 0.069243468 0.00084587932 0.063452072
		 0.00034117699 0.064590216 0.00015717745 0.07163731 0.00030583143 0.078221291 2.414058e-05
		 0.078780711 0.00080260448 0.064413227 0.00052511692 0.058678731 1.5437603e-05 0.05980178
		 -0.00017386675 0.066831835 -2.6732683e-05 0.073861867 0.00012031198 0.078869075 -0.00071387552
		 0.07999441 0.0002443213 0.059649281 0.00020641088 0.053669199 -0.00029784441 0.054882899
		 -0.00085610151 0.062026344 -0.0003593564 0.069073454 -0.00021070242 0.074984923 -6.8932772e-05
		 0.078277357 -0.0019920319 0.079097331 -0.00055522472 0.054566294 0.0005017519 0.054794524
		 0.00066041946 0.055442307 -7.7545643e-05 0.057201579 -0.001165688 0.064252719 -0.00054097176
		 0.070211589 -0.00039464235 0.074014381 -0.00025999546 0.055386242 0.0019385815 0.056750037
		 -0.00037187338 0.059513059 -0.0012249351 0.065381318 -0.0007199645 0.06925045 -0.00057858229
		 0.058040161 -0.00025349855 0.060705502 -0.0010357499 0.064420201 -0.00089943409 0.058629468
		 0.00030702353 0.059774376 -0.00060510635 0.057919629 0.0014036298 -0.094054408 -0.000691102
		 -0.09470427 6.5114815e-05 -0.094218671 0.00083585083 -0.093003497 0.00025265105 -0.096012861
		 0.00037798937 -0.096538365 0.0011703521 -0.099792324 0.00013893843 -0.098668814 -7.5429678e-05
		 -0.094642557 -0.0019867783 -0.093898214 -0.00057184137 -0.097302675 0.00027815555
		 -0.098850094 0.0012545269 -0.10201754 0.00034964085 -0.10523649 -0.00020626187 -0.1040979
		 -0.00041535497 -0.099638686 -0.00029164553 -0.097890429 -0.00026395498 -0.100042
		 0.0010903068 -0.10424452 0.00055640936 -0.10747877 2.7418137e-06 -0.11071296 -0.00055092573
		 -0.10958394 -0.00075507164 -0.1050584 -0.00062441826 -0.097177535 -0.0013427864 -0.099109747
		 0.00068473071 -0.1053736 0.00076061487 -0.10972098 0.00021183491 -0.11293998 -0.00034409761
		 -0.1161074 -0.0012488961 -0.11491555 -0.0010847449 -0.11054442 -0.00095957518 -0.10441305
		 0.00096514821 -0.11085962 0.000420928 -0.11516515 -0.0001333952 -0.11841919 -0.001164794
		 -0.11765487 -0.00027251244 -0.11706709 0.00026965141 -0.11584774 -0.00067913532 -0.10989907
		 0.0006300211 -0.11628872 8.1002712e-05 -0.12073881 -0.0008302331 -0.11894469 -0.00037235022
		 -0.11777996 0.0013484359 -0.1153188 0.00029718876 -0.12195405 -0.00024712086 -0.12025326
		 -5.954504e-05 -0.12105928 0.00057739019 -0.12090311 0.00069671869 -0.12031493 0.0019924641
		 0.023736417 -0.0036723297 0.023155779 -0.0048119575 0.02704373 -0.0060752239 0.022955745
		 -0.006075222 0.024640858 -0.002767907 0.023155779 -0.0073384885 0.025780499 -0.0021872693
		 0.023736417 -0.0084781162 0.02704373 -0.0019872291 0.024640858 -0.0093824863 0.028307021
		 -0.0021872709 0.025780469 -0.0099631287 0.029446661 -0.0027679107 0.02704373 -0.010163222
		 0.030351013 -0.0036723344 0.028307021 -0.0099631287 0.030931652 -0.004811964 0.029446661
		 -0.0093824901 0.031131759 -0.0060752276 0.030351013 -0.0084781237 0.030931652 -0.0073384941
		 -0.080565035 -0.0073385891 -0.079984397 -0.0084782243 -0.076677084 -0.0060753394
		 -0.079079986 -0.0093826503 -0.080765069 -0.0060753264 -0.07794036 -0.0099632926 -0.080565035
		 -0.0048120618 -0.076677084 -0.010163445 -0.079984367 -0.003672434 -0.075413808 -0.0099633001
		 -0.079079956 -0.0027680141 -0.074274197 -0.0093826652 -0.07794033 -0.0021873787 -0.073369816
		 -0.0084782466 -0.076677054 -0.0019872321 -0.072789177 -0.0073386151 -0.075413778
		 -0.0021873866 -0.07258907 -0.0060753524 -0.074274167 -0.002768029 -0.072789162 -0.0048120869
		 -0.073369786 -0.0036724554 0.10165471 0.00033688545 0.10249515 -0.00047832727 0.10179152
		 -0.0015422106 0.10062483 -0.0010926127 0.10398541 -0.00073617697 0.10406584 -0.0017262101
		 0.10304528 -0.0011069179 0.10191344 -0.0010589957 0.10545818 -0.00048106909 0.10633667
		 -0.0016388297 0.10527872 -0.0011531711 0.1042245 -0.00078117847 0.10308632 -0.00073581934
		 0.10623866 0.00032025576 0.10749378 -0.0012819767 0.10751419 -0.0011975169 0.10646641
		 -0.00082656741 0.10541858 -0.0004556179 0.1042804 -0.00041165948 0.10865244 -0.0012415051
		 0.10870826 -0.00087195635 0.10765411 -0.00049993396 0.1065961 -1.4292076e-05 0.10543905
		 -0.0003711693 0.1098465 -0.00091731548 0.10988748 -0.00054618716 0.10886699 7.3039904e-05
		 0.10747464 -0.0011720548 0.10669416 -0.0019734241 0.11101938 -0.0005941093 0.11114125
		 -0.0001108665 0.10894741 -0.0009169752 0.112308 -0.00056045875 0.11043768 -0.0011748046
		 0.11127811 -0.0019900766 -0.044015318 -0.001990038 -0.044855759 -0.0011747659 -0.0441522
		 -0.00011072122 -0.042985439 -0.00056031719 -0.046346024 -0.00091693306 -0.046426475
		 7.3188916e-05 -0.045406044 -0.00054579973 -0.044274136 -0.00059369206 -0.04781878
		 -0.0011720093 -0.048697352 -1.4141202e-05 -0.047639415 -0.00049954653 -0.046585321
		 -0.00087177753 -0.045447066 -0.00091713667 -0.048599273 -0.001973375 -0.049854398
		 -0.00037101284 -0.049874932 -0.00045520067 -0.048827171 -0.0008263588 -0.047779486
		 -0.0011975765 -0.046641231 -0.0012415051 -0.051013142 -0.00041124225 -0.051069096
		 -0.00078094006 -0.050014958 -0.0011532307 -0.048957065 -0.0016385913 -0.04779996
		 -0.0012817383 -0.052207276 -0.00073558092 -0.052248374 -0.0011069775 -0.051227912
		 -0.0017259717 -0.049835563 -0.00048065186 -0.049055085 0.00032067299 -0.053380221
		 -0.0010590553 -0.053502217 -0.0015419722 -0.051308334 -0.00073575974 -0.054668903
		 -0.0010923743 -0.052798584 -0.00047791004 -0.053639024 0.00033736229;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "6ED74FD1-4E52-9C14-748B-EDBD7E07CE24";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:120]";
	setAttr ".ix" -type "matrix" 0 -2.8665377102804319 0 0 2.1555788334962167 0 0 0 0 0 0.33785771361609102 0
		 4.8846441008703749 9.4389437810834718 0 1;
	setAttr ".s" -type "double3" 9.9693866194462757 9.9693866194462757 9.9693866194462757 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "C7BDE348-457D-1E81-2CF6-2F9BF8F327CD";
	setAttr ".uopa" yes;
	setAttr -s 168 ".uvtk[0:167]" -type "float2" 0.65464973 0.0017038144 0.6534102
		 0.011957563 0.6596446 0.063742779 0.66067761 0.055198036 0.68008322 0.028001886 0.68187213
		 0.077113055 0.66587919 0.11552802 0.66670549 0.10869217 0.68191218 -0.0017831662
		 0.68339634 0.052292176 0.68366116 0.12622422 0.67211372 0.16731328 0.67273349 0.16218641
		 0.6848805 0.10636753 0.70924109 0.0019966429 0.7061705 0.055442028 0.68545032 0.17533544
		 0.6783483 0.21909851 0.67876136 0.21568054 0.68636471 0.16044292 0.70309973 0.10888737
		 0.71067482 0.01294114 0.70736516 0.064562432 0.68723929 0.22444659 0.68458271 0.27088368
		 0.68478942 0.26917475 0.68784887 0.21451819 0.70002913 0.1623328 0.70405567 0.11618373
		 0.68430543 0.030038938 0.68539065 0.078810595 0.68902826 0.27355772 0.69081724 0.32266891
		 0.68933308 0.26859361 0.6969586 0.21577817 0.70074606 0.16780508 0.68647599 0.12758225
		 0.69388789 0.26922357 0.69743639 0.21942633 0.68756127 0.17635396 0.69412696 0.27104765
		 0.68864667 0.22512555 0.68973196 0.27389729 0.078156948 0.01236346 0.076837927 0.0018208306
		 0.072045058 0.055301212 0.073144287 0.064086743 0.049548388 -0.0017886122 0.04930377
		 0.052293353 0.067252159 0.10878161 0.068131596 0.11581001 0.051608443 0.028848374
		 0.051020443 0.077824168 0.02224791 0.001869088 0.026553333 0.05534143 0.049059153
		 0.10637531 0.06245929 0.16226202 0.063118815 0.16753331 0.050432503 0.12679994 0.020896852
		 0.012525571 0.02542752 0.064221837 0.030858815 0.10881376 0.048814476 0.16045731
		 0.057666361 0.21574241 0.058106124 0.21925658 0.049844563 0.1757758 0.047395408 0.029184127
		 0.047509611 0.078103967 0.029958129 0.11591807 0.035164237 0.16228613 0.048569918
		 0.21453923 0.052873552 0.26922274 0.053093374 0.27097988 0.049256563 0.22475159 0.047623873
		 0.12702379 0.034488797 0.16761437 0.039469779 0.21575844 0.0483253 0.26862127 0.048080683
		 0.32270312 0.048668563 0.27372736 0.047738016 0.1759437 0.039019406 0.21931064 0.04377526
		 0.26923078 0.047852218 0.22486347 0.043550014 0.27100694 0.047966421 0.27378333 -0.46692657
		 0.21023065 -0.46070987 0.17684174 -0.46708131 0.14324498 -0.48541746 0.11272901 -0.51392317
		 0.088280916 -0.54980844 0.072293818 -0.58956051 0.066332757 -0.62928796 0.070981205
		 -0.66510212 0.085784018 -0.69349724 0.10929245 -0.71169376 0.1392051 -0.71791053
		 0.17259389 -0.71153903 0.20619071 -0.69320297 0.23670661 -0.66469705 0.26115489 -0.62881184
		 0.27714181 -0.58905983 0.28310293 -0.54933238 0.27845448 -0.51351821 0.26365167 -0.48512307
		 0.2401433 -0.084657907 0.28121001 -0.12062119 0.2830959 -0.13083173 0.23560244 -0.10086235
		 0.2340309 -0.1603547 0.28506058 -0.16394304 0.23723972 -0.14104232 0.18810943 -0.11706683
		 0.18685225 -0.20009065 0.28692037 -0.19705629 0.2387895 -0.16753137 0.18941924 -0.1512529
		 0.14061606 -0.13327125 0.13967317 -0.23606122 0.28849018 -0.22703178 0.24009776 -0.19402203
		 0.19065908 -0.1711197 0.1415984 -0.16146353 0.093122736 -0.14947574 0.092494115 -0.21800236
		 0.19170567 -0.19098763 0.1425283 -0.17470804 0.093777612 -0.17167407 0.045629703
		 -0.16568014 0.045315392 -0.20897293 0.14331326 -0.18795331 0.09439753 -0.17829631
		 0.04595717 -0.18188465 -0.0018636063 -0.19994348 0.094920829 -0.184919 0.046267115
		 -0.19091405 0.046528764 -0.49825895 0.0054992014 -0.46229565 0.0036133835 -0.45208502
		 0.051106609 -0.48205453 0.052678145 -0.42256209 0.001648677 -0.4189738 0.049469374
		 -0.44187453 0.098599851 -0.46585006 0.099857062 -0.38282618 -0.00021107425 -0.38586056
		 0.047919564 -0.41538543 0.097290069 -0.43166387 0.14609313 -0.44964564 0.14703605
		 -0.34685564 -0.0017809477 -0.35588521 0.046611331 -0.388895 0.096050203 -0.41179714
		 0.14511079 -0.42145339 0.19358635 -0.43344122 0.194215 -0.36491457 0.095003635 -0.39192921
		 0.14418089 -0.40820885 0.19293141 -0.41124281 0.24107957 -0.41723666 0.24139392 -0.37394395
		 0.14339599 -0.39496353 0.19231153 -0.40462047 0.24075222 -0.40103218 0.28857279 -0.38297346
		 0.19178826 -0.39799798 0.24044222 -0.39200291 0.24018055;
createNode polyMapSew -n "polyMapSew1";
	rename -uid "3B2C8B38-4A86-8755-C2FA-05AFFDB44CCE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:239]";
createNode polyMapCut -n "polyMapCut1";
	rename -uid "0593F124-4B35-EC98-3836-D2B9480FF7DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[129]" "e[139]" "e[149]" "e[159]" "e[169]" "e[179]" "e[189]" "e[199]" "e[209]" "e[219]" "e[229]" "e[239]";
createNode polyMapCut -n "polyMapCut2";
	rename -uid "324DE062-4296-EE70-0D09-CB81D7CCD1E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "E49D7932-4B8B-F5D4-7292-CFB837FF460C";
	setAttr ".uopa" yes;
	setAttr -s 154 ".uvtk[0:153]" -type "float2" -0.085260689 0.1010325 -0.074825227
		 0.12757635 -0.34874144 0.50161487 -0.32581663 0.48757094 0.058716834 0.016854286
		 -0.081175387 0.22848064 -0.44021544 0.40684244 -0.42187557 0.39560735 -0.088662565
		 0.086720556 -0.31653225 0.48121744 -0.15920097 0.28555974 -0.53168941 0.31207004
		 -0.51793444 0.3036437 -0.41444802 0.39052451 -0.64157462 0.089670718 -0.70441043
		 0.3194679 -0.23722652 0.34263897 -0.62316328 0.21729761 -0.61399335 0.21168011 -0.51236379
		 0.29983157 -0.63865364 0.061124891 -0.57659453 0.090343714 -0.65051919 0.31902072
		 -0.31525213 0.39971811 -0.71463728 0.12252527 -0.71005231 0.11971647 -0.61027956
		 0.20913869 -0.57289678 -0.19721815 -0.59554058 0.060767114 -0.44435355 0.26531619
		 -0.43328571 0.33389932 -0.39327759 0.4567973 -0.02808708 -0.72066993 -0.70819539
		 0.11844569 -0.50713998 -0.45556116 -0.54056203 -0.19748646 -0.37341571 0.076079577
		 -0.44138318 -0.7139042 -0.48558348 -0.45574003 -0.31354564 -0.18174011 -0.43060493
		 -0.71399361 -0.2536757 -0.43955979 -0.19380558 -0.69737953 0.42084754 0.4319523 0.4307906
		 0.46028847 0.038664639 0.78521311 0.062024891 0.75365472 0.094220281 0.23473591 -0.1822356
		 0.43612355 -0.082858562 0.6337142 -0.06417042 0.60846746 0.49981087 0.23466063 0.32476491
		 0.40816081 0.068085521 0.2244404 -0.20522526 0.43014014 -0.17348182 0.15444252 -0.20438185
		 0.48221526 -0.1903657 0.46328026 0.18926725 0.42930052 0.002910316 0.20474106 -0.25937173
		 0.41308737 -0.19187355 0.14965579 -0.16472799 -0.12723851 -0.32590508 0.33071637
		 -0.31656098 0.31809306 0.053769559 0.4504402 -0.012822986 0.3455888 -0.097088903
		 0.39920431 -0.23519075 0.1360136 -0.17852184 -0.1308285 -0.1559743 -0.40891945 -0.44742832
		 0.17921752 -0.4427563 0.1729058 -0.081728071 0.47157991 -0.0807423 0.12832019 -0.21100974
		 -0.14106014 -0.16517019 -0.41131282 -0.14722052 -0.69060051 -0.21722573 0.49271959
		 -0.064395607 -0.14256394 -0.18682873 -0.41813394 -0.15181845 -0.69179708 -0.048049033
		 -0.41344804 -0.16264775 -0.69520772 -0.031702429 -0.68433219 -0.23619969 0.12680417
		 -0.095580563 0.14689267 0.045052186 0.16840547 0.54038101 -0.11780012 0.43621463
		 -0.17413956 0.33198857 -0.23194945 0.30010313 -0.024039149 0.38696063 0.022397876
		 0.21278349 0.18076867 0.47375929 0.068944812 0.28226945 0.21791834 0.12546381 0.38557652
		 0.35170844 0.25515586 0.17757832 0.41343877 0.038144141 0.59038436 0.2296575 0.44136688
		 0.072887152 0.6089592 -0.049175531 0.79519218 0.10760659 0.62757796 -0.031804055
		 0.8044796 -0.014444284 0.81378901 0.041838109 0.39744478 -0.075358316 0.38125515
		 0.055021554 0.13032556 -0.19253424 0.36491746 -0.038735688 0.11737388 0.06820491
		 -0.13679361 -0.13247633 0.10430372 -0.0021129549 -0.14650735 0.081388354 -0.40391278
		 -0.072418451 -0.15630999 0.034509778 -0.41038859 0.09457171 -0.67103189 -0.012360632
		 -0.4169237 0.071132421 -0.67426991 0.047697246 -0.67753744 -0.44588962 -0.71409446
		 -0.45857188 0.27933007 -0.44951424 0.18175662 -0.51615286 -0.45594162 -0.33007687
		 0.33579475 -0.58641624 -0.19778892 -0.21063945 0.48983279 -0.65667945 0.060363859
		 -0.09120217 0.64387095 -0.72694278 0.31851664 0.028235197 0.79790902 0.14887309 -0.38151732
		 -0.66725218 0.09147957 0.13978058 -0.38775784 0.15222812 -0.38365933 0.16116041 -0.3941083
		 0.20804656 -0.24071491 0.30966431 -0.4092958 0.3328833 -0.4248822 0.35666081 -0.44119346
		 0.19382802 -0.30030844 0.12665209 -0.47240332 0.13881397 -0.47588116 0.14571735 -0.47854936
		 0.43288213 0.46887851 0.15833056 -0.48010191 0.18706298 -0.48039657 0.32500631 -0.6300838
		 0.43912637 -0.91976857 0.41590738 -0.90418214 0.39212984 -0.88787097 0.19096762 -0.5699231
		 0.1141966 -0.40169078;
createNode polyMapCut -n "polyMapCut3";
	rename -uid "31F6E8C0-474B-DF39-F9DA-1492B6234580";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "e[120]" "e[128]" "e[130]" "e[138]" "e[140]" "e[148]" "e[150]" "e[158]" "e[160]" "e[168]" "e[170]" "e[178]" "e[180]" "e[188]" "e[190]" "e[198]" "e[200]" "e[208]" "e[210]" "e[218]" "e[220]" "e[228]" "e[230]" "e[238]";
createNode polyMapSew -n "polyMapSew2";
	rename -uid "2A1D8BF7-423E-037B-C03C-6F82AB1805C3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[129]" "e[139]" "e[149]" "e[159]" "e[169]" "e[179]" "e[189]" "e[199]" "e[209]" "e[219]" "e[229]" "e[239]";
createNode polyMapSew -n "polyMapSew3";
	rename -uid "542BCCE3-4CA3-A0DB-D024-3CB0A93D4D6E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[7]";
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "04B53360-4610-E8A0-AE04-A28B084F66BD";
	setAttr ".uopa" yes;
	setAttr -s 166 ".uvtk[0:165]" -type "float2" 0.082115471 -0.58310211 0.068921566
		 -0.58314383 0.057434648 -0.63577288 0.068429589 -0.63573813 0.04876256 -0.58333921
		 0.040635467 -0.63593572 0.045947731 -0.68840188 0.054743677 -0.6883741 0.20317614
		 0.12743354 0.13343972 0.062734246 0.032508373 -0.68853211 0.034460843 -0.74103093
		 0.041057736 -0.74101007 0.063703299 -0.0019651055 0.48714438 0.11030793 0.33420613
		 0.1317963 0.02438131 -0.74112862 0.022973865 -0.79365993 0.027371839 -0.79364604
		 -0.0060331374 -0.066664398 0.18126801 0.15328458 0.42730263 0.055156887 0.42330056
		 0.061196506 0.016254216 -0.79372507 0.011486948 -0.84628892 0.013685934 -0.84628201
		 -0.075769588 -0.13136369 0.028329745 0.17477286 0.41929847 0.067236185 0.42476556
		 0.054200053 0.42118633 0.060399175 0.0081270635 -0.84632152 -0.21524239 -0.26076224
		 -0.14550599 -0.19606298 -0.12460846 0.19626114 0.41529638 0.073275805 0.41760707
		 0.066598296 -0.27754664 0.21774945 0.41129428 0.079315484 0.41402781 0.072797418
		 0.40729219 0.085355103 0.41044861 0.078996539 0.40686935 0.085195675 0.039020002
		 -0.12905678 -0.11238825 -0.24127942 -0.093656838 -0.2010662 -0.064893544 -0.63751233
		 0.060546994 -0.1269083 0.014582098 -0.022423625 -0.074925512 -0.16085297 -0.051914811
		 -0.68979335 -0.057715774 -0.58485329 -0.048096478 -0.63719743 0.40712553 0.047672868
		 0.4064863 0.054959834 -0.031382799 0.082061112 -0.056194127 -0.12063968 -0.038936108
		 -0.74207455 -0.038477212 -0.68954152 0.40879554 0.048273027 0.40787801 0.055460036
		 0.40584707 0.062246829 -0.077347726 0.18654585 -0.037462741 -0.080426455 -0.025957406
		 -0.79435575 -0.028857887 -0.7418856 0.41134122 0.049206853 0.4099994 0.056238234
		 0.40696043 0.062646985 0.40520784 0.069533825 -0.12331258 0.29103053 -0.018731378
		 -0.040213227 -0.012978688 -0.84663683 -0.019238576 -0.79422975 0.40865752 0.063269556
		 0.40604281 0.069833905 0.40456861 0.076820821 -0.16927749 0.39551526 -0.0096192956
		 -0.84657383 0.40731561 0.070300817 0.4051252 0.077020884 0.40392935 0.084107772 0.40597382
		 0.077332139 0.40420768 0.084207818 0.40463194 0.08436349 0.42158192 0.053008318 0.41805673
		 0.051694512 0.4145298 0.050385237 -0.032445312 -0.58444071 -0.0044776797 -0.58402532
		 0.023490548 -0.58364534 0.019575417 -0.63619083 -0.00373137 -0.63650739 0.015660375
		 -0.6887362 -0.02703774 -0.63685364 -0.0029850602 -0.68898952 0.011745274 -0.74128163
		 -0.021630198 -0.6892665 -0.0022388101 -0.74147165 0.0078301877 -0.79382706 -0.016222656
		 -0.74167931 -0.001492545 -0.79395378 0.0039151013 -0.84637249 -0.010815114 -0.79409224
		 -0.00074626505 -0.84643584 -0.005407542 -0.84650511 0.41265649 0.057220161 0.41559565
		 0.058311224 0.41078323 0.064055085 0.4185333 0.059405982 0.41313452 0.064927965 0.40890995
		 0.070890009 0.41548464 0.065803796 0.41067338 0.071544647 0.40703663 0.077724934
		 0.41243607 0.07220155 0.4082123 0.078161389 0.40516338 0.084559843 0.40938738 0.078599304
		 0.40575117 0.084778056 0.40633875 0.084997043 -0.21524239 0.5 -0.059147775 -0.087950289
		 -0.06108731 -0.072316505 -0.044729471 -0.081602573 -0.019243658 -0.053894524 0.014814854
		 -0.0075383857 0.054112256 0.052928165 0.094801784 0.12158614 0.13290048 0.19171503
		 0.16467899 0.25644997 0.18702671 0.30945423 0.1977559 0.34553957 0.1958164 0.36117348
		 0.045168102 -0.11536953 0.12185383 0.28076154 0.082556367 0.22029503 0.041866839
		 0.1516369 0.0037680864 0.081508085 -0.028010488 0.016773127 -0.050358117 -0.036231223
		 0.40756822 0.085461304 0.40329006 0.091394812 0 -0.89891791 -0.31806886 0.83413219
		 -0.015176959 -0.84669238 -0.016739488 -0.61312377 0.41184634 0.079527795 -0.20565289
		 0.66826445 -0.030353963 -0.79446685 -0.033479035 -0.46548524 0.41612452 0.073594362
		 -0.093236923 0.50239658 -0.045530975 -0.74224126 -0.050218567 -0.31784672 0.42040271
		 0.067660838 0.019179016 0.33652881 -0.060707957 -0.69001579 -0.0669581 -0.17020816
		 0.42468077 0.061727375 0.13159502 0.17066097 -0.075884938 -0.6377902 -0.083697617
		 -0.022569716 0.42895901 0.055793822 0.24401093 0.0047931671 -0.10043719 0.12506896;
createNode polyMapCut -n "polyMapCut4";
	rename -uid "34941DDF-4512-514E-872B-C7B3FCD46DE3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[7]";
createNode polyMapSew -n "polyMapSew4";
	rename -uid "B2AB57A3-4C64-458C-559A-8C98BF5C4BA6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[128]" "e[148]" "e[168]" "e[188]" "e[208]" "e[228]";
createNode polyMapSew -n "polyMapSew5";
	rename -uid "790B7311-4217-A139-3C10-05B840B601EA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[120]" "e[140]" "e[160]" "e[180]" "e[200]" "e[220]";
createNode polyMapSew -n "polyMapSew6";
	rename -uid "BE6B1253-4A23-E2F9-9D98-0B948BB9022F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[138]" "e[158]" "e[178]" "e[198]" "e[218]" "e[238]";
createNode polyMapSew -n "polyMapSew7";
	rename -uid "07D30368-4C6E-F8D0-4302-399DD6B411CC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "03329782-4FEF-EF01-F38F-2D83157419BE";
	setAttr ".uopa" yes;
	setAttr -s 145 ".uvtk[0:144]" -type "float2" 0.25669855 0.16067132 0.14340818
		 0.51587528 0.11950684 0.42911297 0.21391544 0.12159669 0.109761 0.51736444 0.091467559
		 0.43035394 0.095605463 0.34235063 0.17113236 0.082522035 0.34834796 -0.19935197 0.29029
		 -0.18993562 0.073174 0.34334341 0.07170409 0.25558835 0.12834924 0.043447435 0.232232
		 -0.18051934 0.37520993 -0.17761031 0.24319375 -0.15949744 0.0548805 0.2563329 0.047802746
		 0.168826 0.085566163 0.0043728054 0.17417397 -0.17110309 0.11117744 -0.14138448 0.38547873
		 -0.19716167 0.18226981 -0.16346994 0.036587 0.16932243 0.023901373 0.08206366 0.042783067
		 -0.034701839 0.11611597 -0.16168682 -0.020838767 -0.12327158 -0.020939171 -0.12977824
		 0.35624993 -0.26849416 0.15791243 -0.22291371 0.0182935 0.082311928 -0.41688743 -0.14675863
		 0.058057964 -0.15227054 -0.15285498 -0.10515861 -0.22414809 -0.096086502 -0.040425003
		 -0.17733321 -0.28487122 -0.087045729 -0.42735708 -0.062394783 -0.2387625 -0.13175273
		 -0.630566 -0.028703049 -0.43710002 -0.086172268 -0.63543749 -0.040591776 -0.10166359
		 0.52561039 -0.11836538 0.44017029 -0.094194859 0.21938962 -0.084719658 0.43722552
		 -0.12941983 0.3551746 -0.10058504 0.0027615428 -0.075355858 0.08468008 -0.067775726
		 0.34884065 -0.06800431 0.52442586 -0.056670278 0.43623847 0.1504249 -0.76203012 -0.013608396
		 -0.63419372 -0.080468059 -0.17851412 -0.056516871 -0.050029308 -0.050831795 0.26045585
		 -0.045336217 0.34805101 0.17027938 -0.71564943 0.0029369593 -0.59554315 -0.17764169
		 -0.50635719 -0.060351014 -0.3597897 -0.037677899 -0.18473879 -0.033887863 0.17207107
		 -0.034002155 0.25986359 0.20015287 -0.64458448 0.027831554 -0.53632236 -0.16440541
		 -0.47543672 -0.34167501 -0.3785207 -0.040234014 -0.54106534 -0.018838935 -0.31944823
		 -0.016943917 0.083686203 -0.022668108 0.17167622 -0.14448971 -0.42806017 -0.33174777
		 -0.35533032 -0.50570834 -0.2506842 -0.020117 -0.72234094 -0.011334039 0.083488777
		 -0.316811 -0.31979787 -0.49909014 -0.23522401 -0.66974163 -0.12284774 -0.48913234
		 -0.21153572 -0.66643256 -0.11511762 -0.6614536 -0.10327349 0.31939042 -0.35783231
		 0.27845192 -0.45664328 0.23738849 -0.5554024 -0.02581054 0.52283877 0.020883024 0.5210135
		 0.067574322 0.51912922 0.056311905 0.43182462 0.01740253 0.43339479 0.045049489 0.34451991
		 -0.021508813 0.4349159 0.013922006 0.34577611 0.033787131 0.25721526 -0.017207026
		 0.34699297 0.010441512 0.25815746 0.022524744 0.16991064 -0.01290527 0.25907007 0.0069610327
		 0.17053875 0.011262372 0.082606003 -0.0086034834 0.1711472 0.0034805089 0.08292006
		 -0.0043017417 0.083224282 0.058861256 -0.46200392 0.093080699 -0.37970459 -0.11966598
		 -0.36860538 0.12719619 -0.29736212 -0.092290401 -0.30276597 -0.29819325 -0.27520686
		 -0.06499809 -0.23689197 -0.27766153 -0.22582729 -0.47672045 -0.18180832 -0.25719231
		 -0.17642182 -0.46303269 -0.14888862 -0.65524769 -0.088409819 -0.44938654 -0.11595166
		 -0.64840376 -0.071949966 -0.64158076 -0.055481479 0.2430225 0.80708116 0.23880804
		 0.79326916 0.22858191 0.8071515 0.19689941 0.79347312 0.15107656 0.76738489 0.095598638
		 0.73144066 0.035896361 0.68915892 -0.022186279 0.64467824 -0.072963774 0.60235286
		 -0.11146563 0.56632602 -0.13392299 0.54012406 -0.046191692 0.56600815 0.0092862844
		 0.60195243 0.068988621 0.6442343 0.12707126 0.68871492 0.17784882 0.73104024 0.21635062
		 0.76706713 -0.023021869 -0.72334921 -0.046043739 -0.54308176 -0.06906563 -0.36281437
		 -0.092087507 -0.18254697 -0.11510938 -0.0022796392 -0.13813129 0.17798781 -0.092014492
		 0.53992009;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "3969BA7D-4B5D-18A7-5C22-A8B9E6B00C73";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:120]";
	setAttr ".ix" -type "matrix" 0 -2.8665377102804319 0 0 2.1555788334962167 0 0 0 0 0 0.33785771361609102 0
		 4.8846441008703749 9.4389437810834718 0 1;
	setAttr ".s" -type "double3" 9.9693866194462757 9.9693866194462757 9.9693866194462757 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "8B0008BC-470B-069C-3A88-808F2BE23E27";
	setAttr ".uopa" yes;
	setAttr -s 168 ".uvtk[0:167]" -type "float2" 0.65464973 0.0017038144 0.6534102
		 0.011957563 0.6596446 0.063742779 0.66067761 0.055198036 0.68008322 0.028001886 0.68187213
		 0.077113055 0.66587919 0.11552802 0.66670549 0.10869217 0.68191218 -0.0017831662
		 0.68339634 0.052292176 0.68366116 0.12622422 0.67211372 0.16731328 0.67273349 0.16218641
		 0.6848805 0.10636753 0.70924109 0.0019966429 0.7061705 0.055442028 0.68545032 0.17533544
		 0.6783483 0.21909851 0.67876136 0.21568054 0.68636471 0.16044292 0.70309973 0.10888737
		 0.71067482 0.01294114 0.70736516 0.064562432 0.68723929 0.22444659 0.68458271 0.27088368
		 0.68478942 0.26917475 0.68784887 0.21451819 0.70002913 0.1623328 0.70405567 0.11618373
		 0.68430543 0.030038938 0.68539065 0.078810595 0.68902826 0.27355772 0.69081724 0.32266891
		 0.68933308 0.26859361 0.6969586 0.21577817 0.70074606 0.16780508 0.68647599 0.12758225
		 0.69388789 0.26922357 0.69743639 0.21942633 0.68756127 0.17635396 0.69412696 0.27104765
		 0.68864667 0.22512555 0.68973196 0.27389729 0.078156948 0.01236346 0.076837927 0.0018208306
		 0.072045058 0.055301212 0.073144287 0.064086743 0.049548388 -0.0017886122 0.04930377
		 0.052293353 0.067252159 0.10878161 0.068131596 0.11581001 0.051608443 0.028848374
		 0.051020443 0.077824168 0.02224791 0.001869088 0.026553333 0.05534143 0.049059153
		 0.10637531 0.06245929 0.16226202 0.063118815 0.16753331 0.050432503 0.12679994 0.020896852
		 0.012525571 0.02542752 0.064221837 0.030858815 0.10881376 0.048814476 0.16045731
		 0.057666361 0.21574241 0.058106124 0.21925658 0.049844563 0.1757758 0.047395408 0.029184127
		 0.047509611 0.078103967 0.029958129 0.11591807 0.035164237 0.16228613 0.048569918
		 0.21453923 0.052873552 0.26922274 0.053093374 0.27097988 0.049256563 0.22475159 0.047623873
		 0.12702379 0.034488797 0.16761437 0.039469779 0.21575844 0.0483253 0.26862127 0.048080683
		 0.32270312 0.048668563 0.27372736 0.047738016 0.1759437 0.039019406 0.21931064 0.04377526
		 0.26923078 0.047852218 0.22486347 0.043550014 0.27100694 0.047966421 0.27378333 -0.46692657
		 0.21023065 -0.46070987 0.17684174 -0.46708131 0.14324498 -0.48541746 0.11272901 -0.51392317
		 0.088280916 -0.54980844 0.072293818 -0.58956051 0.066332757 -0.62928796 0.070981205
		 -0.66510212 0.085784018 -0.69349724 0.10929245 -0.71169376 0.1392051 -0.71791053
		 0.17259389 -0.71153903 0.20619071 -0.69320297 0.23670661 -0.66469705 0.26115489 -0.62881184
		 0.27714181 -0.58905983 0.28310293 -0.54933238 0.27845448 -0.51351821 0.26365167 -0.48512307
		 0.2401433 -0.084657907 0.28121001 -0.12062119 0.2830959 -0.13083173 0.23560244 -0.10086235
		 0.2340309 -0.1603547 0.28506058 -0.16394304 0.23723972 -0.14104232 0.18810943 -0.11706683
		 0.18685225 -0.20009065 0.28692037 -0.19705629 0.2387895 -0.16753137 0.18941924 -0.1512529
		 0.14061606 -0.13327125 0.13967317 -0.23606122 0.28849018 -0.22703178 0.24009776 -0.19402203
		 0.19065908 -0.1711197 0.1415984 -0.16146353 0.093122736 -0.14947574 0.092494115 -0.21800236
		 0.19170567 -0.19098763 0.1425283 -0.17470804 0.093777612 -0.17167407 0.045629703
		 -0.16568014 0.045315392 -0.20897293 0.14331326 -0.18795331 0.09439753 -0.17829631
		 0.04595717 -0.18188465 -0.0018636063 -0.19994348 0.094920829 -0.184919 0.046267115
		 -0.19091405 0.046528764 -0.49825895 0.0054992014 -0.46229565 0.0036133835 -0.45208502
		 0.051106609 -0.48205453 0.052678145 -0.42256209 0.001648677 -0.4189738 0.049469374
		 -0.44187453 0.098599851 -0.46585006 0.099857062 -0.38282618 -0.00021107425 -0.38586056
		 0.047919564 -0.41538543 0.097290069 -0.43166387 0.14609313 -0.44964564 0.14703605
		 -0.34685564 -0.0017809477 -0.35588521 0.046611331 -0.388895 0.096050203 -0.41179714
		 0.14511079 -0.42145339 0.19358635 -0.43344122 0.194215 -0.36491457 0.095003635 -0.39192921
		 0.14418089 -0.40820885 0.19293141 -0.41124281 0.24107957 -0.41723666 0.24139392 -0.37394395
		 0.14339599 -0.39496353 0.19231153 -0.40462047 0.24075222 -0.40103218 0.28857279 -0.38297346
		 0.19178826 -0.39799798 0.24044222 -0.39200291 0.24018055;
createNode polySplit -n "polySplit1";
	rename -uid "122A3997-4E47-A5DE-65CF-E6ABB59E15D8";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483637;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "6B07737D-4F22-ECFE-C570-4690765C4A19";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483642 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "1B796014-4A7B-AB8F-B51D-E4A5B97F8F42";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483640 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "B0FEA65D-4DFB-FB7D-743D-90859946EE98";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483643 -2147483635;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "A89B0436-4DA2-EFC2-4DDC-1BBFDDC88938";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483644 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "A467D54E-43EA-C01D-16B4-4B8CE8C8C019";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483645 -2147483633;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "8FBFCF31-48C6-7E6D-EF20-D2A801CD5BA5";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483632 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "B9D242D7-47C0-7D75-AF58-B9849215F6B7";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "BD166A33-4E98-4E1C-1003-88BAAF0D018A";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483648 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "1B34B23F-4439-FC69-51BA-F48F92D1CDBB";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:129]";
	setAttr ".ix" -type "matrix" 0 -2.8665377102804319 0 0 2.1555788334962167 0 0 0 0 0 0.33785771361609102 0
		 4.8846441008703749 9.4389437810834718 0 1;
	setAttr ".s" -type "double3" 9.9693866194462757 9.9693866194462757 9.9693866194462757 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "B7832618-419A-8D71-2CA0-AB92ACEEC6F2";
	setAttr ".uopa" yes;
	setAttr -s 168 ".uvtk[0:167]" -type "float2" 0.55924046 0.0013563782 0.55370355
		 0.010444459 0.56078893 0.044070356 0.56540304 0.036497004 0.57382208 0.024664829
		 0.5775544 0.055920668 0.56787443 0.077696264 0.57156563 0.071637541 0.58832353 -0.0017341948
		 0.58963895 0.033921473 0.58128673 0.087176502 0.57495993 0.11132219 0.57772833 0.10677817
		 0.59095442 0.069577157 0.6174655 0.0016159173 0.61392403 0.03671325 0.58501923 0.11843237
		 0.58204544 0.14494807 0.58389097 0.14191872 0.5922699 0.10523289 0.61038238 0.071810544
		 0.62317449 0.01131622 0.61868137 0.044796832 0.58875155 0.14968818 0.58913076 0.17857397
		 0.59005368 0.17705929 0.59358531 0.14088851 0.60684085 0.1069079 0.61418849 0.078277439
		 0.60332513 0.026470304 0.60214019 0.057425223 0.59248394 0.18094403 0.59621626 0.21219987
		 0.59490079 0.17654425 0.60329938 0.14200521 0.60969543 0.11175808 0.60095537 0.088380128
		 0.59975779 0.17710263 0.60520232 0.14523864 0.59977067 0.11933511 0.60070938 0.17871928
		 0.59858584 0.15029001 0.59740108 0.18124497 0.020467758 0.010812173 0.014860421 0.0014680524
		 0.0097924173 0.03659641 0.014465243 0.044383176 -0.014246643 -0.0017310611 -0.014463484
		 0.033930488 0.0047244132 0.071724743 0.0084626973 0.077954143 0.00045958161 0.025423046
		 -0.0022082925 0.0565589 -0.043363452 0.0015108236 -0.038727522 0.036632054 -0.014680326
		 0.069591999 -0.00034359097 0.10685316 0.0024601221 0.11152518 -0.004876107 0.087694734
		 -0.04899919 0.010955854 -0.043423891 0.044502907 -0.034091532 0.071753263 -0.014897108
		 0.10525361 -0.0054116249 0.14198148 -0.0035423934 0.14509618 -0.0075439513 0.11883065
		 -0.02903527 0.02572063 -0.026787341 0.056806885 -0.037848651 0.078049958 -0.029455543
		 0.10687453 -0.01511389 0.1409151 -0.010479569 0.17710984 -0.0095449984 0.17866719
		 -0.010211855 0.14996648 -0.024539351 0.087893128 -0.032273352 0.11159703 -0.024819493
		 0.14199573 -0.015330732 0.17657667 -0.015547514 0.21223819 -0.012879759 0.18110234
		 -0.022291422 0.11897945 -0.026698112 0.14514405 -0.020183504 0.17711693 -0.020043492
		 0.15006566 -0.021122873 0.17869115 -0.017795563 0.18115193 -0.41460729 0.042885065
		 -0.42192364 -0.027943254 -0.4219777 0.0025550127 -0.40053394 0.08909899 -0.41445047
		 -0.045624435 -0.38113517 0.13667327 -0.40028954 -0.048757911 -0.35830989 0.1809507
		 -0.38082722 -0.037036538 -0.33429229 0.21759731 -0.35796845 -0.011608124 -0.31143367
		 0.24302572 -0.33395088 0.025038481 -0.29197133 0.25474709 -0.31112564 0.06931597
		 -0.27781034 0.25161374 -0.29172695 0.11689013 -0.27033722 0.23393255 -0.27765346
		 0.16310412 -0.27028316 0.20343411 -0.12058607 0.17539603 -0.1480227 0.17706752 -0.1562525
		 0.14724547 -0.13338867 0.14585257 -0.17831933 0.17880881 -0.18149975 0.1486966 -0.16448236
		 0.11742386 -0.1461913 0.11630955 -0.20861813 0.18045717 -0.20674872 0.15007019 -0.18468015
		 0.11858472 -0.17271218 0.08760187 -0.15899387 0.086766183 -0.23606122 0.18184853
		 -0.22961797 0.15122974 -0.20487937 0.11968365 -0.18786055 0.088472545 -0.18094207
		 0.057779923 -0.1717965 0.057222798 -0.22317472 0.12061122 -0.2030099 0.089296728
		 -0.19104095 0.058360383 -0.18917188 0.027958311 -0.18459906 0.027679734 -0.21673146
		 0.089992434 -0.20114052 0.058909819 -0.19422132 0.028248541 -0.19740172 -0.0018636063
		 -0.2102882 0.059373632 -0.19927114 0.028523259 -0.20384493 0.028755166 -0.5114122
		 0.0047235866 -0.48397559 0.0030521522 -0.47574571 0.032873981 -0.49860966 0.034266867
		 -0.45367888 0.0013107981 -0.45049852 0.031422876 -0.46751595 0.062695831 -0.485807
		 0.06381011 -0.42338011 -0.00033753272 -0.42524958 0.030049242 -0.44731808 0.061534911
		 -0.45928603 0.092517674 -0.47300446 0.09335342 -0.39593709 -0.0017289396 -0.40238047
		 0.028889738 -0.42711908 0.06043604 -0.44413772 0.091647029 -0.45105627 0.12233955
		 -0.46020186 0.12289667 -0.40882364 0.059508413 -0.42898837 0.090822846 -0.44095737
		 0.12175906 -0.44282645 0.15216136 -0.4473992 0.15243995 -0.41526684 0.09012717 -0.43085778
		 0.12120962 -0.43777692 0.1518712 -0.43459657 0.18198317 -0.42171019 0.12074584 -0.43272728
		 0.15159643 -0.42815346 0.15136451;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "B97F6593-45EF-129B-C600-89AAA84595DB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[129]" "e[149]" "e[169]" "e[189]" "e[209]" "e[229]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "8926F263-4AEF-42FE-DF32-168A9105BE52";
	setAttr ".uopa" yes;
	setAttr -s 175 ".uvtk[0:174]" -type "float2" -0.26434517 -0.00038589374
		 -0.26867104 -0.0015593274 -0.2678144 -0.019839302 -0.26420948 -0.018861443 -0.27526915
		 -0.0033954345 -0.27331275 -0.021369383 -0.2669577 -0.038119256 -0.26407376 -0.037337005
		 -0.26251248 1.3156474e-05 -0.2626822 -0.018528894 -0.2713564 -0.039343357 -0.26610106
		 -0.056399256 -0.26393804 -0.055812538 -0.26285195 -0.03707093 -0.26068735 -0.00041938317
		 -0.2611613 -0.018889353 -0.26940003 -0.057317287 -0.26524431 -0.074679196 -0.26380241
		 -0.07428807 -0.26302174 -0.055613011 -0.26163521 -0.037359267 -0.2563836 -0.0016718218
		 -0.25757489 -0.019933045 -0.26744366 -0.075291216 -0.26438767 -0.092959166 -0.26366663
		 -0.092763603 -0.26319143 -0.074155033 -0.26210913 -0.055829227 -0.25876608 -0.038194269
		 -0.24982038 -0.0036284178 -0.25210547 -0.02156353 -0.26548734 -0.093265176 -0.26353097
		 -0.11123914 -0.26336119 -0.092697144 -0.26258308 -0.074299216 -0.25995734 -0.056455493
		 -0.25439051 -0.039498657 -0.26305705 -0.092769265 -0.26114857 -0.074716628 -0.25667569
		 -0.057433784 -0.26233971 -0.092977941 -0.25896078 -0.075368881 -0.26124588 -0.093304038
		 0.49952221 0.17096663 0.4952054 0.17217311 0.49492842 0.15369916 0.4985258 0.15269373
		 0.34223115 -3.1821692e-06 0.34225923 -0.01854597 0.49465141 0.13522521 0.49752933
		 0.1344209 0.50610602 0.16908012 0.50401229 0.15112168 0.34040278 -0.00042177434 0.34073567
		 -0.018894792 0.34228742 -0.037088722 0.49437442 0.11675125 0.49653286 0.11614802
		 0.50191849 0.13316321 0.33608967 -0.0016412986 0.33714134 -0.019911066 0.34106851
		 -0.037367821 0.3423155 -0.055631548 0.49409747 0.098277271 0.49553636 0.097875118
		 0.49982473 0.11520475 0.32951158 -0.0035477038 0.33165962 -0.021499738 0.338193 -0.038180828
		 0.34140134 -0.05584079 0.34234357 -0.074174285 0.49382055 0.079803348 0.49453995
		 0.079602242 0.497731 0.097246289 0.33380765 -0.039451748 0.33924472 -0.056450576
		 0.34173417 -0.074313819 0.3423717 -0.092717111 0.34239978 -0.11125988 0.49563727
		 0.079287827 0.33595574 -0.057403803 0.34029645 -0.074720263 0.34206694 -0.092786789
		 0.33810377 -0.075355768 0.34134817 -0.0929901 0.3402518 -0.093307793 0.1710175 -0.23589963
		 0.17196217 -0.23793012 0.17285416 -0.2362802 0.16663197 -0.23682576 0.16842887 -0.24068809
		 0.16012692 -0.2389679 0.16260004 -0.24428391 0.15213898 -0.24211639 0.15504631 -0.24836576
		 0.14345014 -0.24596304 0.14650714 -0.25253397 0.13491094 -0.25013119 0.13781834 -0.25638062
		 0.12735724 -0.25421309 0.12983042 -0.25952911 0.12152845 -0.25780892 0.12332529 -0.26167125
		 0.11799514 -0.26056689 0.11893976 -0.26259738 0.11710316 -0.26221687 -0.036166877
		 -0.10651696 -0.027583569 -0.10673285 -0.02558966 -0.088943958 -0.032742366 -0.088764071
		 -0.018084005 -0.10695761 -0.017673351 -0.089131355 -0.023595721 -0.07115519 -0.02931793
		 -0.071011305 -0.0085841529 -0.10717046 -0.0097568184 -0.089308619 -0.017262697 -0.071305007
		 -0.021601841 -0.053366363 -0.025893494 -0.053258508 0 -0.10735005 -0.0026033502 -0.089458406
		 -0.01092945 -0.071446955 -0.016852044 -0.053478807 -0.019607946 -0.03557758 -0.022469044
		 -0.035505667 -0.0052067004 -0.071566731 -0.012102149 -0.053585202 -0.016441405 -0.035652548
		 -0.017614044 -0.017788783 -0.019044593 -0.017752819 -0.0078100711 -0.053675026 -0.013274811
		 -0.035723463 -0.016030781 -0.017826274 -0.015620127 -9.3132313e-10 -0.010413401 -0.035783365
		 -0.014447443 -0.017861731 -0.013016768 -0.017891683 -0.016740918 -0.0008263397 -0.025324255
		 -0.00061054761 -0.02731815 -0.018399335 -0.020165324 -0.018579185 -0.03482382 -0.00038572471
		 -0.035234407 -0.018212013 -0.029311985 -0.036188155 -0.023589775 -0.036332011 -0.044323653
		 -0.00017291261 -0.043150932 -0.018034644 -0.035645068 -0.036038265 -0.031305909 -0.053976923
		 -0.027014181 -0.054084867 -0.052907795 6.725415e-06 -0.050304353 -0.017884947 -0.04197824
		 -0.03589642 -0.036055654 -0.053864539 -0.033299744 -0.071765751 -0.030438632 -0.071837693
		 -0.047701031 -0.035776615 -0.040805519 -0.053758115 -0.036466241 -0.071690828 -0.035293639
		 -0.089554548 -0.033863038 -0.089590549 -0.045097589 -0.05366832 -0.039632916 -0.071619868
		 -0.036876902 -0.089517117 -0.037287474 -0.10734338 -0.042494267 -0.071559995 -0.038460195
		 -0.089481592 -0.039890826 -0.089451671 0.49351555 0.079872191 0.49354351 0.061329365
		 0.49348754 0.098414958 0.49345964 0.11695778 0.49343175 0.13550058 0.49340379 0.15404336
		 0.49337578 0.17258617;
createNode polyMapSew -n "polyMapSew8";
	rename -uid "B0866C2C-4B05-7CFA-670D-9199384182FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[129]" "e[149]" "e[169]" "e[189]" "e[209]" "e[229]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "43EE70D1-42FF-F555-A2EA-4C852390B37D";
	setAttr ".uopa" yes;
	setAttr -s 168 ".uvtk[0:167]" -type "float2" 0.31542033 0.00058089057
		 0.322281 0.0024418505 0.32092255 0.031432867 0.31520531 0.029882073 0.33274513 0.0053537451
		 0.32964259 0.033859432 0.31956404 0.060423851 0.31499025 0.05918324 0.3125138 -5.1963201e-05
		 0.31278318 0.029354692 0.32654017 0.062365144 0.3182056 0.089414924 0.31477526 0.088484406
		 0.31305254 0.058761328 0.30961925 0.00063404348 0.31037107 0.02992636 0.32343766
		 0.090870827 0.31684709 0.11840588 0.31456029 0.11778557 0.31332198 0.088167995 0.31112286
		 0.059218645 0.3027938 0.0026203832 0.30468324 0.03158164 0.32033515 0.11937654 0.31548864
		 0.14739698 0.31434518 0.1470868 0.31359133 0.11757463 0.31187466 0.08851096 0.30657265
		 0.060542911 0.29238483 0.0057234969 0.29600906 0.034167573 0.3172327 0.14788222 0.31413019
		 0.17638791 0.31386074 0.14698136 0.31262654 0.11780328 0.30846205 0.089504153 0.29963329
		 0.062611639 0.31337839 0.14709568 0.31035143 0.11846536 0.3032575 0.091055721 0.31224078
		 0.14742672 0.30688173 0.1194998 0.31050596 0.14794391 -0.47340733 -0.16196223 -0.46865696
		 -0.16955297 -0.44338685 -0.14264828 -0.44734544 -0.13632265 -0.39093906 -0.086330391
		 -0.36602658 -0.058913678 -0.41811657 -0.11574358 -0.42128348 -0.11068308 -0.48058975
		 -0.15031666 -0.45333079 -0.12661801 -0.31210375 -0.0018781653 -0.28773522 0.025845617
		 -0.34111404 -0.031496972 -0.39284641 -0.088838905 -0.39522159 -0.08504349 -0.42607182
		 -0.10291934 -0.3040942 -0.005881906 -0.28106052 0.022509158 -0.26336658 0.053569406
		 -0.31620157 -0.0040802956 -0.36757624 -0.061934173 -0.3691597 -0.059403896 -0.39881277
		 -0.079220742 -0.291816 -0.011919466 -0.27082866 0.01747787 -0.25802684 0.050900221
		 -0.238998 0.081293136 -0.29128903 0.023336411 -0.34230608 -0.035029471 -0.34309781
		 -0.033764362 -0.37155384 -0.055522084 -0.24984133 0.046875179 -0.23499316 0.079291284
		 -0.21462941 0.1090169 -0.2663765 0.050753117 -0.24146408 0.078169823 -0.34429485
		 -0.031823397 -0.22885412 0.076272488 -0.21195954 0.10768229 -0.19026077 0.13674068
		 -0.20786679 0.1056698 -0.18892586 0.13607341 -0.18687946 0.13506711 -0.13949773 0.22025645
		 -0.14099589 0.22347665 -0.14241052 0.22085994 -0.13254252 0.22172517 -0.13539219
		 0.22785062 -0.12222579 0.22512251 -0.12614805 0.23355341 -0.10955739 0.23011577 -0.1141682
		 0.24002689 -0.095777392 0.23621631 -0.10062557 0.24663752 -0.082234681 0.24282682
		 -0.086845636 0.25273806 -0.070254862 0.24930042 -0.074177146 0.25773132 -0.061010718
		 0.25500321 -0.063860416 0.2611286 -0.055407047 0.25937706 -0.05690521 0.26259738
		 -0.05399245 0.26199383 0.057358593 0.16892999 0.043745965 0.16927224 0.040583745
		 0.14106017 0.051927611 0.14077497 0.028680176 0.1696288 0.028028943 0.14135742 0.037421539
		 0.11284816 0.046496645 0.11262 0.013613973 0.16996634 0.015473761 0.14163852 0.027377695
		 0.11308584 0.034259334 0.084636122 0.041065663 0.084464967 0 0.17025125 0.0041287839
		 0.14187604 0.017333545 0.11331087 0.026726447 0.084814429 0.031097129 0.056424066
		 0.035634667 0.056309983 0.0082575679 0.11350086 0.019193336 0.08498314 0.026075199
		 0.056542963 0.027934916 0.028212026 0.0302037 0.028154992 0.012386359 0.085125595
		 0.021053128 0.056655452 0.025423951 0.028271466 0.024772704 1.0644155e-16 0.016515136
		 0.056750402 0.022912912 0.028327726 0.02064392 0.028375201 0.023105949 0.0012753946
		 0.036718592 0.00093313539 0.039880797 0.029145174 0.028536931 0.029430375 0.051784351
		 0.00057655899 0.052435622 0.02884803 0.043043002 0.057357192 0.033967912 0.057585388
		 0.066850543 0.00023903092 0.064990759 0.028566755 0.053086847 0.057119504 0.046205223
		 0.085569263 0.039398894 0.085740387 0.080464542 -4.588742e-05 0.076335758 0.02832932
		 0.063130975 0.056894481 0.053738117 0.085390985 0.049367428 0.11378124 0.044829875
		 0.11389539 0.072206974 0.056704521 0.06127122 0.085222214 0.054389358 0.11366245
		 0.052529633 0.14199334 0.050260872 0.14205039 0.06807819 0.08507973 0.059411436 0.11354995
		 0.055040583 0.14193386 0.055691838 0.17020541 0.063949406 0.11345497 0.057551622
		 0.14187765 0.059820622 0.14183015;
createNode polyMapSew -n "polyMapSew9";
	rename -uid "A44D3FD6-4493-CC27-4018-949AA1C6EEBD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[19]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "5D22B442-4752-4405-0BAF-64B56BF5266B";
	setAttr ".uopa" yes;
	setAttr -s 166 ".uvtk[0:165]" -type "float2" -0.73204708 -0.1067839 -0.73669213
		 0.3559373 -0.63913012 0.28454027 -0.62921017 0.30713451 -0.75460994 0.31439131 -0.65406168
		 0.24991861 -0.54156816 0.21314323 -0.53363222 0.23121867 -0.73784912 -0.10423905
		 -0.62458724 0.31636783 -0.55351335 0.18544593 -0.44400615 0.14174616 -0.43805426
		 0.15530276 -0.52993381 0.23860523 -0.70944786 0.40172282 -0.61642665 0.32269484 -0.45296508
		 0.12097323 -0.34644416 0.070349157 -0.34247628 0.07938689 -0.43528041 0.16084269
		 -0.52340531 0.24366692 -0.6851604 0.41866216 -0.59618706 0.33681101 -0.35241678 0.056500494
		 -0.24888217 -0.0010479689 -0.24689823 0.0034709573 -0.34062698 0.083080173 -0.43038404
		 0.16463894 -0.50721371 0.25495979 -0.64788163 0.44430211 -0.56512141 0.3581776 -0.25186855
		 -0.0079721808 -0.15132028 -0.072444916 -0.24597365 0.0053175688 -0.33736277 0.085611045
		 -0.41824037 0.17310861 -0.48236114 0.27205306 -0.24434155 0.0065829754 -0.329267
		 0.091257453 -0.39960092 0.18592858 -0.24029356 0.009406209 -0.31684071 0.099804044
		 -0.23408043 0.013679564 0.35833067 0.099173576 0.35141557 0.10238502 0.34587455 0.07144919
		 0.35163707 0.068772987 0.34845769 0.10358116 0.3434096 0.072445959 0.34033334 0.040513337
		 0.34494346 0.038372368 0.36886436 0.094197705 0.36041513 0.064626411 0.34527338 0.10338088
		 0.34075606 0.072279051 0.3383615 0.041310757 0.33479232 0.0095775127 0.33824986 0.0079717934
		 0.35196596 0.035055131 0.33769792 0.10251887 0.33444309 0.071560711 0.33623868 0.041177243
		 0.33331347 0.010175556 0.32925123 -0.021358311 0.33155626 -0.022428811 0.34351671
		 0.0054838657 0.32613164 0.10112619 0.32480454 0.070400149 0.33118832 0.040602565
		 0.33172125 0.01007542 0.32826525 -0.020959616 0.32371014 -0.052294195 0.32486266
		 -0.052829385 0.33506745 -0.024087429 0.32347739 0.039674133 0.32793349 0.009644419
		 0.32720381 -0.021026373 0.32321715 -0.052094817 0.31816906 -0.083230019 0.32661831
		 -0.053658724 0.32215041 0.0089480877 0.32467872 -0.021313727 0.32268649 -0.052128196
		 0.32082325 -0.021777928 0.32142389 -0.052271903 0.31949615 -0.052504003 -0.19879989
		 -0.76603746 -0.20528796 -0.78673661 -0.18813613 -0.7807464 -0.23623545 -0.74404973
		 -0.24857652 -0.78342187 -0.29677841 -0.71693534 -0.31376439 -0.77112639 -0.37450224
		 -0.68734854 -0.39447051 -0.75105399 -0.46179897 -0.65818548 -0.48279476 -0.72516942
		 -0.55012327 -0.63230085 -0.57009143 -0.69600642 -0.63082945 -0.61222851 -0.64781535
		 -0.66641957 -0.69601732 -0.59993303 -0.70835823 -0.63930523 -0.74579382 -0.61731744
		 0.40916628 -0.18118793 0.42376667 -0.18155503 0.42715839 -0.15129584 0.41499135 -0.15098995
		 0.43992573 -0.18193746 0.44062421 -0.15161461 0.4305501 -0.12103668 0.42081642 -0.12079197
		 0.45608518 -0.18229949 0.45409039 -0.15191621 0.44132268 -0.12129164 0.43394172 -0.090777546
		 0.42664152 -0.090593934 0.47068697 -0.18260509 0.46625859 -0.1521709 0.45209566 -0.12153301
		 0.44202119 -0.090968728 0.43733341 -0.060518339 0.4324666 -0.060395971 0.46183023
		 -0.12173674 0.45010093 -0.091149747 0.44271976 -0.060645849 0.44072506 -0.030259162
		 0.43829167 -0.030197985 0.45740184 -0.091302544 0.4481062 -0.060766518 0.44341826
		 -0.030322909 0.44411674 6.9964921e-17 0.45297348 -0.060868353 0.44611147 -0.030383259
		 0.4485451 -0.030434176 0.44635919 -0.0014984203 0.43175876 -0.0011313241 0.42836708
		 -0.031390503 0.44053411 -0.031696402 0.41559982 -0.00074887252 0.41490129 -0.03107179
		 0.42497545 -0.06164965 0.43470907 -0.061894402 0.39944035 -0.00038685161 0.40143511
		 -0.030770108 0.41420278 -0.061394706 0.42158377 -0.091908842 0.42888397 -0.092092395
		 0.38483855 -8.1257793e-05 0.38926688 -0.03051544 0.40342987 -0.061153352 0.41350424
		 -0.09171766 0.41819206 -0.122168 0.42305887 -0.12229037 0.39369529 -0.060949624 0.40542454
		 -0.091536641 0.41280574 -0.12204054 0.41480047 -0.1524272 0.41723382 -0.15248835
		 0.39812362 -0.091383815 0.40741929 -0.12191987 0.41210729 -0.15236342 0.41140875
		 -0.18268633 0.40255198 -0.12181804 0.40941399 -0.15230316 0.40698037 -0.1522522;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "2417B901-4D1E-5BF5-5709-D0A7B863D9F6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[19]";
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "EBF77568-4F25-F53D-E6B0-EFA5803D2F95";
	setAttr ".uopa" yes;
	setAttr -s 168 ".uvtk[0:167]" -type "float2" 0.19405766 0.38832113 0.0056961998
		 -0.34068689 0.013244897 -0.33393401 0.011565939 -0.33272788 0.0087891594 -0.34287822
		 0.015822396 -0.33576009 0.020793647 -0.32718113 0.019450456 -0.32621625 0.0028699674
		 -0.33859211 0.010889679 -0.3321884 0.02285558 -0.32864201 0.028342336 -0.32042822
		 0.027334958 -0.31970459 0.018909439 -0.32578459 0.0024181232 -0.33765748 0.010513216
		 -0.33140951 0.029888809 -0.3215239 0.035891026 -0.31367531 0.035219461 -0.31319293
		 0.02692917 -0.31938085 0.018608242 -0.32516155 0.0014525522 -0.33537233 0.0097085685
		 -0.32950526 0.036922008 -0.3144058 0.043439746 -0.30692244 0.043103993 -0.30668125
		 0.034948945 -0.31297711 0.026703328 -0.31891352 0.017964527 -0.32363808 4.6981214e-08
		 -0.33187118 0.0084981397 -0.32658759 0.043955266 -0.30728769 0.050988495 -0.30016953
		 0.04296875 -0.30657333 0.034798354 -0.31266555 0.02622053 -0.31777096 0.016996175
		 -0.32130393 0.04289341 -0.30641755 0.034476519 -0.31190386 0.025494248 -0.31602037
		 0.042732418 -0.30603668 0.03399235 -0.31073678 0.042490363 -0.30545321 -0.013067484
		 0.084519506 -0.010817528 0.083474599 -0.0090146065 0.093540221 -0.01088953 0.094411001
		 -0.0098550916 0.083085403 -0.0082125664 0.093215898 -0.0072116256 0.10360587 -0.0087116361
		 0.1043025 -0.016494811 0.086138517 -0.013745666 0.095760167 -0.008818984 0.083150566
		 -0.0073491931 0.093270198 -0.0065700412 0.10334641 -0.0054087639 0.11367151 -0.006533742
		 0.11419395 -0.010996521 0.10538179 -0.0063541532 0.083431035 -0.0052950978 0.093503937
		 -0.0058793426 0.10338983 -0.0049275756 0.1134769 -0.0036058426 0.1237371 -0.0043557882
		 0.12408543 -0.0082474351 0.11500344 -0.0025908351 0.083884172 -0.0021589994 0.093881533
		 -0.0042361021 0.10357684 -0.004409492 0.11350951 -0.0032849908 0.1236074 -0.0018028617
		 0.13380277 -0.0021778941 0.13397694 -0.0054982305 0.12462509 -0.0017272234 0.10387889
		 -0.0031770468 0.11364973 -0.0029396415 0.12362915 -0.0016424656 0.13373792 0 0.14386839
		 -0.002749145 0.13424671 -0.0012954473 0.11387631 -0.0021180511 0.12372261 -0.0014698505
		 0.13374877 -0.0008636117 0.12387365 -0.0010590553 0.1337955 -0.00043177605 0.13387108
		 0.20230399 0.35702297 0.20110542 0.35670722 0.20191687 0.35605976 0.2022288 0.35950264
		 0.19994897 0.35890198 0.20169875 0.36325589 0.19856083 0.36242911 0.20076567 0.36791545
		 0.19707677 0.36694351 0.19952089 0.37302512 0.19564217 0.3720032 0.19808626 0.37808484
		 0.1943974 0.37711287 0.19660223 0.38259923 0.19346431 0.38177246 0.19521403 0.38612634
		 0.19293424 0.3855257 0.19285907 0.38800538 -0.45066988 0.27232116 -0.45542043 0.27244067
		 -0.45652401 0.26259518 -0.45256519 0.26249564 -0.46067813 0.27256507 -0.4609054 0.26269889
		 -0.45762759 0.25274971 -0.45446053 0.25267011 -0.46593598 0.27268285 -0.46528691
		 0.26279706 -0.46113268 0.25283265 -0.45873111 0.24290431 -0.45635587 0.24284452 -0.47068694
		 0.27278233 -0.46924609 0.26287991 -0.46463788 0.25291124 -0.46135995 0.24296647 -0.45983472
		 0.23305883 -0.45825118 0.23301901 -0.46780524 0.25297752 -0.46398887 0.24302536 -0.46158728
		 0.2331003 -0.46093825 0.22321334 -0.46014652 0.22319347 -0.46636438 0.2430751 -0.46333987
		 0.23313957 -0.46181455 0.22323409 -0.46204183 0.21336789 -0.46492353 0.23317271 -0.46269083
		 0.22325373 -0.46348268 0.2232703 -0.023983896 0.00047434634 -0.019233286 0.00035488652
		 -0.018129706 0.010200337 -0.022088528 0.010299884 -0.01397568 0.00023042923 -0.013748348
		 0.010096617 -0.017026186 0.020045787 -0.020193219 0.020125434 -0.0087178349 0.0001126196
		 -0.0093668699 0.0099984556 -0.013521075 0.019962803 -0.015922606 0.029891223 -0.018297851
		 0.029950976 -0.0039668679 1.3171191e-05 -0.005407691 0.0099155679 -0.010015845 0.019884288
		 -0.013293743 0.029829025 -0.014818966 0.039736688 -0.016402483 0.039776504 -0.0068485141
		 0.019817978 -0.010664821 0.029770106 -0.013066411 0.039695233 -0.013715446 0.049582124
		 -0.014507174 0.049602032 -0.0082893372 0.029720396 -0.011313856 0.039655924 -0.012839139
		 0.049561381 -0.012611806 0.059427559 -0.0097301006 0.039622813 -0.011962771 0.049541771
		 -0.011170983 0.049525201 0.19324619 0.38896856 0.0036814287 -0.33923954;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "675933E9-47C3-7698-D416-429B7A529C71";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:129]";
	setAttr ".ix" -type "matrix" 0 -2.8665377102804319 0 0 2.1555788334962167 0 0 0 0 0 0.33785771361609102 0
		 4.8846441008703749 9.4389437810834718 0 1;
	setAttr ".s" -type "double3" 9.9693866194462757 9.9693866194462757 9.9693866194462757 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "C30537B5-426D-A281-A09F-F3A5939D4743";
	setAttr ".uopa" yes;
	setAttr -s 168 ".uvtk[0:167]" -type "float2" 0.55924046 0.0013563782 0.55370355
		 0.010444459 0.56078893 0.044070356 0.56540304 0.036497004 0.57382208 0.024664829
		 0.5775544 0.055920668 0.56787443 0.077696264 0.57156563 0.071637541 0.58832353 -0.0017341948
		 0.58963895 0.033921473 0.58128673 0.087176502 0.57495993 0.11132219 0.57772833 0.10677817
		 0.59095442 0.069577157 0.6174655 0.0016159173 0.61392403 0.03671325 0.58501923 0.11843237
		 0.58204544 0.14494807 0.58389097 0.14191872 0.5922699 0.10523289 0.61038238 0.071810544
		 0.62317449 0.01131622 0.61868137 0.044796832 0.58875155 0.14968818 0.58913076 0.17857397
		 0.59005368 0.17705929 0.59358531 0.14088851 0.60684085 0.1069079 0.61418849 0.078277439
		 0.60332513 0.026470304 0.60214019 0.057425223 0.59248394 0.18094403 0.59621626 0.21219987
		 0.59490079 0.17654425 0.60329938 0.14200521 0.60969543 0.11175808 0.60095537 0.088380128
		 0.59975779 0.17710263 0.60520232 0.14523864 0.59977067 0.11933511 0.60070938 0.17871928
		 0.59858584 0.15029001 0.59740108 0.18124497 0.020467758 0.010812173 0.014860421 0.0014680524
		 0.0097924173 0.03659641 0.014465243 0.044383176 -0.014246643 -0.0017310611 -0.014463484
		 0.033930488 0.0047244132 0.071724743 0.0084626973 0.077954143 0.00045958161 0.025423046
		 -0.0022082925 0.0565589 -0.043363452 0.0015108236 -0.038727522 0.036632054 -0.014680326
		 0.069591999 -0.00034359097 0.10685316 0.0024601221 0.11152518 -0.004876107 0.087694734
		 -0.04899919 0.010955854 -0.043423891 0.044502907 -0.034091532 0.071753263 -0.014897108
		 0.10525361 -0.0054116249 0.14198148 -0.0035423934 0.14509618 -0.0075439513 0.11883065
		 -0.02903527 0.02572063 -0.026787341 0.056806885 -0.037848651 0.078049958 -0.029455543
		 0.10687453 -0.01511389 0.1409151 -0.010479569 0.17710984 -0.0095449984 0.17866719
		 -0.010211855 0.14996648 -0.024539351 0.087893128 -0.032273352 0.11159703 -0.024819493
		 0.14199573 -0.015330732 0.17657667 -0.015547514 0.21223819 -0.012879759 0.18110234
		 -0.022291422 0.11897945 -0.026698112 0.14514405 -0.020183504 0.17711693 -0.020043492
		 0.15006566 -0.021122873 0.17869115 -0.017795563 0.18115193 -0.41460729 0.042885065
		 -0.42192364 -0.027943254 -0.4219777 0.0025550127 -0.40053394 0.08909899 -0.41445047
		 -0.045624435 -0.38113517 0.13667327 -0.40028954 -0.048757911 -0.35830989 0.1809507
		 -0.38082722 -0.037036538 -0.33429229 0.21759731 -0.35796845 -0.011608124 -0.31143367
		 0.24302572 -0.33395088 0.025038481 -0.29197133 0.25474709 -0.31112564 0.06931597
		 -0.27781034 0.25161374 -0.29172695 0.11689013 -0.27033722 0.23393255 -0.27765346
		 0.16310412 -0.27028316 0.20343411 -0.12058607 0.17539603 -0.1480227 0.17706752 -0.1562525
		 0.14724547 -0.13338867 0.14585257 -0.17831933 0.17880881 -0.18149975 0.1486966 -0.16448236
		 0.11742386 -0.1461913 0.11630955 -0.20861813 0.18045717 -0.20674872 0.15007019 -0.18468015
		 0.11858472 -0.17271218 0.08760187 -0.15899387 0.086766183 -0.23606122 0.18184853
		 -0.22961797 0.15122974 -0.20487937 0.11968365 -0.18786055 0.088472545 -0.18094207
		 0.057779923 -0.1717965 0.057222798 -0.22317472 0.12061122 -0.2030099 0.089296728
		 -0.19104095 0.058360383 -0.18917188 0.027958311 -0.18459906 0.027679734 -0.21673146
		 0.089992434 -0.20114052 0.058909819 -0.19422132 0.028248541 -0.19740172 -0.0018636063
		 -0.2102882 0.059373632 -0.19927114 0.028523259 -0.20384493 0.028755166 -0.5114122
		 0.0047235866 -0.48397559 0.0030521522 -0.47574571 0.032873981 -0.49860966 0.034266867
		 -0.45367888 0.0013107981 -0.45049852 0.031422876 -0.46751595 0.062695831 -0.485807
		 0.06381011 -0.42338011 -0.00033753272 -0.42524958 0.030049242 -0.44731808 0.061534911
		 -0.45928603 0.092517674 -0.47300446 0.09335342 -0.39593709 -0.0017289396 -0.40238047
		 0.028889738 -0.42711908 0.06043604 -0.44413772 0.091647029 -0.45105627 0.12233955
		 -0.46020186 0.12289667 -0.40882364 0.059508413 -0.42898837 0.090822846 -0.44095737
		 0.12175906 -0.44282645 0.15216136 -0.4473992 0.15243995 -0.41526684 0.09012717 -0.43085778
		 0.12120962 -0.43777692 0.1518712 -0.43459657 0.18198317 -0.42171019 0.12074584 -0.43272728
		 0.15159643 -0.42815346 0.15136451;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "64D183D5-4343-0F90-0EBD-9EB757059B9D";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:159]";
	setAttr ".ix" -type "matrix" 0.81969173627672665 0 0 0 0 1.0344569340740251 0 0 0 0 0.81969173627672665 0
		 0 6.2730723675144571 0 1;
	setAttr ".s" -type "double3" 12.35188100329292 12.35188100329292 12.35188100329292 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "09A2C8B8-4023-E0FD-9583-B384A3E20C53";
	setAttr ".uopa" yes;
	setAttr -s 142 ".tk[0:141]" -type "float3"  -9.9920072e-16 -2.43257761
		 2.4980018e-16 -9.9920072e-16 -2.43257761 4.9960036e-16 -4.9960036e-16 -2.43257761
		 9.9920072e-16 -2.4980018e-16 -2.43257761 9.9920072e-16 2.2186713e-31 -2.43257761
		 9.9920072e-16 2.4980018e-16 -2.43257761 9.9920072e-16 4.9960036e-16 -2.43257761 9.9920072e-16
		 9.9920072e-16 -2.43257761 4.9960036e-16 9.9920072e-16 -2.43257761 2.4980018e-16 9.9920072e-16
		 -2.43257761 -1.1093356e-31 9.9920072e-16 -2.43257761 -2.4980018e-16 9.9920072e-16
		 -2.43257761 -4.9960036e-16 4.9960036e-16 -2.43257761 -9.9920072e-16 2.4980018e-16
		 -2.43257761 -9.9920072e-16 -5.5466782e-32 -2.43257761 -9.9920072e-16 -2.4980018e-16
		 -2.43257761 -9.9920072e-16 -4.9960036e-16 -2.43257761 -9.9920072e-16 -9.9920072e-16
		 -2.43257761 -4.9960036e-16 -9.9920072e-16 -2.43257761 -2.4980018e-16 -9.9920072e-16
		 -2.43257761 0 -9.9920072e-16 -2.30655313 4.9960036e-16 -9.9920072e-16 -2.30655313
		 9.9920072e-16 -9.9920072e-16 -2.30655313 9.9920072e-16 -4.9960036e-16 -2.30655313
		 9.9920072e-16 0 -2.30655313 1.9984014e-15 4.9960036e-16 -2.30655313 9.9920072e-16
		 9.9920072e-16 -2.30655313 9.9920072e-16 9.9920072e-16 -2.30655313 9.9920072e-16 9.9920072e-16
		 -2.30655313 4.9960036e-16 1.9984014e-15 -2.30655313 0 9.9920072e-16 -2.30655313 -4.9960036e-16
		 9.9920072e-16 -2.30655313 -9.9920072e-16 9.9920072e-16 -2.30655313 -9.9920072e-16
		 4.9960036e-16 -2.30655313 -9.9920072e-16 2.9778502e-23 -2.30655313 -1.9984014e-15
		 -4.9960036e-16 -2.30655313 -9.9920072e-16 -9.9920072e-16 -2.30655313 -9.9920072e-16
		 -9.9920072e-16 -2.30655313 -9.9920072e-16 -9.9920072e-16 -2.30655313 -4.9960036e-16
		 -9.9920072e-16 -2.30655313 0 -9.9920072e-16 -1.15327656 4.9960036e-16 -9.9920072e-16
		 -1.15327656 9.9920072e-16 -9.9920072e-16 -1.15327656 9.9920072e-16 -4.9960036e-16
		 -1.15327656 9.9920072e-16 0 -1.15327656 1.9984014e-15 4.9960036e-16 -1.15327656 9.9920072e-16
		 9.9920072e-16 -1.15327656 9.9920072e-16 9.9920072e-16 -1.15327656 9.9920072e-16 9.9920072e-16
		 -1.15327656 4.9960036e-16 1.9984014e-15 -1.15327656 0 9.9920072e-16 -1.15327656 -4.9960036e-16
		 9.9920072e-16 -1.15327656 -9.9920072e-16 9.9920072e-16 -1.15327656 -9.9920072e-16
		 4.9960036e-16 -1.15327656 -9.9920072e-16 2.9778502e-23 -1.15327656 -1.9984014e-15
		 -4.9960036e-16 -1.15327656 -9.9920072e-16 -9.9920072e-16 -1.15327656 -9.9920072e-16
		 -9.9920072e-16 -1.15327656 -9.9920072e-16 -9.9920072e-16 -1.15327656 -4.9960036e-16
		 -9.9920072e-16 -1.15327656 0 -9.9920072e-16 0 4.9960036e-16 -9.9920072e-16 0 9.9920072e-16
		 -9.9920072e-16 0 9.9920072e-16 -4.9960036e-16 0 9.9920072e-16 0 0 1.9984014e-15 4.9960036e-16
		 0 9.9920072e-16 9.9920072e-16 0 9.9920072e-16 9.9920072e-16 0 9.9920072e-16 9.9920072e-16
		 0 4.9960036e-16 1.9984014e-15 0 0 9.9920072e-16 0 -4.9960036e-16 9.9920072e-16 0
		 -9.9920072e-16 9.9920072e-16 0 -9.9920072e-16 4.9960036e-16 0 -9.9920072e-16 2.9778502e-23
		 0 -1.9984014e-15 -4.9960036e-16 0 -9.9920072e-16 -9.9920072e-16 0 -9.9920072e-16
		 -9.9920072e-16 0 -9.9920072e-16 -9.9920072e-16 0 -4.9960036e-16 -9.9920072e-16 0
		 0 -9.9920072e-16 1.15327656 4.9960036e-16 -9.9920072e-16 1.15327656 9.9920072e-16
		 -9.9920072e-16 1.15327656 9.9920072e-16 -4.9960036e-16 1.15327656 9.9920072e-16 0
		 1.15327656 1.9984014e-15 4.9960036e-16 1.15327656 9.9920072e-16 9.9920072e-16 1.15327656
		 9.9920072e-16 9.9920072e-16 1.15327656 9.9920072e-16 9.9920072e-16 1.15327656 4.9960036e-16
		 1.9984014e-15 1.15327656 0 9.9920072e-16 1.15327656 -4.9960036e-16 9.9920072e-16
		 1.15327656 -9.9920072e-16 9.9920072e-16 1.15327656 -9.9920072e-16 4.9960036e-16 1.15327656
		 -9.9920072e-16 2.9778502e-23 1.15327656 -1.9984014e-15 -4.9960036e-16 1.15327656
		 -9.9920072e-16 -9.9920072e-16 1.15327656 -9.9920072e-16 -9.9920072e-16 1.15327656
		 -9.9920072e-16 -9.9920072e-16 1.15327656 -4.9960036e-16 -9.9920072e-16 1.15327656
		 0 -9.9920072e-16 2.30655313 4.9960036e-16 -9.9920072e-16 2.30655313 9.9920072e-16
		 -9.9920072e-16 2.30655313 9.9920072e-16 -4.9960036e-16 2.30655313 9.9920072e-16 0
		 2.30655313 1.9984014e-15 4.9960036e-16 2.30655313 9.9920072e-16 9.9920072e-16 2.30655313
		 9.9920072e-16 9.9920072e-16 2.30655313 9.9920072e-16 9.9920072e-16 2.30655313 4.9960036e-16
		 1.9984014e-15 2.30655313 0 9.9920072e-16 2.30655313 -4.9960036e-16 9.9920072e-16
		 2.30655313 -9.9920072e-16 9.9920072e-16 2.30655313 -9.9920072e-16 4.9960036e-16 2.30655313
		 -9.9920072e-16 2.9778502e-23 2.30655313 -1.9984014e-15 -4.9960036e-16 2.30655313
		 -9.9920072e-16 -9.9920072e-16 2.30655313 -9.9920072e-16 -9.9920072e-16 2.30655313
		 -9.9920072e-16 -9.9920072e-16 2.30655313 -4.9960036e-16 -9.9920072e-16 2.30655313
		 0 -9.9920072e-16 2.43257761 2.4980018e-16 -9.9920072e-16 2.43257761 4.9960036e-16
		 -4.9960036e-16 2.43257761 9.9920072e-16 -2.4980018e-16 2.43257761 9.9920072e-16 2.2186713e-31
		 2.43257761 9.9920072e-16 2.4980018e-16 2.43257761 9.9920072e-16 4.9960036e-16 2.43257761
		 9.9920072e-16 9.9920072e-16 2.43257761 4.9960036e-16 9.9920072e-16 2.43257761 2.4980018e-16
		 9.9920072e-16 2.43257761 -1.1093356e-31 9.9920072e-16 2.43257761 -2.4980018e-16 9.9920072e-16
		 2.43257761 -4.9960036e-16 4.9960036e-16 2.43257761 -9.9920072e-16 2.4980018e-16 2.43257761
		 -9.9920072e-16 -5.5466782e-32 2.43257761 -9.9920072e-16 -2.4980018e-16 2.43257761
		 -9.9920072e-16 -4.9960036e-16 2.43257761 -9.9920072e-16 -9.9920072e-16 2.43257761
		 -4.9960036e-16 -9.9920072e-16 2.43257761 -2.4980018e-16 -9.9920072e-16 2.43257761
		 0 0 -2.48477864 0 0 2.48477864 0;
createNode polyAutoProj -n "polyAutoProj7";
	rename -uid "103AE72D-45BE-F696-14B1-BC9E3757CF26";
	setAttr ".cch" yes;
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:129]";
	setAttr ".ix" -type "matrix" 0 -2.8665377102804319 0 0 2.1555788334962167 0 0 0 0 0 0.33785771361609102 0
		 4.8846441008703749 9.4389437810834718 0 1;
	setAttr ".s" -type "double3" 12.35188100329292 12.35188100329292 12.35188100329292 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "7639B57E-4B09-E2BF-102A-9C9CAB86AA2F";
	setAttr ".uopa" yes;
	setAttr -s 204 ".uvtk[0:203]" -type "float2" 0.83425748 0.0028059781 0.83371568
		 0.0020562056 0.83343732 0.0024763159 0.83412355 0.0026707985 0.83507848 -0.0019730164
		 0.83407289 0.0015059598 0.83395302 0.002192568 0.83534467 0.0012005866 0.83601445
		 0.0012440085 0.83520472 0.0030726055 0.83543575 0.0027671903 0.83587259 0.001157254
		 0.83724952 -7.6055527e-05 0.83792156 -3.3289194e-05 0.83731353 0.0012869835 0.8361609
		 0.0028630756 0.83674598 0.0027579963 0.83777744 -0.00011882186 0.83916807 -0.0013524294
		 0.83983642 -0.0013104677 0.83922428 9.4175339e-06 0.8386122 0.0013294518 0.83672756
		 0.002185802 0.83742613 0.0026454479 0.83969826 -0.0013942122 0.84102249 -0.0026265383
		 0.8417027 -0.0027390718 0.84113503 -0.0012680292 0.84052706 5.2213669e-05 0.83928061
		 0.0013714135 0.83638537 0.0017032484 0.83690822 0.0024415366 0.84154028 -0.0024226308
		 0.841721 -0.0021668673 0.84228778 -0.0028441548 0.84301281 -0.0027483106 0.84243411
		 -0.0012250543 0.8411991 9.4950199e-05 0.8387503 0.0014131367 0.84206319 -0.0016843081
		 0.84337008 0.0019919872 0.8432439 -0.0030536652 0.84432507 -0.0026518703 0.84310395
		 -0.0011816621 0.84067112 0.00013774633 0.84419107 -0.0027870536 0.84501135 -0.0024574399
		 0.84257597 -0.0011382699 0.84473282 -0.0020372868 0.84449553 -0.0021736622 0.84437579
		 -0.0014870167 0.83403707 0.0021855403 0.83347034 0.002862826 0.83405536 0.0027577505
		 0.83473545 0.0026451834 0.83238804 -0.0019732574 0.83251417 0.003072367 0.83274513
		 0.0027669594 0.83592087 0.0013292432 0.83658916 0.0013711751 0.83369488 0.0017029746
		 0.83421773 0.0024412535 0.83156699 0.0028057536 0.83143288 0.0026705824 0.8346222
		 0.0012868047 0.83783489 5.209446e-05 0.83850694 9.483099e-05 0.83605897 0.0014128983
		 0.83102524 0.0020559914 0.83074677 0.0024761185 0.83332306 0.0012438297 0.83653218
		 9.3579292e-06 0.83974123 -0.0012252331 0.84041107 -0.0011818409 0.83797908 0.00013756752
		 0.83138239 0.0015057595 0.83126241 0.0021923818 0.8326534 0.0012004375 0.8352294
		 -3.3408403e-05 0.83844215 -0.0012681484 0.84163141 -0.0026519299 0.84231764 -0.0024574995
		 0.83988315 -0.0011385083 0.8331812 0.001157105 0.83455747 -7.6204538e-05 0.83714354
		 -0.0013105273 0.84031922 -0.0027483106 0.84149742 -0.0027870536 0.84203917 -0.0020372868
		 0.841802 -0.0021737218 0.83508533 -0.00011894107 0.83647519 -0.001352489 0.83900899
		 -0.0027391315 0.84055018 -0.0030536652 0.84067637 0.0019919872 0.84168208 -0.0014870763
		 0.83700538 -0.0013942122 0.83832896 -0.0026265383 0.83959407 -0.0028441548 0.83884668
		 -0.0024226308 0.83902735 -0.0021668673 0.83936948 -0.0016843081 -0.12527771 -0.0022131912
		 -0.12653576 -0.0019832321 -0.12328462 -0.0038566999 -0.12443106 -0.0029100282 -0.12413295
		 -0.0038567148 -0.12443106 -0.0048034005 -0.12527773 -0.0055002049 -0.12653577 -0.0057301894
		 -0.17510372 -0.019547956 -0.16983725 -0.025842512 -0.1492513 -0.0038565649 -0.17844604
		 -0.012023409 -0.1795914 -0.0038566571 -0.17844608 0.0043100705 -0.17510381 0.011834663
		 -0.16983737 0.018129213 -0.13528201 0.018129077 -0.1405485 0.011834558 -0.11469609
		 -0.0038569095 -0.14389089 0.0043099532 -0.14503613 -0.0038567688 -0.14389095 -0.012023496
		 -0.14054862 -0.019548124 -0.1352822 -0.025842678 -0.17340551 -0.0057302639 -0.17214751
		 -0.0055002905 -0.17015445 -0.0038568797 -0.1713008 -0.0048034415 -0.17100285 -0.0038567511
		 -0.17130086 -0.0029100659 -0.17214763 -0.002213239 -0.17340568 -0.0019832968 0.85650355
		 -0.0061752796 0.85699087 -0.0064844489 0.85663968 -0.0067104101 0.85596144 -0.0065568089
		 0.85789609 -0.0065882206 0.85794938 -0.0067715645 0.85727745 -0.0053621531 0.85660607
		 -0.0053479075 0.85879648 -0.0064932108 0.85925847 -0.0067393184 0.85857922 -0.0053761601
		 0.85789722 -0.0040530562 0.85722452 -0.0040391684 0.85926867 -0.0061948895 0.85993505
		 -0.0066138506 0.8598814 -0.0053899288 0.85920072 -0.0040669441 0.85852003 -0.0027439594
		 0.85784733 -0.0027302504 0.8605541 -0.0054036379 0.86050427 -0.004080832 0.85982221
		 -0.0027577281 0.85914296 -0.001394622 0.85846639 -0.0015200712 0.86117691 -0.0040947199
		 0.86112404 -0.002771765 0.86045206 -0.0013623443 0.85960495 -0.0016406532 0.85913271
		 -0.0019389942 0.86179537 -0.0027859807 0.86176175 -0.0014235508 0.8605054 -0.0015456469
		 0.86244005 -0.0015771259 0.86141062 -0.0016493961 0.86189789 -0.0019585879 0.81929809
		 0.96891767 0.81156409 0.96860844 0.81498808 0.91786617 0.8259365 0.91801983 0.80335581
		 0.96850461 0.8034094 0.91780496 0.81562805 0.45692679 0.82658339 0.45694098 0.79514277
		 0.96859962 0.79183012 0.91783714 0.80404145 0.45691273 0.81625009 -0.0040518343 0.82720411
		 -0.0040378869 0.78739357 0.96889788 0.78087991 0.91796255 0.79245532 0.4568989 0.80466521
		 -0.004065752 0.81687516 -0.46503046 0.82782918 -0.46501669 0.78150117 0.45688507
		 0.79308039 -0.0040796995 0.80528897 -0.46504426 0.81750035 -0.92596877 0.8284505
		 -0.92609417 0.78212625 -0.004093647 0.79370242 -0.46505833 0.80592108 -0.92593652
		 0.81418765 -0.97673118 0.82193679 -0.9770295 0.78274697 -0.4650726 0.7943424 -0.92599779
		 0.8059746 -0.97663623 0.78339386 -0.92615139 0.79776633 -0.97674 0.79003227 -0.97704923;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "8D9F1CF7-4232-2CD0-818D-8B97168D8BDF";
	setAttr ".uopa" yes;
	setAttr -s 168 ".uvtk[0:167]" -type "float2" 0.59448701 0.0011537289 0.58778381
		 0.0099253887 0.59510028 0.038622141 0.60068643 0.031312481 0.60612315 0.023650644
		 0.61038303 0.05005987 0.60241681 0.067318916 0.60688555 0.061471134 0.62406439 -0.0018292377
		 0.62533408 0.028826624 0.61464286 0.076469064 0.60973328 0.096015662 0.61308497 0.091629863
		 0.62660378 0.059482485 0.65369862 0.0014042461 0.65002918 0.031521201 0.61890304
		 0.1028783 0.61704975 0.12471244 0.61928415 0.12178853 0.62787354 0.090138376 0.64635998
		 0.061638147 0.66056794 0.010766839 0.65575373 0.03932336 0.62316293 0.12928751 0.62436622
		 0.15340912 0.62548351 0.1519472 0.62914324 0.12079421 0.6426906 0.091755122 0.65093958
		 0.067879885 0.64248836 0.025393341 0.64068753 0.051512107 0.62742281 0.15569669 0.63168269
		 0.1821059 0.630413 0.15145004 0.6390214 0.12187204 0.64612538 0.096436411 0.63888639
		 0.077630877 0.6353519 0.15198892 0.64131117 0.12499288 0.6370855 0.10374963 0.63649696
		 0.15354937 0.63528454 0.12986842 0.63348365 0.15598714 0.062117398 0.010766541 0.055247843
		 0.0014041315 0.051577747 0.031521112 0.057302237 0.039323121 0.025613725 -0.0018292749
		 0.026882648 0.028826594 0.047907799 0.061638087 0.052487284 0.067879707 0.04403767
		 0.025392765 0.042235851 0.05151163 -0.0039633512 0.001153809 0.002235055 0.03131251
		 0.028151572 0.059482485 0.044237584 0.091755062 0.047672242 0.096436292 0.040434152
		 0.07763052 -0.010666788 0.009925657 -0.0033511519 0.038622379 0.0084334612 0.061471224
		 0.029420495 0.090138346 0.040567517 0.12187201 0.042857289 0.12499285 0.038632482
		 0.10374939 0.0076724291 0.023651194 0.011931658 0.050060317 0.0039645433 0.067319095
		 0.014631927 0.091629893 0.030689418 0.12079418 0.036897421 0.15198889 0.038042307
		 0.1535494 0.036830664 0.12986821 0.016190767 0.076469451 0.011280239 0.096015841
		 0.020830452 0.12178862 0.031958342 0.15145001 0.033227265 0.18210587 0.035028994
		 0.15598705 0.020449877 0.1028786 0.018595934 0.12471253 0.027028859 0.15194717 0.024708986
		 0.12928766 0.025911629 0.15340921 0.028968155 0.15569678 -0.48052788 0.046672463
		 -0.48758951 -0.024703324 -0.48740304 0.0062398911 -0.46763703 0.092636764 -0.481069
		 -0.043128133 -0.4499923 0.1396333 -0.46847981 -0.047231197 -0.4293209 0.18306178
		 -0.45105433 -0.036610603 -0.40764627 0.2186712 -0.43049812 -0.012306094 -0.38709015
		 0.24297559 -0.40882352 0.023303211 -0.36966467 0.25359625 -0.38815206 0.066731691
		 -0.35707539 0.24949336 -0.37050742 0.11372828 -0.35055488 0.23106843 -0.35761654
		 0.15969253 -0.35074139 0.20012516 -0.13033828 0.14667511 -0.15546039 0.14828837 -0.16315255
		 0.12326324 -0.14221752 0.12191886 -0.18319556 0.1499691 -0.18626522 0.12466383 -0.17084484
		 0.09823814 -0.15409665 0.097162634 -0.21093273 0.15156007 -0.20937954 0.12598962
		 -0.1893349 0.099358588 -0.17853703 0.073213011 -0.16597588 0.072406381 -0.23606114
		 0.15290302 -0.23031986 0.12710875 -0.20782636 0.10041925 -0.19240455 0.074053377
		 -0.1862292 0.048187852 -0.1778551 0.047650099 -0.22457859 0.10131457 -0.20627315
		 0.074848861 -0.19547421 0.048748106 -0.19392136 0.0231627 -0.18973432 0.022893839
		 -0.21883729 0.075520337 -0.2047199 0.049278438 -0.19854389 0.023442812 -0.20161355
		 -0.0018624053 -0.21309608 0.049726069 -0.20316672 0.023707978 -0.20735478 0.023931809
		 -0.098237634 0.79438859 -0.20144215 0.79600173 -0.22356004 0.55507183 -0.13755637
		 0.55372745 -0.31573206 0.79768246 -0.31880167 0.55647242 -0.24567801 0.31414181 -0.17687511
		 0.3130663 -0.43002415 0.79927343 -0.41404507 0.55779815 -0.32187131 0.31526226 -0.26779598
		 0.073211819 -0.2161938 0.072405249 -0.53323472 0.80061638 -0.500054 0.55891728 -0.39806598
		 0.31632292 -0.32494092 0.074052185 -0.28991392 -0.16771817 -0.25551245 -0.16825593
		 -0.46687308 0.31721818 -0.38208702 0.074847639 -0.32801056 -0.16715795 -0.31203184
		 -0.40864816 -0.29483116 -0.40891704 -0.43369231 0.075519115 -0.36610791 -0.16662765
		 -0.3310802 -0.40836808 -0.33414981 -0.64957815 -0.40051147 -0.16617998 -0.35012889
		 -0.4081029 -0.36733058 -0.40787908;
createNode lambert -n "lambert2";
	rename -uid "3BA034C2-47DB-F0E6-6EE9-FAB9C1ED91EC";
	setAttr ".c" -type "float3" 1 1 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "6B5B5205-45C7-B67D-2E9D-CBAC27631C2E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "8E6A1F6C-4565-2113-4447-1ABA08B7BCA9";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "0147527F-4CB0-BB3D-0C57-C2B1D365D860";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -422.61903082567619 ;
	setAttr ".tgi[0].vh" -type "double2" 102.38094831269902 44.047617297323995 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 90;
	setAttr ".tgi[0].ni[0].y" -50;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -217.14285278320312;
	setAttr ".tgi[0].ni[1].y" -50;
	setAttr ".tgi[0].ni[1].nvs" 1923;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
connectAttr "polyTweakUV13.out" "Flag_StemShape.i";
connectAttr "polyTweakUV13.uvtk[0]" "Flag_StemShape.uvst[0].uvtw";
connectAttr "polyTweakUV14.out" "Flag_BannerShape.i";
connectAttr "polyTweakUV14.uvtk[0]" "Flag_BannerShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCylinder1.out" "polyAutoProj1.ip";
connectAttr "Flag_StemShape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyTweakUV1.ip";
connectAttr "polyCone1.out" "polyAutoProj2.ip";
connectAttr "Flag_BannerShape.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSew1.ip";
connectAttr "polyMapSew1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapSew2.ip";
connectAttr "polyMapSew2.out" "polyMapSew3.ip";
connectAttr "polyMapSew3.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapSew4.ip";
connectAttr "polyMapSew4.out" "polyMapSew5.ip";
connectAttr "polyMapSew5.out" "polyMapSew6.ip";
connectAttr "polyMapSew6.out" "polyMapSew7.ip";
connectAttr "polyMapSew7.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyAutoProj3.ip";
connectAttr "Flag_BannerShape.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj3.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polyAutoProj4.ip";
connectAttr "Flag_BannerShape.wm" "polyAutoProj4.mp";
connectAttr "polyAutoProj4.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapSew8.ip";
connectAttr "polyMapSew8.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapSew9.ip";
connectAttr "polyMapSew9.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyAutoProj5.ip";
connectAttr "Flag_BannerShape.wm" "polyAutoProj5.mp";
connectAttr "polyAutoProj5.out" "polyTweakUV12.ip";
connectAttr "polyTweak1.out" "polyAutoProj6.ip";
connectAttr "Flag_StemShape.wm" "polyAutoProj6.mp";
connectAttr "polyTweakUV1.out" "polyTweak1.ip";
connectAttr "polyTweakUV12.out" "polyAutoProj7.ip";
connectAttr "Flag_BannerShape.wm" "polyAutoProj7.mp";
connectAttr "polyAutoProj6.out" "polyTweakUV13.ip";
connectAttr "polyAutoProj7.out" "polyTweakUV14.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "Flag_BannerShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "lambert2.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Flag_StemShape.iog" ":initialShadingGroup.dsm" -na;
// End of Flag.ma
