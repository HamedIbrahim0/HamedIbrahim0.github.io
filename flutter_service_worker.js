'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "12378760b7ea4151177a96de379b1556",
".git/config": "fe2f0b37d02015280005f8fc90625002",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
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
".git/index": "7bfd7b11d4dfbe3e6cd1ce96196ab87d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "f135d8b4f8f71ebd6aa3edf03b4f1bf4",
".git/logs/refs/heads/main": "6b4b9cef9caabf5c8759f5ec3cd190ca",
".git/logs/refs/remotes/origin/main": "f841afc0c69d9f158eab32a98df0365c",
".git/objects/01/d3ce0d0e5710604db3e0afd6d385063a22a281": "23540ce2de34084c4f6acd1746c5c747",
".git/objects/03/eaddffb9c0e55fb7b5f9b378d9134d8d75dd37": "87850ce0a3dd72f458581004b58ac0d6",
".git/objects/04/e8add9c8383940232ad3a8d16aa05835e3b148": "c23bb7e96656909484e2cedd2d2f7123",
".git/objects/06/bb7eee3edc3a53a2f26c27b706ed7cdd0bfe87": "afa21980cad49ce40e820b33bde98b4d",
".git/objects/0a/cdca51513ef6a4fcda4c57d0cb5cc3d49a1619": "a39b5b4ad71f677d4dc37f620b141acc",
".git/objects/11/9f7cec5402cc8239d4e7664ef5606118701de2": "97c651dd2504057757f3a721d5f7af4e",
".git/objects/1a/d7683b343914430a62157ebf451b9b2aa95cac": "94fdc36a022769ae6a8c6c98e87b3452",
".git/objects/1c/d37cf206cbbdb833f1c27c741b1a4ab039a524": "9bcbe25c3dbf4b3aa383ea6dc857820f",
".git/objects/20/54fdbb5fe959e28dc75f314b018155dc2c3fc3": "408df516f51a6d9a3f97d6f0759eccf6",
".git/objects/20/c5b5b81b47cc092ec9e07e72f8e647a616b6bb": "59de8a8953dde68cf4943efe0ee96969",
".git/objects/22/a7a6c39b1533e5fb8c72cb36e1537d98397004": "b37dc37091383b177d540db973150c64",
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
".git/objects/64/66fbd7650741190f556427d23652ecb0c27dc5": "09ded1a081438ce741090cd8dcb87b26",
".git/objects/69/dd618354fa4dade8a26e0fd18f5e87dd079236": "8cc17911af57a5f6dc0b9ee255bb1a93",
".git/objects/6b/16cd675d5b40dc243a57960d7fcbff21d8f814": "ae9c58c3e002a0ce2e89e8866a683487",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6c/bc4751506c966f8c467178283a0ac32b3a7d06": "e52107a0fa131a427976e940a47c7e75",
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
".git/objects/ac/7068d2a30ff4db681832fa468ae2c86aebf5da": "e840138153058e1e31fa33e7a4a03104",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/bb/0ea2e84523c09add7f9624f7eef9a9e63a7628": "37610f0dd1c8ae808c56f84cdc608b75",
".git/objects/bd/47eeb1c3d372266315e5f03bb8ca029012d913": "b5555e24c676faf436e61cfc74f591aa",
".git/objects/c0/7eb701bb6a6e806f3f83cd4a7c0e5081d137c6": "56db9b5746594afce6fedfd9bf9b759f",
".git/objects/c8/08fb85f7e1f0bf2055866aed144791a1409207": "92cdd8b3553e66b1f3185e40eb77684e",
".git/objects/ca/20e98ec9e3c804f3432e89d64df816658c4cf0": "a9ecff2cc111c39f4f3071f61654bfc8",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/7cfefdbe249b8bf90ce8244ed8fc1732fe8f73": "9c0876641083076714600718b0dab097",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/dc/e8652088a7f82407f8d6551d1b01818d75894a": "7acdaa59b58151425a7a938b823b46a5",
".git/objects/df/7ad4e4d027c5250a3cd0432a9b96073006343c": "580451e157ed93e8812088921aee15a7",
".git/objects/e0/7ac7b837115a3d31ed52874a73bd277791e6bf": "74ebcb23eb10724ed101c9ff99cfa39f",
".git/objects/e7/7f328e2aedea25ae8d93a990b39734f8bd07ed": "8b570ae8f6e21d62b38e50fd6e70dc4b",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ec/1ab97721db56c89b7d5a172050217e63e81c43": "0a834ec5cdaaf534b30c6e2aba16bad3",
".git/objects/ee/561e6b0bf1f165f85ec286d8bf6cbd20508e68": "a6b6804b20bd6b91c7295c9c189cb849",
".git/objects/ef/8ea37ca29c515f96c4d622ab21bc0f2eaa11c4": "a727c7d033ce92a665cd805fb9a6bb0e",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/refs/heads/main": "56b9da737c1bce82760ab1417e17101e",
".git/refs/remotes/origin/main": "56b9da737c1bce82760ab1417e17101e",
"assets/AssetManifest.bin": "693635b5258fe5f1cda720cf224f158c",
"assets/AssetManifest.bin.json": "69a99f98c8b1fb8111c5fb961769fcd8",
"assets/AssetManifest.json": "2efbb41d7877d10aac9d091f58ccd7b9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "b749f18a164e814e31a521dea12d38e4",
"assets/NOTICES": "fc0caef691b35e711a0acdc345eeef7d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
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
"flutter_bootstrap.js": "016d52716f79ec45960c8b16ad0cf2e8",
"icons/icon-192.png": "b9c020e6a46ba74c0ec84bc0ed6fb3d4",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "72924199fbd69c31a10f2d8b2ad9e42e",
"/": "72924199fbd69c31a10f2d8b2ad9e42e",
"main.dart.js": "2c6b78803c4d61a4babf6b037122aacb",
"manifest.json": "473b05a3fea7745695b1f4e683372ce8",
"version.json": "807177035a87e7a1cf2ed161dd36e91f"};
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
