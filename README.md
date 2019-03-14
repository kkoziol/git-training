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
- git-flow-cheatsheet
https://danielkummer.github.io/git-flow-cheatsheet/

## Aliasy

```
otaguj-zgubione = !git fsck --unreachable --lost-found --full | grep commit | cut -d\" \" -f3 | sed 's/\\(......\\)\\(.*\\)/found-\\1 \\1\\2/' | xargs -n2 git tag 
```
## Test skrypt
```
#!/bin/sh
if [ -e "plik13" ]
then
	echo ZLE
	exit 1
else
	echo DOBRZE
	exit 0
fi
```
## Pre-commit
```
#!/bin/sh
echo "# Poprosze o ładny message!"
```
## Omyłkowo dodany plik z wrażliwymi danymi
```
git filter-branch --index-filter "git rm --cached --ignore-unmatch plik13"
```
## Babun hint:
```
echo "set nobackup"   >> ~/.vimrc
echo "set noswapfile" >> ~/.vimrc
echo "set noundofile" >> ~/.vimrc
```

## Zadanie samodzielne
```
- utwórz repozytorium init.cmd
git clone repo repo-ala

git config --local user.name "Ala"
git config --local user.email ala@ala
- utworz kilka commitów
git push
- utwórz repozytorium typu --bare
- w repo-ala
git remote remove origin
git remote add origin ..\repo.git
git push --tags -u origin master:master
- w repo
git remote add origin ..\repo.git
git fetch origin master
- dodaj commity
git push --set-upstream origin master
- w repo-ala
git fetch
git merge origin/master
git branch
git branch -r
git branch -a
git remote show origin
git branch -vv
- utwórz branch i dodaj commity
git push -u origin b1:nowa
git push origin --delete nowa
git push origin :nowa
git checkout master
- w repo
git fetch orgin
git merge origin/b1
git checkout -b b1 origin/b1
git push origin --delete b1
git push origin b1

- klonowanie

git clone --depth 1 file://c:/workspace/repo.git test1
```