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

domanda differenza efficienza raccolto - efficienza conservazione

- sa3iq7_1 (was the area harvested of crop on plot less than the area planted?)
- sa3iq8 (what percent of plot planted with crop was harvested?)

- sa3iq12 (On this [PLOT] is there a portion with [CROP] not harvested due to damages/shock)
## da trovare domande su prodotto perso dopo raccolto

domanda strategie di adattamento

variabile dipendente:
- sa3iq9a_conv (how much crop in total did HH harvest from plot? (quantity)) (FATTO)

variabili indipendenti:
- s11c2q3 (did HH use pesticide (excluding herbicide) on plot during the 2023-24 agricultural season?)
- s11c2q14 (did HH use animals for traction on plot in the 2023-24 agricultural season?)
- s11c2q20 (did HH use any equipment/machines on [plot] in 2023/24 agricultural season)
(FATTO)

domanda differenze nord-sud

variabile dipendente:
- sa3iq9a_conv (how much crop in total did HH harvest from plot? (quantity)) per zone (zone code) (FATTO)

variabili indipendenti:
- hd_18 (what is the main reason [name] did not work at this activity in the last 7 days?) 
- file phx (FATTO)
- hs_08e (HH ate less than you thought you should in the last 30 days)


# CODICE BEAMER PER PRESENTAZIONE
\documentclass{beamer}

% --- Scelta del Tema ---
\usetheme{Madrid} % Puoi cambiare con Copenhagen, Warsaw, ecc.
% 1. Carica il pacchetto xcolor (solitamente già caricato da beamer, ma meglio specificare)
\usepackage{xcolor}

% 2. Definisci il colore Rosso Unibo (usando i valori ufficiali RGB)
\definecolor{RossoUnibo}{RGB}{187, 46, 41}

% 3. Imposta il colore per gli elementi della presentazione
\setbeamercolor{structure}{fg=RossoUnibo} % Cambia titoli, elenchi puntati, ecc.
\setbeamercolor{palette primary}{bg=RossoUnibo, fg=white}
\setbeamercolor{palette secondary}{bg=RossoUnibo, fg=white}
\setbeamercolor{palette tertiary}{bg=RossoUnibo, fg=white}
\setbeamercolor{titlelike}{parent=structure, fg=RossoUnibo}

% --- Pacchetti utili ---
\usepackage[utf8]{inputenc}
\usepackage[italian]{babel}
\usepackage{graphicx} % Per le immagini
\usepackage{caption}  % Per personalizzare le didascalie

% --- Informazioni Titolo ---
\title[Titolo Breve]{Povertà stagionale in Nigeria}
\subtitle{Work in progress
}
\author[Collaboratori]{Damiano, Giorgio, Sangiorgi, Serenari, Valente}
\institute[Università]{Università di Bologna}
\date{\today}

\begin{document}

% 1. SLIDE DI TITOLO
\begin{frame}
    \titlepage
\end{frame}

% 2. DOMANDE DI RICERCA
\begin{frame}{Domande di Ricerca}
    \begin{block}{Obiettivi dello studio}
        Inserisci qui il testo descrittivo riguardante le domande di ricerca. Puoi spiegare il "perché" dietro il vostro lavoro e quali sono le ipotesi principali.
    \end{block}
    \vspace{0.5cm}
    Esempio di testo libero sotto il blocco per approfondire i punti salienti.
\end{frame}

% 3. DATASET (ELENCO PUNTATO)
\begin{frame}{Informazioni sul Dataset}
    Per questa analisi abbiamo utilizzato un dataset con le seguenti caratteristiche:
    \begin{itemize}
        \item \textbf{Fonte:} Nome della sorgente dati.
        \item \textbf{Dimensione:} Numero di osservazioni (es. $n = 10.000$).
        \item \textbf{Variabili:} Elenco delle variabili principali analizzate.
        \item \textbf{Periodo:} Arco temporale coperto dai dati.
        \item \textbf{Pulizia:} Breve nota sul preprocessing effettuato.
    \end{itemize}
\end{frame}

% 4. DUE IMMAGINI CON COMMENTI SOTTO
\begin{frame}{Confronto Efficienza raccolto - Efficienza conservazione}
    \begin{columns}
        \begin{column}{0.5\textwidth}
            \centering
            \includegraphics[width=\textwidth]{Efficienza_raccolto.png}
            \captionof{figure}{Descrizione A}
        \end{column}
        \begin{column}{0.5\textwidth}
            \centering
            \includegraphics[width=\textwidth]{perdita_postraccolto.png}
            \captionof{figure}{Descrizione B}
        \end{column}
    \end{columns}
    \vspace{0.3cm}
    \begin{itemize}
        \item Commento 1: Osservazione sulla prima immagine.
        \item Commento 2: Analisi comparativa tra le due figure.
    \end{itemize}
\end{frame}

% 5. UNA IMMAGINE E SPAZIO COMMENTO
\begin{frame}{Variabile dipendente: Quantità di prodotto raccolto (Kg/L)}
    \centering
    \includegraphics[width=0.6\textwidth]{Variabile dipendente.png}
    
    \vspace{0.5cm}
    \begin{block}{Commento}
        Inserisci qui la spiegazione dettagliata del grafico o dell'immagine soprastante.
    \end{block}
\end{frame}

% 8. REPLICA: TRE IMMAGINI E SPAZIO COMMENTO
\begin{frame}{Variabili indipendenti: pesticidi, animali da trazione, macchinari}
    \centering
    \includegraphics[width=0.3\textwidth]{example-image-a}
    \includegraphics[width=0.3\textwidth]{example-image-b}
    \includegraphics[width=0.3\textwidth]{example-image-c}
    
    \vspace{0.5cm}
    \begin{exampleblock}{Commento Finale}
        Breve riassunto di ciò che queste tre figure rappresentano nel contesto globale della presentazione.
    \end{exampleblock}
\end{frame}

% 7. REPLICA: UNA IMMAGINE E SPAZIO COMMENTO
\begin{frame}{Variabile dipendente: Differenza tra Nord e Sud}
    \begin{columns}
        \begin{column}{0.5\textwidth}
            \centering
            \includegraphics[width=\textwidth]{vardip_zone.png}
        \end{column}
        \begin{column}{0.5\textwidth}
            \textbf{Osservazioni chiave:}
            \begin{enumerate}
                \item Punto uno.
                \item Punto due.
                \item Conclusione parziale.
            \end{enumerate}
        \end{column}
    \end{columns}
\end{frame}

\begin{frame}{Variabile indipendente: shock climatici}
    \begin{columns}
        \begin{column}{0.5\textwidth}
            \centering
            \includegraphics[width=\textwidth]{perdite per shock.png}
            \captionof{figure}{Descrizione A}
        \end{column}
        \begin{column}{0.5\textwidth}
            \centering
            \includegraphics[width=\textwidth]{perdite per zone.png}
            \captionof{figure}{Descrizione B}
        \end{column}
    \end{columns}
    \vspace{0.3cm}
    \begin{itemize}
        \item Primo commento rilevante sui dati mostrati.
        \item Secondo commento sulla correlazione tra le due figure.
    \end{itemize}
\end{frame}

% --- NUOVA SLIDE 5: ANCORA DUE IMMAGINI (Come richiesto) ---
\begin{frame}{Variabile indipendente: Consumo di cibo}
    \begin{columns}
        \begin{column}{0.48\textwidth}
            \centering
            \includegraphics[width=\textwidth]{Terzadip.png}
            \captionof{figure}{Dettaglio X}
        \end{column}
        \begin{column}{0.48\textwidth}
            \centering
            \includegraphics[width=\textwidth]{terzadip_perzone.png}
            \captionof{figure}{Dettaglio Y}
        \end{column}
    \end{columns}
    \vspace{0.4cm}
    \begin{block}{Osservazioni}
        Spazio per inserire il commento relativo a questa coppia di immagini.
    \end{block}
\end{frame}

% --- SLIDE 7: UNA IMMAGINE E SPAZIO COMMENTO (Layout a colonne) ---
\begin{frame}{Variabile hd_18}
    \begin{columns}
        \begin{column}{0.5\textwidth}
            \centering
            \includegraphics[width=\textwidth]{example-image}
        \end{column}
        \begin{column}{0.5\textwidth}
            \textbf{Punti Chiave:}
            \begin{itemize}
                \item Nota 1
                \item Nota 2
                \item Nota 3
            \end{itemize}
        \end{column}
    \end{columns}
\end{frame}

\end{document}