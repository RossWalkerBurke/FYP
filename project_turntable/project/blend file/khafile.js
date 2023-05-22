// Auto-generated
let project = new Project('turntabletest_1_0_13');

project.addSources('Sources');
project.addLibrary("C:/Users/c00249184/Downloads/ArmorySDK2305/armsdk/armory");
project.addLibrary("C:/Users/c00249184/Downloads/ArmorySDK2305/armsdk/iron");
project.addParameter('-dce full');
project.addParameter('armory.trait.internal.UniformsManager');
project.addParameter("--macro keep('armory.trait.internal.UniformsManager')");
project.addParameter('arm.node.Zoom');
project.addParameter("--macro keep('arm.node.Zoom')");
project.addParameter('arm.MyTrait');
project.addParameter("--macro keep('arm.MyTrait')");
project.addShaders("build_turntabletest/compiled/Shaders/*.glsl", { noembed: false});
project.addShaders("build_turntabletest/compiled/Hlsl/*.glsl", { noprocessing: true, noembed: false });
project.addAssets("build_turntabletest/compiled/Assets/**", { notinlist: true , destination: "data/{name}"});
project.addAssets("build_turntabletest/compiled/Shaders/*.arm", { notinlist: true , destination: "data/{name}"});
project.addAssets("C:/Users/c00249184/Downloads/ArmorySDK2305/armsdk/armory/Assets/brdf.png", { notinlist: true , destination: "data/{name}"});
project.addAssets("C:/Users/c00249184/Downloads/ArmorySDK2305/armsdk/armory/Assets/smaa_area.png", { notinlist: true , destination: "data/{name}"});
project.addAssets("C:/Users/c00249184/Downloads/ArmorySDK2305/armsdk/armory/Assets/smaa_search.png", { notinlist: true , destination: "data/{name}"});
project.addDefine('arm_deferred');
project.addDefine('arm_csm');
project.addDefine('rp_hdr');
project.addDefine('rp_renderer=Deferred');
project.addDefine('rp_shadowmap');
project.addDefine('rp_shadowmap_cascade=1024');
project.addDefine('rp_shadowmap_cube=512');
project.addDefine('rp_background=World');
project.addDefine('rp_render_to_texture');
project.addDefine('rp_compositornodes');
project.addDefine('rp_antialiasing=SMAA');
project.addDefine('rp_supersampling=1');
project.addDefine('rp_ssgi=SSAO');
project.addDefine('js-es=6');
project.addDefine('arm_published');
project.addDefine('arm_data_dir');
project.addDefine('arm_soundcompress');
project.addDefine('arm_audio');
project.addDefine('arm_skin');
project.addDefine('arm_morph_target');
project.addDefine('arm_particles');
project.addDefine('arm_loadscreen');
project.addDefine('armory');


resolve(project);
