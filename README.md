# Analisi della povertà stagionale in Nigeria

## Introduzione

La povertà stagionale in Nigeria è un concetto fondamentale per comprendere la sua economia. Non si parla di semplice povertà costante tutto l'anno, ma di un ciclo prevedibile in cui le famiglie cadono in uno stato di privazione estrema in coincidenza con determinati periodi del calendrario agricolo.

In Nigeria, la povertà stagionale è strettamente legata all'alternanza tra stagione secca e stagione delle piogge. Paradossalmente, il momento di massima povertà avviene durante il periodo di semina nella stagione delle piogge, in quanto finiscono le scorte del raccolto precedente, di conseguenza l'offerta cala e i prezzi del cibo aumentano.

## Cause

Molti agricoltori nigeriani non hanno sistemi di irrigazione moderni, quindi dipendono totalmente dalla pioggia. Se la pioggia ritarda, la stagione della fame si allunga.

Inoltre, a causa di infrastrutture carenti, gran parte del cibo si rovina dopo il raccolto, impedendo di creare riserve per i mesi più difficili.

Infine, nei periodi di magra, i prezzi aumentano così tanto che le famiglie sono costrette a vendere i propri beni (bestiame, attrezzi...) per mangiare, diventando ancora più povere per l'anno successivo.

## Evoluzione del problema

Le stagioni sono diventate imprevedibili. Le alluvioni nel Delta del Niger o la siccità nel Nord stanno rendendo la povertà stagionale più violenta e meno prevedibile.

Nonostante questo, l'uso di sementi resistenti e il trasferimento di denaro dai parenti che vivono a Lagos o Abuja aiutano le famiglie rurali a superare i mesi di magra.

## Domande di ricerca

#### *quale dei due fattori incide maggiormente sulla perdita di raccolto?: efficienza del raccolto vs conservazione del raccolto*

#### *Esistono differenze significative nell'evoluzione della povertà stagionale tra le zone agro-ecologiche del Nord e del Sud della Nigeria?*

#### *Quali sono le principali strategie di adattamento adottate dalle famiglie rurali durante i mesi di magra e quali aiutano a ridurre maggiormente la vulnerabilità?*

domanda differenza efficienza raccolta - efficienza conservazione

- sa3iq7_1 (was the area harvested of crop on plot less than the area planted?)
- sa3iq8 (what percent of [plot] planted with [crop] was harvested?)
domanda differenza efficienza raccolto - efficienza conservazione

- sa3iq7_1 (was the area harvested of crop on plot less than the area planted?)
- sa3iq8 (what percent of plot planted with crop was harvested?)
## da trovare domande su prodotto perso dopo raccolto

domanda strategie di adattamento

variabile dipendente:
- sa3iq9a (how much crop in total did HH harvest from plot? (quantity))

variabili indipendenti:
- s11c2q3 (did HH use pesticide (excluding herbicide) on plot during the 2023-24 agricultural season?)
- s11c2q14 (did HH use animals for traction on plot in the 2023-24 agricultural season?)
- s11c2q20 (did HH use any equipment/machines on [plot] in 2023/24 agricultural season)

domanda differenze nord-sud

variabile dipendente:
- sa3iq9a (how much crop in total did HH harvest from plot? (quantity)) per zone (zone code)

variabili indipendenti:
- hd_63 (during the last 12 months, how many months did [name] work in this employment)
## ci sono domande specifiche su ogni mese dal 2017 al 2019, capire come includerle (hd_63_0 - hd_63_23)
- hd_18 (what is the name reason) [name] did not work at this activity in the last 7 days?
- ## intero file nup_phx_mod_n su perdite dovute a shock
  ### mantenere da 10 a 14 shockcode per shock climatici
- scegliere tra:
  - hs_08a (HH worried about not having enough food to eat in the last 30 days)
  - hs_08b (HH were unable to eat healthy and nutritious/preferred foods in the last 30 days)
  - hs_08d (HH had to skip a meal in the last 30 days)
  - hs_08e (HH ate less than you thought you should in the last 30 days)
