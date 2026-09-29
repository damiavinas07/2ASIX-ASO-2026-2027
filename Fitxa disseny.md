# Fitxa 2 — Organització del servei de directori de MusicCloud

## Objectiu

En aquesta sessió hem decidit com organitzar els diferents objectes de MusicCloud dins d'un servei de directori.

Aquesta fitxa forma part de la **documentació de disseny del sistema**. Les decisions que hi indiquis s'utilitzaran posteriorment durant la implantació.
# 1. Objectes que hem de gestionar

MusicCloud necessita gestionar de manera centralitzada diferents tipus d'objectes.

Indica quins tipus d'objectes consideres que ha de contenir el servei de directori.

|Tipus d'objecte|Exemples a MusicCloud|
|---|---|
|Usuaris|Treballadors de MusicCloud, com Dídac Gassó|
|Grups|Administració, administradors del sistema, Campanya Estiu|
|Equips|Ordinadors clients dels treballadors|
|Servidors|Servidors de MusicCloud i servidors de serveis|
|Comptes d'aplicacions o serveis|Comptes utilitzats per aplicacions i serveis|
Hi afegiries algun altre tipus d'objecte?

Sí. Es podrien afegir impressores o altres recursos de xarxa si MusicCloud necessita gestionar-los de manera centralitzada.


---

# 2. Organització mitjançant unitats organitzatives

Proposa les **unitats organitzatives (OU)** principals que utilitzaries a MusicCloud.

|OU|Què contindrà?|Per què la crees?|
|---|---|---|
|OU=Usuaris|Comptes dels treballadors|Per separar i administrar els comptes d'usuari|
|OU=Grups|Grups de seguretat i de treball|Per centralitzar l'organització dels grups|
|OU=Equips|Ordinadors clients|Per organitzar els equips dels treballadors|
|OU=Servidors|Comptes dels servidors|Per separar els servidors dels equips clients|
|OU=Serveis|Comptes d'aplicacions i serveis|Per separar els comptes tècnics dels comptes personals|


## 2.1. Organització dels usuaris

Dibuixa l'estructura que utilitzaries per organitzar els usuaris de MusicCloud.

```text
MusicCloud
│
└──Usuaris
    ├── Administració
    ├── IT
    └── AltresDepartaments
```

---

# 3. OU o grup?

Indica quina opció utilitzaries principalment en cada cas.

|Necessitat|OU|Grup|
|---|:-:|:-:|
|Organitzar els treballadors d'Administració|X|☐|
|Donar accés a la carpeta d'Administració|☐|X|
|Organitzar els ordinadors clients|X|☐|
|Identificar les persones que participen en Campanya Estiu|☐|X|
|Organitzar els servidors|X|☐|
|Donar privilegis als administradors del sistema|☐|X|
|Organitzar els comptes utilitzats per aplicacions|X|☐|

### Explica amb les teves paraules la diferència principal entre una OU i un grup.

**OU:**

Una OU serveix principalment per organitzar els objectes del directori en una estructura jeràrquica i facilitar l'administració.

---

**Grup:**

Un grup serveix per reunir usuaris o altres comptes per una necessitat comuna, especialment per gestionar permisos i accessos.
---

---

# 4. Un mateix usuari: ubicació i pertinença

Considera aquest cas:

**Dídac Gassó**

- treballa a Administració;
    
- participa en el projecte Campanya Estiu.
    

Indica:

**En quina OU ubicaries el seu compte?**

OU=Administració

**A quins grups podria pertànyer?**

Administracio
CampanyaEstiu

---

### Per què no és contradictori que estigui en una OU però pertanyi a diversos grups?

Perquè la OU indica on està organitzat el compte dins del directori, mentre que els grups indiquen a quines funcions, permisos o projectes està associat. Un usuari pot estar en una OU i formar part de diversos grups.

---

---

# 5. Servei de directori

Explica breument què entens per **servei de directori**.

Un servei de directori és un sistema que emmagatzema i organitza informació sobre objectes de la xarxa, com usuaris, grups, equips i servidors, i permet consultar-la i administrar-la de manera centralitzada.

---

Quin problema resol a MusicCloud?

Permet centralitzar la informació dels usuaris, grups i equips de MusicCloud, evitant haver de gestionar aquests comptes i recursos de manera independent en cada sistema.

---

---

# 6. LDAP

Completa les frases següents.

**LDAP és:**

---

**LDAP no és:**

---

Indica si les afirmacions són certes o falses.

|Afirmació|C|F|
|---|:-:|:-:|
|LDAP és sinònim d'Active Directory|☐|☐|
|LDAP permet accedir i consultar informació d'un directori|☐|☐|
|OpenLDAP és una implementació d'un servei de directori|☐|☐|
|Active Directory utilitza LDAP, entre altres tecnologies|☐|☐|

---

# 7. DIT de MusicCloud

Dibuixa la proposta final de **Directory Information Tree (DIT)** de MusicCloud.

Ha de mostrar, com a mínim:

- usuaris;
    
- grups;
    
- equips;
    
- servidors;
    
- comptes d'aplicacions o serveis;
    
- les subdivisions que consideris necessàries.
    

```text
MusicCloud
│
│
│
│
│
```

---

# 8. Justificació del disseny

Escull **dues decisions** del teu DIT que consideris importants i justifica-les.

### Decisió 1

---

**Justificació:**

---

---

### Decisió 2

---

**Justificació:**

---

---

---

# 9. Comprovació final

Respon breument.

### a) Per què no seria una bona idea guardar tots els usuaris, grups, equips i servidors al mateix nivell sense organitzar-los?

---

---

### b) Per què no hauríem d'utilitzar les OU per substituir els grups de permisos?

---

---

### c) Si MusicCloud passa de 14 a 500 treballadors, quina característica del disseny que has fet avui facilitarà més l'administració?

---

---

---

# Documentació final del sistema

A partir de les decisions preses durant la sessió, deixa definida la proposta que utilitzarem inicialment per a MusicCloud.

## Estructura d'unitats organitzatives

```text
MusicCloud
│
│
│
│
```

## Criteri utilitzat per organitzar els objectes

---

---

## Criteri utilitzat per diferenciar OU i grups
