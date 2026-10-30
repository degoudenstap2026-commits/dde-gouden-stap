DE GOUDEN STAP — ONLINE OPSLAAN VOOR ALLE BEZOEKERS

Open index.html voor de website en admin.html voor het beheerpaneel.

ONLINE OPSLAAN INSTELLEN (eenmalig)
1. Maak een project aan op https://supabase.com/
2. Open SQL Editor in Supabase en voer de volledige inhoud van supabase-setup.sql uit.
3. Ga naar Project Settings > API. Kopieer de Project URL en de publishable/anon public key.
4. Open supabase-config.js en vul die twee waarden in. Gebruik NOOIT een service_role- of secret key in de website.
5. Maak in Supabase een beheeraccount aan via Authentication > Users > Add user.
6. Upload alle bestanden en de map assets naar je GitHub-repository en publiceer via GitHub Pages.
7. Voer ook de bijgewerkte supabase-setup.sql uit (of voer de extra Storage-sectie onderaan uit) om de openbare bucket site-images en uploadrechten aan te maken.
8. Open op je gepubliceerde website /admin.html en log in met dat beheeraccount.
9. Bij afbeeldingen kun je een afbeeldings-URL invullen of een bestand kiezen. Na upload klik je op Opslaan.
10. Bij producten kun je een Product-URL invullen; die verschijnt als knop in de collectie.

Na deze setup worden opgeslagen wijzigingen centraal bewaard en kunnen alle bezoekers ze zien na het vernieuwen van de pagina.

LET OP
- Supabase is een externe dienst waarvoor je zelf een project moet aanmaken.
- Zonder ingevulde configuratie werkt alleen de lokale opslag in je browser.
- De public website kan inhoud lezen; alleen ingelogde accounts kunnen schrijven via de database policies.
- Bewaar nooit een service_role/secret key in de browser of GitHub.

AFBEELDINGEN EN LINKS
- Uploaden van afbeeldingen werkt via Supabase Storage en vereist een ingelogd beheerdersaccount.
- Toegestane afbeeldingsformaten: JPG, PNG, WebP, GIF en AVIF; maximaal 8 MB per bestand.
- De bucket site-images is publiek leesbaar zodat bezoekers de afbeeldingen kunnen bekijken.
- Product-URL's zijn optioneel en worden als externe knop getoond op de collectiepagina.
- Gebruik uitsluitend vertrouwde afbeeldings- en productlinks. De website accepteert URL's die je zelf invult.


URL'S TOEVOEGEN VIA BEHEER
- Open /admin.html en log in.
- Bij Homepage-kaarten kun je per kaart een afbeelding-URL en een klik-URL invullen.
- Bij Categorieën kun je per categorie een afbeelding-URL en een eigen klik-URL invullen. Laat de klik-URL leeg om de collectie van die categorie te openen.
- Bij Producten kun je per product een afbeelding-URL en een product-URL invullen. De knop 'Bekijk product' verschijnt bij dat product in de collectie.
- Gebruik volledige links die beginnen met https:// (of http://). Klik daarna op Opslaan.
- URL's en afbeeldingen worden als onderdeel van de website-inhoud in Supabase opgeslagen.


PRODUCTEN EN CATEGORIEEN TOEVOEGEN
- Open /admin.html en log in.
- Ga naar Categorieën en klik op + Categorie toevoegen. Vul naam, beschrijving en afbeelding in.
- Ga naar Producten en klik op + Product toevoegen. Vul productnaam, categorienaam, afbeelding en eventueel de productlink in.
- De categorienaam bij een product moet overeenkomen met de naam van de categorie.
- Gebruik de knoppen Categorie verwijderen en Product verwijderen om items weg te halen.
- Klik na wijzigingen op Opslaan om alles online te bewaren.
