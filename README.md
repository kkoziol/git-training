# Przygotowania
## Instalacje
- GIT
- Tortoise (dla chętnych)
- Babun (dla chętnych)
- SourceTree (dla chętnych)

## Konfiguracja
- GIT
- Katalogi
  - Zadania będziemy rozwiazywać w katalogu "zadania"
  - Każde zadanie w podkatalogu "zadxx"

# Zadania
## Zad 00 (clone)
- W katalogu głównym "zadania"
- klonujemy https://github.com/kkoziol/git-training.git
- oglądamy sobie sklonowane repozytorium...
- wykonujemy polecenie "./initialize.sh"

## Zad 01 (init)
- Zakładamy folder zad00 i w nim inicializujemy puste surowe repozytorium GIT
- ogladamy katlalogi 
- probojemy git status
- probojemy git log
- kasujemy całą zarartośc katalogu
- zakladamy repozytorium "normalne" Jaka jest róznica?
- probojemy git status
- probojemy git log



## Przydatne linki

- .gitattributes https://github.com/alexkaratarakis/gitattributes

## Aliasy

```
otaguj-zgubione = !git fsck --unreachable --lost-found --full | grep commit | cut -d\" \" -f3 | sed 's/\\(......\\)\\(.*\\)/found-\\1 \\1\\2/' | xargs -n2 git tag 
```


## Babun hint:
```
echo "set nobackup"   >> ~/.vimrc
echo "set noswapfile" >> ~/.vimrc
echo "set noundofile" >> ~/.vimrc
```