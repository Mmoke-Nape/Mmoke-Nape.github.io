'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "e66013ef903dddbc78d0dafaef20e69b",
"assets/assets/icons/basketball.svg": "66d4f0c98dc557d5bd1d894f9e0dee32",
"assets/assets/icons/dart.svg": "63a1fa89591745e789e439a1f2d1abf1",
"assets/assets/icons/download.svg": "2b7ed1758e5846ab59144b6477385842",
"assets/assets/icons/email.svg": "b7e4286068b7298dbe7f5dc9290e1cd7",
"assets/assets/icons/facebook.svg": "54462a8b0d6aee4561287ade08578b93",
"assets/assets/icons/firebase.svg": "bfa69c4f3255d5c564c2ec600ff9885e",
"assets/assets/icons/flutter-color.svg": "f2e3fb32c6ba7935f07f050f1782afd6",
"assets/assets/icons/github.svg": "8b7ae54497789c46e49c186a987b202f",
"assets/assets/icons/github_cat.svg": "5762a8ff32510100b752a300a01a4344",
"assets/assets/icons/human-brain.svg": "7f7fbf408530a211924ca2d83d62a5cc",
"assets/assets/icons/instagram.svg": "e2cfa528469721300df8f4e856219c53",
"assets/assets/icons/java.svg": "a732a6e5bc69653a55d6dd81ab8d2d5e",
"assets/assets/icons/linkedin.svg": "d0a720ffc89c184dee956a5a558ee502",
"assets/assets/icons/linkedin_outline.svg": "be97554a464bce530c34aefbbf40d6d8",
"assets/assets/icons/menu.svg": "9fdc863d856b69b43b1e111bee872a67",
"assets/assets/icons/mysql.svg": "dd2a5a358ea682bed45bf98bc842b3ed",
"assets/assets/icons/personal%2520Logo.svg": "d1b644d59003ecfd5f485c02f7279327",
"assets/assets/icons/python.svg": "51c2eab22c8994e70e7633979982b451",
"assets/assets/images/kyrie.png": "90bda2d1db36f37c4d7612743a3cca5c",
"assets/assets/images/me/black_open_jacket.jpg": "139f911a95dff75dc3a42ea999657a5f",
"assets/assets/images/me/black_suit_face_hand.png": "7210d71aab0d1afd318ace2d6d01b116",
"assets/assets/images/me/bottom.png": "7f8786c1f82b616a5dbcb2c6e1348ac9",
"assets/assets/images/me/half_turn.png": "8f6080054250d2d975f5e5a6ee88226d",
"assets/assets/images/me/IMG-20220104-WA0011.jpg": "c5f586577607b263f7c10be5a4ea943a",
"assets/assets/images/me/IMG-20220104-WA0013.jpg": "0a93155ef701634734660ac829059ed6",
"assets/assets/images/me/IMG-20220104-WA0014.jpg": "4c5b526981c16796d34f1f8b63ebf1a1",
"assets/assets/images/me/IMG-20220104-WA0015.jpg": "0ed6fa2151e46eadb7cd2150dc9a028d",
"assets/assets/images/me/me_again.png": "2240020b3ba1036fff5dc7667afce54d",
"assets/assets/images/me/me_suit.png": "82dc38f8935ebf71de8b49783cca8d48",
"assets/assets/images/me/standing.jpg": "1b6f1a57f207f8b4059db393d6c2b5bd",
"assets/assets/images/MockUps/cart.png": "c18ef8774537c82c925eaa5d070b2cbd",
"assets/assets/images/MockUps/discover%2520only%2520fav.png": "860b2d77fbd713df570252f819898523",
"assets/assets/images/MockUps/discover.png": "1eab5d952312508816be084901c95d5b",
"assets/assets/images/MockUps/drawer.png": "48f1ac669098267a31c223619aa94aa4",
"assets/assets/images/MockUps/login.png": "0c82f462f45591e62a658f6868021bb4",
"assets/assets/images/MockUps/Mockup.png": "a1d3686cc1653a231700478d23348881",
"assets/assets/images/MockUps/product-discription.png": "50aadb28ec227f548f5aa464139a44b7",
"assets/assets/images/MockUps/signup.png": "7c3fe95c1a2ac119b6dff7e16d48f60d",
"assets/assets/images/MockUps/userproducts.png": "31dcc03427e3d5f47629d28f3e047f77",
"assets/assets/images/rs6.png": "bbe73b0ede6a84291ee80dd3496dc34d",
"assets/assets/images/Shoe.png": "4aa0da380440983837271f2cf4d00531",
"assets/assets/images/step2.png": "f9141562b92e0f7c2b78e02d4bdc8302",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "17f7a9eee7e8cceeebaa2bb64cc3e2bf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.svg": "d1b644d59003ecfd5f485c02f7279327",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7cba5cdfdd9d0a53001a247adc45c8bd",
"/": "7cba5cdfdd9d0a53001a247adc45c8bd",
"main.dart.js": "5328cbd7149d38a395d79557fcd86dfe",
"manifest.json": "874e4c86aa48789fd9e3b13b6d19f3ea",
"version.json": "26135e4be13343012ada35bf6692fcf3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
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
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
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
