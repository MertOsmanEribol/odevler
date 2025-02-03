let ogrenciler =[ //49 öğrenci ismine ulaşabildim telefon no'ları rastgele şekilde yazdım gerçek numaralar değil.
    {   Ad: "Mert Osman",Soyad: "Eribol", Telefon: "05399302409", },
    {   Ad: "Ahmet",Soyad: "Selçuk", Telefon: "0548697568", },
    {   Ad: "Türkay Efe",Soyad: "Yıldız", Telefon: "058865786", },
    {   Ad: "Muhammer",Soyad: "Koç", Telefon: "05579632585", },
    {   Ad: "Mert Efe",Soyad: "Karaköse", Telefon: "05234796852", },
    {   Ad: "Melike",Soyad: "Erkaya", Telefon: "05865985682", },
    {   Ad: "Furkan",Soyad: "Soyal", Telefon: "05586324586", },
    {   Ad: "İlkay",Soyad: "Biçici", Telefon: "05568579568", },
    {   Ad: "Abdullah",Soyad: "Alioğlu", Telefon: "05896578548", },
    {   Ad: "Caner",Soyad: "Gönder", Telefon: "05795423679", },
    {   Ad: "Muhammed",Soyad: "Bülbül", Telefon: "05785236856", },
    {   Ad: "Ahmet Hakan",Soyad: "Ergül", Telefon: "05349632587", },
    {   Ad: "Esma Nur",Soyad: "Gedikbaş", Telefon: "05347896523", },
    {   Ad: "Erol",Soyad: "Dönmez", Telefon: "05347865345", },
    {   Ad: "Aslıhan",Soyad: "İkiel", Telefon: "05347862598", },
    {   Ad: "Ayşegül",Soyad: "Şipar", Telefon: "05466847592", },
    {   Ad: "Zeynep Hüsna",Soyad: "Haznedar", Telefon: "05348652358", },
    {   Ad: "Ahmet",Soyad: "Selçuk", Telefon: "05349632789", },
    {   Ad: "Veli Taha",Soyad: "Boyar", Telefon: "053698752569", },
    {   Ad: "Yunus",Soyad: "Karagöz", Telefon: "05363546824", },
    {   Ad: "Sude",Soyad: "Şentürk", Telefon: "05373456089", },
    {   Ad: "Nedra",Soyad: "Bahar", Telefon: "05465896358", },
    {   Ad: "Şeyma",Soyad: "Say", Telefon: "05375896589", },
    {   Ad: "Burak",Soyad: "Güler", Telefon: "05374586926", },
    {   Ad: "Rojar",Soyad: "Bel", Telefon: "05478542671", },
    {   Ad: "Kadir",Soyad: "Yücel", Telefon: "05378657858", },
    {   Ad: "Yunus",Soyad: "Karagöz", Telefon: "05378685078", },
    {   Ad: "Erol",Soyad: "Dönmez", Telefon: "053785686585", },
    {   Ad: "Teoman",Soyad: "Turan", Telefon: "05347856985", },
    {   Ad: "Dolunay",Soyad: "Bilsin", Telefon: "05348675895", },
    {   Ad: "Çağla",Soyad: "Kaya", Telefon: "053485689852", },
    {   Ad: "Mehmet",Soyad: "Baki", Telefon: "05347622563", },
    {   Ad: "Mustafa Efe",Soyad: "Kılıç", Telefon: "05313415268", },
    {   Ad: "Halil",Soyad: "Çelik", Telefon: "05385526368", },
    {   Ad: "Timuçin Alpay",Soyad: "Bohur", Telefon: "05211356627", },
    {   Ad: "Emirhan",Soyad: "Okutan", Telefon: "05799641587", },
    {   Ad: "Seda Nur",Soyad: "Zurnacı", Telefon: "05479635891", },
    {   Ad: "Özkan",Soyad: "Ceyhan", Telefon: "05349632597", },
    {   Ad: "Kadi",Soyad: "Kutludoğmuş", Telefon: "05347589635", },
    {   Ad: "Büşra",Soyad: "Koçak", Telefon: "05347852495", },
    {   Ad: "Emirhan",Soyad: "Akbal", Telefon: "05479987853", },
    {   Ad: "Helin",Soyad: "Yaman", Telefon: "05133412568", },
    {   Ad: "İlke",Soyad: "Şahin", Telefon: "05247856324", },
    {   Ad: "Ömer Faruk",Soyad: "Şenel", Telefon: "05489635472", },
    {   Ad: "Hamza",Soyad: "Yıldırım", Telefon: "053489635278", },
    {   Ad: "Mustafa Sedat",Soyad: "Narmanlı", Telefon: "05346952578", },
    {   Ad: "Sude",Soyad: "Atacan", Telefon: "05247689538", },
    {   Ad: "Mert Ali",Soyad: "Çelik", Telefon: "054796325895", },
    {   Ad: "Harun",Soyad: "Kahraman", Telefon: "054731462589", },
]



let sinavNotlari = [];
ogrenciler.forEach(ogrenci => {
   
    sinavNotlari.push({
        Ad:ogrenci.Ad,
        Soyad: ogrenci.Soyad,
        Telefon: ogrenci.Telefon,
        vize: (Math.floor(Math.random() * 100) + 1),
        final: (Math.floor(Math.random() * 100) + 1)
    });
});
//Önce öğrencileri bilgileri ile birlikte bir dizide yazdım bu dizi de ogrenciler dizisiydi 
//daha sonra içine vize ve final notlarını yazdırmak isteidğim için sınavNotları 
// diye yeni bir dizi belirledim ve yazdırmak istediklerimi ogrenciler içinde push ettim
//Vize ve final notları her bir öğrenciye random(rastgele)şekilde verilmesi için de math.random kullandım.




console.log(sinavNotlari);
console.log("Toplam:",sinavNotlari.length , "Öğrenci");


 let i =0
 while(i< sinavNotlari.length){
    console.log(`Ad Soyad: ${sinavNotlari[i].Ad} ${sinavNotlari[i].Soyad} vize: ${sinavNotlari[i].vize} final: ${sinavNotlari[i].final} `);
     i++; // *Önemli not* indexi arttırmazsak sonsuz döngüye 
     // girerek sürekli ilk öğrencinin bilgilerini ekrana yazar.
    
 }
console.log("while bitiş");

console.log("Do-while başangıc");

do{
    console.log(sinavNotlari[0]);
i++;
}while(i <sinavNotlari.length)

//Do while döngüsü diğeleri ile karışmasın diye sadece sıfırıncı indexteki öğrenciyi ekrana yazdırdım.


console.log("Do-while bitiş");




console.log("For Başlangıc");

for(let i=0; i<sinavNotlari.length; i++){
    console.log(`Ad Soyad: ${sinavNotlari[i].Ad} ${sinavNotlari[i].Soyad} vize: ${sinavNotlari[i].vize} final: ${sinavNotlari[i].final} `);
    
}

console.log("For bitiş");
console.log("For-in başlangıc");

for(let i in sinavNotlari ){
    console.log(sinavNotlari[0],sinavNotlari[1],sinavNotlari[5]);
    if(i=sinavNotlari[0],i=sinavNotlari[1],i=sinavNotlari[5]){
        break; //if içinde berak kullanarak döngüyü durdurmak zorunda kaldım yoksa seçtiğim indexteki elemanı 
        //sınavNotları.length(öğrenci sayısı kadar) uzunlugunda tekar ediyor ve sürekli aynı ismi yazdırıyordum.
        //döngüyü durdurup sadece istediğim indexteki öğnrecilerin bilgilerini bu şekilde aldım.
    }
}