'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".dart_tool/dartpad/web_plugin_registrant.dart": "5256cc49698b6509f42403c1f86ecb1b",
".dart_tool/extension_discovery/vs_code.json": "3ea7da5743124a3252fdacd54e6153ef",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/app.dill": "fd41f5931d5a3892705d414d547047d2",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/app.dill.deps": "1f399736537372240bfb358872dd5e80",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/dart2js.d": "9dadabdfb56baf1d46071ede73843867",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/dart2js.stamp": "92d79cee4c59ef34a60eddba130497ed",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/flutter_assets.d": "a893025a8f02315940ec7f6d7e2eaf37",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/gen_localizations.stamp": "436d2f2faeb7041740ee3f49a985d62a",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/main.dart": "84ea408d364ca1b27c1865ea526b66cd",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/main.dart.js": "2c6b78803c4d61a4babf6b037122aacb",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/main.dart.js.deps": "bf69978009285e3442754b759ec1237b",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/outputs.json": "a120b9498b26a41b81c9f53f6b15ae76",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/service_worker.d": "20b518dcb271ed3240d55e0337dfecd5",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/web_entrypoint.stamp": "27ea2906152f901d2e16e3406581d056",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/web_plugin_registrant.dart": "5256cc49698b6509f42403c1f86ecb1b",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/web_release_bundle.stamp": "63418a12b8bc7ccb488dc9a10a4bb698",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/web_resources.d": "115c198ae90a31fd7e0ede083f019258",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/web_service_worker.stamp": "e54528ecbbf23269d2ef781f034d4621",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/web_static_assets.stamp": "1ffbeb3e58ea121d974295f787002399",
".dart_tool/flutter_build/69911b73296d0d0a9e6741eaa8a40d8b/web_templated_files.stamp": "2e4ccca8b68ab33b6201f8cd639eb6d7",
".dart_tool/package_config.json": "1db792b3e7bcd746c682b8507a13c7c8",
".dart_tool/package_config_subset": "563f45507a0ed4742295444e65c7f8eb",
".dart_tool/package_graph.json": "69487e26fe858425bdccf6a8f416bea4",
".dart_tool/version": "dad3de82d79634d524640b8205f0d7e0",
".git/COMMIT_EDITMSG": "2a725a2a3dfe4b80e07a19bbb3706c5b",
".git/config": "fe2f0b37d02015280005f8fc90625002",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/FETCH_HEAD": "ae41afda06639b9ce9794f7e5fbab0c2",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "09756a6d2d17cb26913d458f25694b5c",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "3f1ec329695c90079ca21fdc69aee5e5",
".git/logs/refs/heads/main": "961bb2ac82a7ed027b60fb5034fcb8f8",
".git/logs/refs/remotes/origin/main": "b71cb537c34f92dfbe427859906b6840",
".git/objects/01/d3ce0d0e5710604db3e0afd6d385063a22a281": "23540ce2de34084c4f6acd1746c5c747",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/04/e8add9c8383940232ad3a8d16aa05835e3b148": "c23bb7e96656909484e2cedd2d2f7123",
".git/objects/06/bb7eee3edc3a53a2f26c27b706ed7cdd0bfe87": "afa21980cad49ce40e820b33bde98b4d",
".git/objects/0a/cdca51513ef6a4fcda4c57d0cb5cc3d49a1619": "a39b5b4ad71f677d4dc37f620b141acc",
".git/objects/11/9f7cec5402cc8239d4e7664ef5606118701de2": "97c651dd2504057757f3a721d5f7af4e",
".git/objects/14/868dbbc5a42de6f100f51ce28473ee334d959b": "dc2cc0d342a518928da7e87ccb4d9523",
".git/objects/1a/d7683b343914430a62157ebf451b9b2aa95cac": "94fdc36a022769ae6a8c6c98e87b3452",
".git/objects/1c/d37cf206cbbdb833f1c27c741b1a4ab039a524": "9bcbe25c3dbf4b3aa383ea6dc857820f",
".git/objects/20/54fdbb5fe959e28dc75f314b018155dc2c3fc3": "408df516f51a6d9a3f97d6f0759eccf6",
".git/objects/20/c5b5b81b47cc092ec9e07e72f8e647a616b6bb": "59de8a8953dde68cf4943efe0ee96969",
".git/objects/22/a7a6c39b1533e5fb8c72cb36e1537d98397004": "b37dc37091383b177d540db973150c64",
".git/objects/26/a71b85cdee978862d8d85beb945cb9471938a5": "bc7577853ec8a7f539a802c93aae6cf9",
".git/objects/31/2ee3e8e95350fbf94eaf83b0baaa3a6c7c236e": "642c0ce483a500df56bec03d9006beac",
".git/objects/40/b98f9ac5cfdbeedcae56538863f963e7f7a382": "bb572523d6f0548545cacde6ed5b21ee",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4c/51fb2d35630595c50f37c2bf5e1ceaf14c1a1e": "a20985c22880b353a0e347c2c6382997",
".git/objects/53/18a6956a86af56edbf5d2c8fdd654bcc943e88": "a686c83ba0910f09872b90fd86a98a8f",
".git/objects/53/3d2508cc1abb665366c7c8368963561d8c24e0": "4592c949830452e9c2bb87f305940304",
".git/objects/57/5ae317ea0505ab8ec23a52d12679f3f6ad2bf5": "658b0fd0ae28237abf46014f3752e05e",
".git/objects/57/9030cec73cdc3ffe548a62a67af4b0e63a525e": "6ba045357fd1d80316d878bd6eb9393a",
".git/objects/59/fcb5dbe651eb5d4fa8a837bb5b1eaad2452f31": "886f90c72cb6cea293ad01d0fc27dcf8",
".git/objects/5e/169b796923a2be8e47f7b21795d2b710a9778f": "2cce85dfab7aaae78ce13cd5eb648013",
".git/objects/60/1326e612c411c7ccc503878fdf1f3e3094dd18": "f9ca93cb4e7c8060ca9600694715bf53",
".git/objects/60/3b51ee027159eff4191240ba4171633cbf2ff7": "a262039b7ade7b1fb0cc250e63d346e9",
".git/objects/64/66fbd7650741190f556427d23652ecb0c27dc5": "09ded1a081438ce741090cd8dcb87b26",
".git/objects/69/dd618354fa4dade8a26e0fd18f5e87dd079236": "8cc17911af57a5f6dc0b9ee255bb1a93",
".git/objects/6b/16cd675d5b40dc243a57960d7fcbff21d8f814": "ae9c58c3e002a0ce2e89e8866a683487",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6c/bc4751506c966f8c467178283a0ac32b3a7d06": "e52107a0fa131a427976e940a47c7e75",
".git/objects/70/17419ddee1bfdb578a436ecf18dae99d8db475": "73277d46b1d9666a4676ea5e4cf4ba1d",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/73/c63bcf89a317ff882ba74ecb132b01c374a66f": "6ae390f0843274091d1e2838d9399c51",
".git/objects/77/533b42092a98a19f1bc96e1cba5ceb70433427": "26e81470336c07db649054813e14fbba",
".git/objects/7b/884d35197dec004845723e6dfbfd4545111c8b": "db2ba27c093b8893292c574a31083f1d",
".git/objects/82/95b7dba4798ccc063b12d301ad3886ebad70a6": "3819ca9430df5d559146849c33572a38",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/2a1aaf205a24e3b092f58b6ee61ddceb361b50": "836f0f01c35a0b6f8727cde7e995df90",
".git/objects/8e/3c7d6bbbef6e7cefcdd4df877e7ed0ee4af46e": "025a3d8b84f839de674cd3567fdb7b1b",
".git/objects/8f/e7af5a3e840b75b70e59c3ffda1b58e84a5a1c": "e3695ae5742d7e56a9c696f82745288d",
".git/objects/93/d9812f086a7a3ae9ec56a304a84d035365fcb3": "ed7d0723c56c4bce0f9aa1d1f1a6c431",
".git/objects/9a/4719e8b454f3e5d0e23489b11a0c3195d0bf94": "5f9457cc6e787e12cdd39f3ad381edd9",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/a9/4e532b54a0198bec76df4564dc1b9a063716b3": "979b080ba4643d358142aaacb5b5cf51",
".git/objects/ab/a5a57588f6fd9dbdcd05843783676224d34edc": "1c6a23eb44f168597ee39905640af5c2",
".git/objects/ac/7068d2a30ff4db681832fa468ae2c86aebf5da": "e840138153058e1e31fa33e7a4a03104",
".git/objects/af/6a84c219330cb8df76a306868bcbda0abbe062": "ac73d748257c07113fbb94a78ef268fe",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/bb/0ea2e84523c09add7f9624f7eef9a9e63a7628": "37610f0dd1c8ae808c56f84cdc608b75",
".git/objects/bd/47eeb1c3d372266315e5f03bb8ca029012d913": "b5555e24c676faf436e61cfc74f591aa",
".git/objects/c0/7eb701bb6a6e806f3f83cd4a7c0e5081d137c6": "56db9b5746594afce6fedfd9bf9b759f",
".git/objects/c1/95471debafc742aabdfe06b1e7f06dcf308cee": "0b60d89161f5d158b5cef660f6935fab",
".git/objects/c8/08fb85f7e1f0bf2055866aed144791a1409207": "92cdd8b3553e66b1f3185e40eb77684e",
".git/objects/ca/20e98ec9e3c804f3432e89d64df816658c4cf0": "a9ecff2cc111c39f4f3071f61654bfc8",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/7cfefdbe249b8bf90ce8244ed8fc1732fe8f73": "9c0876641083076714600718b0dab097",
".git/objects/d8/fab3c61f37e131b759b194a8e209903f929854": "80947ba7e3ae029a6bea8e21ebd25c15",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/dc/e8652088a7f82407f8d6551d1b01818d75894a": "7acdaa59b58151425a7a938b823b46a5",
".git/objects/df/7ad4e4d027c5250a3cd0432a9b96073006343c": "580451e157ed93e8812088921aee15a7",
".git/objects/e0/7ac7b837115a3d31ed52874a73bd277791e6bf": "74ebcb23eb10724ed101c9ff99cfa39f",
".git/objects/e7/7f328e2aedea25ae8d93a990b39734f8bd07ed": "8b570ae8f6e21d62b38e50fd6e70dc4b",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/e9/ebd4334373661ecc36781091a0be8cce2dabbf": "516910119b24529ee9014c7e2b364c47",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/1ab97721db56c89b7d5a172050217e63e81c43": "0a834ec5cdaaf534b30c6e2aba16bad3",
".git/objects/ee/561e6b0bf1f165f85ec286d8bf6cbd20508e68": "a6b6804b20bd6b91c7295c9c189cb849",
".git/objects/ef/8ea37ca29c515f96c4d622ab21bc0f2eaa11c4": "a727c7d033ce92a665cd805fb9a6bb0e",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f3/5e8c8d8f9ddae0bb823247e49d89ac74e8be17": "2527f7d8cf09c99636330ac87d807c0e",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/pack/pack-4fa0c30bd466be78a40f32ebe81f719ac4579167.idx": "816b23c7c0eb47f2ba9851308a137724",
".git/objects/pack/pack-4fa0c30bd466be78a40f32ebe81f719ac4579167.pack": "88ac79ed24217a3e4329b2a77a066d58",
".git/objects/pack/pack-4fa0c30bd466be78a40f32ebe81f719ac4579167.rev": "aaa0ead584d820e8e6ec7aa7ba5bb186",
".git/ORIG_HEAD": "c5ed04d30bdeaf906423ca6590cbe438",
".git/refs/heads/main": "c5ed04d30bdeaf906423ca6590cbe438",
".git/refs/remotes/origin/main": "c5ed04d30bdeaf906423ca6590cbe438",
"analysis_options.yaml": "9e65f4b9beebb674c0dc252f70a5c177",
"android/app/build.gradle.kts": "0253da6dd3019b44399c1ee6ffa2aadd",
"android/app/src/debug/AndroidManifest.xml": "820c45a25b424dd5b7388330f7548d1f",
"android/app/src/main/AndroidManifest.xml": "7aa6f34aa45234eb248f91dd55147efb",
"android/app/src/main/java/io/flutter/plugins/GeneratedPluginRegistrant.java": "a268d722a86de018a1b336935a208dfb",
"android/app/src/main/kotlin/com/example/case3ltaer/MainActivity.kt": "c8166747457bd19e772dac1083129f3c",
"android/app/src/main/res/drawable/launch_background.xml": "12c379b886cbd7e72cfee6060a0947d4",
"android/app/src/main/res/drawable-v21/launch_background.xml": "bff4b9cd8e98754261159601bd94abd3",
"android/app/src/main/res/mipmap-hdpi/ic_launcher.png": "13e9c72ec37fac220397aa819fa1ef2d",
"android/app/src/main/res/mipmap-mdpi/ic_launcher.png": "6270344430679711b81476e29878caa7",
"android/app/src/main/res/mipmap-xhdpi/ic_launcher.png": "a0a8db5985280b3679d99a820ae2db79",
"android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png": "afe1b655b9f32da22f9a4301bb8e6ba8",
"android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png": "57838d52c318faff743130c3fcfae0c6",
"android/app/src/main/res/values/styles.xml": "f8b8cfbf977690d117f4dade5d27a789",
"android/app/src/main/res/values-night/styles.xml": "c22fb29c307f2a6ae4317b3a5e577688",
"android/app/src/profile/AndroidManifest.xml": "820c45a25b424dd5b7388330f7548d1f",
"android/build.gradle.kts": "0be80ea97a9d674e007d056c9b84ed4c",
"android/gradle/wrapper/gradle-wrapper.properties": "627d3c02fe399624ffc9b39b9a5a5656",
"android/gradle.properties": "177a9eb502bc9c110a72ff0fdfd0c845",
"android/local.properties": "218fae548c6944fb6ade21e11823c932",
"android/settings.gradle.kts": "723bf1964220418391e2513e9aa13d4e",
"assets/AssetManifest.bin": "693635b5258fe5f1cda720cf224f158c",
"assets/AssetManifest.bin.json": "69a99f98c8b1fb8111c5fb961769fcd8",
"assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "b749f18a164e814e31a521dea12d38e4",
"assets/NOTICES": "fc0caef691b35e711a0acdc345eeef7d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"build/web/assets/AssetManifest.bin": "693635b5258fe5f1cda720cf224f158c",
"build/web/assets/AssetManifest.bin.json": "69a99f98c8b1fb8111c5fb961769fcd8",
"build/web/assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"build/web/assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"build/web/assets/fonts/MaterialIcons-Regular.otf": "b749f18a164e814e31a521dea12d38e4",
"build/web/assets/NOTICES": "fc0caef691b35e711a0acdc345eeef7d",
"build/web/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"build/web/assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"build/web/canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"build/web/canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"build/web/canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"build/web/canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"build/web/canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"build/web/canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"build/web/canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"build/web/canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"build/web/canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"build/web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"build/web/flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"build/web/flutter_bootstrap.js": "5686689c4cf4b76c40404b1b5d817ef7",
"build/web/icons/icon-192.png": "b9c020e6a46ba74c0ec84bc0ed6fb3d4",
"build/web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"build/web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"build/web/index.html": "72924199fbd69c31a10f2d8b2ad9e42e",
"build/web/main.dart.js": "2c6b78803c4d61a4babf6b037122aacb",
"build/web/manifest.json": "473b05a3fea7745695b1f4e683372ce8",
"build/web/version.json": "807177035a87e7a1cf2ed161dd36e91f",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "60a295b55d7ba3a238470d6673734aeb",
"icons/icon-192.png": "b9c020e6a46ba74c0ec84bc0ed6fb3d4",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "72924199fbd69c31a10f2d8b2ad9e42e",
"/": "72924199fbd69c31a10f2d8b2ad9e42e",
"ios/Flutter/AppFrameworkInfo.plist": "09ece6f06f706864eb9c343ad93b57c8",
"ios/Flutter/Debug.xcconfig": "e2f44c1946b223a1ce15cefc6ba9ad67",
"ios/Flutter/ephemeral/flutter_lldbinit": "4c0c8550624ce117572c484ae3e7d9ce",
"ios/Flutter/ephemeral/flutter_lldb_helper.py": "98fc75412162af387e2e3461e4e58094",
"ios/Flutter/flutter_export_environment.sh": "8f1044162dccf5a577c8a9aa485bb8f3",
"ios/Flutter/Generated.xcconfig": "86aba2cff9e19c96a86813bf360c0660",
"ios/Flutter/Release.xcconfig": "e2f44c1946b223a1ce15cefc6ba9ad67",
"ios/Runner/AppDelegate.swift": "e277c49e98c9f80e9e71c0524a5cb60f",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json": "31a08e429403e265cabfb31b3d65f049",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png": "c785f8932297af4acd5f5ccb7630f01c",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@1x.png": "a2f8558fb1d42514111fbbb19fb67314",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@2x.png": "2247a840b6ee72b8a069208af170e5b1",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-20x20@3x.png": "1b3b1538136316263c7092951e923e9d",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@1x.png": "be8887071dd7ec39cb754d236aa9584f",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@2x.png": "043119ef4faa026ff82bd03f241e5338",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-29x29@3x.png": "2b1452c4c1bda6177b4fbbb832df217f",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@1x.png": "2247a840b6ee72b8a069208af170e5b1",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@2x.png": "8245359312aea1b0d2412f79a07b0ca5",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-40x40@3x.png": "5b3c0902200ce596e9848f22e1f0fe0e",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@2x.png": "5b3c0902200ce596e9848f22e1f0fe0e",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-60x60@3x.png": "e419d22a37bc40ba185aca1acb6d4ac6",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@1x.png": "36c0d7a7132bdde18898ffdfcfcdc4d2",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-76x76@2x.png": "643842917530acf4c5159ae851b0baf2",
"ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-83.5x83.5@2x.png": "665cb5e3c5729da6d639d26eff47a503",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/Contents.json": "b9e927ac17345f2d5f052fe68a3487f9",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png": "978c1bee49d7ad5fc1a4d81099b13e18",
"ios/Runner/Assets.xcassets/LaunchImage.imageset/README.md": "f7ee1b402881509d197f34963e569927",
"ios/Runner/Base.lproj/LaunchScreen.storyboard": "b428258a72232cdd2cc04136ec23e656",
"ios/Runner/Base.lproj/Main.storyboard": "2b4e6b099f6729340a5ecc272c06cff7",
"ios/Runner/GeneratedPluginRegistrant.h": "decb9041b5e91a07e66f4664e5dac408",
"ios/Runner/GeneratedPluginRegistrant.m": "efe843859d073e34bc63bb1d089af6a7",
"ios/Runner/Info.plist": "09988c315d9faa538ed02ff17d12e14e",
"ios/Runner/Runner-Bridging-Header.h": "7ad7b5cea096132de13ba526b2b9efbe",
"ios/Runner.xcodeproj/project.pbxproj": "67e120f9f633a831189c55a34df0c227",
"ios/Runner.xcodeproj/project.xcworkspace/contents.xcworkspacedata": "77d69f353bbf342ad71a24f69ec331ff",
"ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "7e8ed88ea03cf8357fe1c73ae979f345",
"ios/Runner.xcodeproj/project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings": "ecb41062214c654f65e47faa71e6b52e",
"ios/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme": "843f15d9a62e0e2bda682102c02cabdc",
"ios/Runner.xcworkspace/contents.xcworkspacedata": "ac9a90958f80f9cc1d0d5301144fb629",
"ios/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "7e8ed88ea03cf8357fe1c73ae979f345",
"ios/Runner.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings": "ecb41062214c654f65e47faa71e6b52e",
"ios/RunnerTests/RunnerTests.swift": "24e5d095048eb86c30423f4e04b6e57b",
"lib/cases.dart": "7ef078e0bb83543f985d8e051c0a4369",
"lib/cases2.dart": "1142b30d7213208b75a85fd0005ea548",
"lib/main.dart": "f5312aa06183c4fb66c2a5c8b5adb76e",
"linux/CMakeLists.txt": "57b5d0785aa6b1cd426e43343274c784",
"linux/flutter/CMakeLists.txt": "2195470ce31675d31db5a37590d011f6",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/AUTHORS": "c189179be54a192fd6bcd97130ce6e7a",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/CHANGELOG.md": "f01e561bb267297f34a6dd2604077769",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/integration_test/url_launcher_test.dart": "1f57699edf542f16f7bc40dc7e4d395d",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/lib/main.dart": "b22d398ffad39eb00c3f5030f568ac48",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/linux/CMakeLists.txt": "c4417e38f3a76e0e59189809f05eab18",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/linux/flutter/CMakeLists.txt": "66a8ccde85d32f0bb51bdfcd6c3eebcc",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/linux/flutter/generated_plugins.cmake": "0ed0777552923ab7bc4a3a8b5a31840e",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/linux/main.cc": "efeff8dfcfb2d66ea857e1eee3b31856",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/linux/my_application.cc": "0f5e070b124cc4dceff48d32a18a6f6e",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/linux/my_application.h": "48cfefe80bc58c58694104e9b008a12a",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/pubspec.yaml": "9f55c0a9dc749ef76b5da75cea1ad52e",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/README.md": "99031e0915db7698934985a61f425ee8",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/example/test_driver/integration_test.dart": "1ad084e36a4cbb363a4abc230483bfe4",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/lib/src/messages.g.dart": "814815839a4b6d2924a5a8661780b0cc",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/lib/url_launcher_linux.dart": "9d67bda83980287cc1100fe7fad9e05d",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/LICENSE": "a60894397335535eb10b54e2fff9f265",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/linux/CMakeLists.txt": "a6edbc9ea0fa5b5afb33ef7ee4aea110",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/linux/include/url_launcher_linux/url_launcher_plugin.h": "701ba2a0769e7832bc972a82bf60e0d5",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/linux/messages.g.cc": "175ec5381dcb4753b1b8670ab22d719a",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/linux/messages.g.h": "51698dbea1a1e6b0240751cd91d53166",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/linux/test/url_launcher_linux_test.cc": "83262a04109cc07b173b8c1cc40eec13",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/linux/url_launcher_plugin.cc": "d0283a470c6c6686c62113d4f1f142b6",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/linux/url_launcher_plugin_private.h": "9ccb4e314e59ccd906eb662f9cfc3944",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/pigeons/copyright.txt": "2fe5797d62b68418e43f54ff5bf8f008",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/pigeons/messages.dart": "4e39dfd80616c474a9e5e8e02150dea6",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/pubspec.yaml": "f6198c145e80d040b77c50d0c8b66c53",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/README.md": "edfb062763a1671e4616bc7eb13b745b",
"linux/flutter/ephemeral/.plugin_symlinks/url_launcher_linux/test/url_launcher_linux_test.dart": "051eadae9b5e2ac97df5166979faaea8",
"linux/flutter/generated_plugins.cmake": "0ed0777552923ab7bc4a3a8b5a31840e",
"linux/flutter/generated_plugin_registrant.cc": "bd6e64368e100cca8e55173215ae1bdd",
"linux/flutter/generated_plugin_registrant.h": "d295462c9da9f7fef22dc86c34492318",
"linux/runner/CMakeLists.txt": "30cc1614b16214b66c014af09ba699eb",
"linux/runner/main.cc": "539395bcd63dba20afed0838d136189f",
"linux/runner/my_application.cc": "a8c0ac3f21d256b9f002418a4b5dff89",
"linux/runner/my_application.h": "f6b37d58752c8671078b6f660e33e8c1",
"macos/Flutter/ephemeral/Flutter-Generated.xcconfig": "6e519e6a0ed3bb6d3c3ea3f672c90100",
"macos/Flutter/ephemeral/flutter_export_environment.sh": "11ad249741ea8c0c01f3e7ce2a54c65a",
"macos/Flutter/Flutter-Debug.xcconfig": "f6991d7432e1664af118cc9531127016",
"macos/Flutter/Flutter-Release.xcconfig": "f6991d7432e1664af118cc9531127016",
"macos/Flutter/GeneratedPluginRegistrant.swift": "0cbc5e5f66935049e5e160b81da87bfa",
"macos/Runner/AppDelegate.swift": "4b52e0b89ebfef9baf45b04548c463d6",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_1024.png": "c9becc9105f8cabce934d20c7bfb6aac",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_128.png": "3ded30823804caaa5ccc944067c54a36",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_16.png": "8bf511604bc6ed0a6aeb380c5113fdcf",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_256.png": "dfe2c93d1536ae02f085cc63faa3430e",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_32.png": "8e0ae58e362a6636bdfccbc04da2c58c",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_512.png": "0ad44039155424738917502c69667699",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/app_icon_64.png": "04e7b6ef05346c70b663ca1d97de3ad5",
"macos/Runner/Assets.xcassets/AppIcon.appiconset/Contents.json": "1d48e925145d4b573a3b5d7960a1c585",
"macos/Runner/Base.lproj/MainMenu.xib": "85bdf02ea39336686f2e0ff5f52137cc",
"macos/Runner/Configs/AppInfo.xcconfig": "0c4cc96d3a18d8f992d643cf45d20dae",
"macos/Runner/Configs/Debug.xcconfig": "783e2b0e2aa72d8bc215462bb8d1569d",
"macos/Runner/Configs/Release.xcconfig": "709485d8ea7b78479bf23eb64281287d",
"macos/Runner/Configs/Warnings.xcconfig": "bbde97fb62099b5b9879fb2ffeb1a0a0",
"macos/Runner/DebugProfile.entitlements": "4ad77e84621dc5735c16180a0934fcde",
"macos/Runner/Info.plist": "9ffcbec0a18fdad9d3d606656fd46f9a",
"macos/Runner/MainFlutterWindow.swift": "93c22dae2d93f3dc1402e121901f582b",
"macos/Runner/Release.entitlements": "fc4ad575c1efec3d097fb9d40a0f702f",
"macos/Runner.xcodeproj/project.pbxproj": "8f640551e143b5e0679407bf966c1bc5",
"macos/Runner.xcodeproj/project.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "7e8ed88ea03cf8357fe1c73ae979f345",
"macos/Runner.xcodeproj/xcshareddata/xcschemes/Runner.xcscheme": "0bf146b32ea8d45c69b7d50055cb6afd",
"macos/Runner.xcworkspace/contents.xcworkspacedata": "ac9a90958f80f9cc1d0d5301144fb629",
"macos/Runner.xcworkspace/xcshareddata/IDEWorkspaceChecks.plist": "7e8ed88ea03cf8357fe1c73ae979f345",
"macos/RunnerTests/RunnerTests.swift": "8059f5d27a19c556eeafb49b3f9b7bdd",
"main.dart.js": "fb64a687a932a2ecca9bd37a6ac772a7",
"manifest.json": "473b05a3fea7745695b1f4e683372ce8",
"pubspec.lock": "cdf4447434d50f01fa2c1d460379224e",
"pubspec.yaml": "69c4f1452dc499b7b43073fde7349469",
"README.md": "b8a1d6f3afff2f26b494edbf9a721d92",
"test/widget_test.dart": "4e166d15008cfc71472964778a7bc8a1",
"version.json": "807177035a87e7a1cf2ed161dd36e91f",
"web/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"web/icons/icon-192.png": "b9c020e6a46ba74c0ec84bc0ed6fb3d4",
"web/icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"web/icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"web/index.html": "ed153756ddfe1f50bbe0473a9d4b0555",
"web/manifest.json": "473b05a3fea7745695b1f4e683372ce8",
"windows/CMakeLists.txt": "13163f46963351303359246dac725d67",
"windows/flutter/CMakeLists.txt": "bbf66fed5180bd9ae8198b8d7c4a0001",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/AUTHORS": "c189179be54a192fd6bcd97130ce6e7a",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/CHANGELOG.md": "ccbc2bbfbbc967937015fe35c0c2b834",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/integration_test/url_launcher_test.dart": "1f57699edf542f16f7bc40dc7e4d395d",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/lib/main.dart": "b22d398ffad39eb00c3f5030f568ac48",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/pubspec.yaml": "2915f1b5e510ebf3e0f736c2295a3a49",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/README.md": "99031e0915db7698934985a61f425ee8",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/test_driver/integration_test.dart": "1ad084e36a4cbb363a4abc230483bfe4",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/CMakeLists.txt": "b47648bdb9d722e267d226c1f7d3114e",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/flutter/CMakeLists.txt": "4a27f4d811ea56c4a303a41aee5a7aee",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/flutter/generated_plugins.cmake": "c5f67f7b803991a430fbe23ab3da49c6",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/CMakeLists.txt": "64da9c83e639db368e4600b81b3036de",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/flutter_window.cpp": "7434201c101ef071486ae5af94b22a89",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/flutter_window.h": "78052d43b0069522d0d3486235bc9937",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/main.cpp": "12a8e2caefce14a317d047c404e4a782",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/resource.h": "755b508502d635b897a2c4c867d61247",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/resources/app_icon.ico": "6ea04d80ca2a3fa92c7717c3c44ccc19",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/runner.exe.manifest": "5dc436d08667c913403a9d06f328a7fd",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/Runner.rc": "40ea9f8e72767e6a3b37dee854bb36b4",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/run_loop.cpp": "ffcb308f942f16bcd82e23c69fbb9309",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/run_loop.h": "17a28bbeb6df685967da063ac4382f59",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/utils.cpp": "497aad8f22f8df910d142e79b712789a",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/utils.h": "e7fd0b99fe9a233202621c699b171537",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/win32_window.cpp": "10077393f5f3abfff2370f483e7aa9ac",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/example/windows/runner/win32_window.h": "c6cda5eb905135d553df6191ee3c9099",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/lib/src/messages.g.dart": "bee9a89328e73d06f9b915e157deffe1",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/lib/url_launcher_windows.dart": "792062b629f33f12bf4aa68dd6601c50",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/LICENSE": "a60894397335535eb10b54e2fff9f265",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/pigeons/copyright.txt": "2fe5797d62b68418e43f54ff5bf8f008",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/pigeons/messages.dart": "967a6f9b4f21a73669e12d7032c77b7d",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/pubspec.yaml": "bb8822a2eddc6b573d6472499b290968",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/README.md": "a950743781178ba6d44e568e64edc237",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/test/url_launcher_windows_test.dart": "b6826c3ddf9167a28f64dd96fe3605b6",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/CMakeLists.txt": "3f33a250e7a6485d900fec625807fbb8",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/include/url_launcher_windows/url_launcher_windows.h": "9059ea7a8db393da551b89d48b07e1ce",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/messages.g.cpp": "0b5714477a6f2ce25b5301277ce92047",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/messages.g.h": "6e22d470f86e05410ed65a28e92cfd47",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/system_apis.cpp": "dffd8eaa58a5086bd98b150dfb974a66",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/system_apis.h": "b47bb09897344dcc279f9917b14c3c24",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/test/url_launcher_windows_test.cpp": "9d9f91ff75dc81bbaa21bcc7e66731d0",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/url_launcher_plugin.cpp": "e4dbfc1c15e0a3d66e56f5e40554dea1",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/url_launcher_plugin.h": "378d27da35eb45012b13661c1c9d4c8f",
"windows/flutter/ephemeral/.plugin_symlinks/url_launcher_windows/windows/url_launcher_windows.cpp": "14acfc42939af58aeb991063971a94bf",
"windows/flutter/generated_plugins.cmake": "c5f67f7b803991a430fbe23ab3da49c6",
"windows/flutter/generated_plugin_registrant.cc": "811328ee9b84867ab0b499bd33e5e470",
"windows/flutter/generated_plugin_registrant.h": "0ea33875f9f8e118f9c2ded03e2e2835",
"windows/runner/CMakeLists.txt": "028602ab9754bffe716659ada7590d29",
"windows/runner/flutter_window.cpp": "2f463f9b7da67a2d692a012f9ea85e0c",
"windows/runner/flutter_window.h": "7defcc89d4a26d56e801241d624d48fb",
"windows/runner/main.cpp": "4d34f00f12518de96fe5996cf2f2a4af",
"windows/runner/resource.h": "1ade5dd15e613479a15e8832ed276f2b",
"windows/runner/resources/app_icon.ico": "6ea04d80ca2a3fa92c7717c3c44ccc19",
"windows/runner/runner.exe.manifest": "298a0260a755c3959d2c3c8904298803",
"windows/runner/Runner.rc": "0ba851920b51f9134f52c018b2d2cda0",
"windows/runner/utils.cpp": "432461b09d862a2f8dadf380ff0e34e5",
"windows/runner/utils.h": "fd81e143f5614eb6fd75efe539002853",
"windows/runner/win32_window.cpp": "571eb8234dbc2661be03aa5f2a4d2fca",
"windows/runner/win32_window.h": "7569387d58711ab975940f4df3b4bcda"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
