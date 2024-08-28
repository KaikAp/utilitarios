@echo off

echo  _______                                            __                  __           
echo /       \                                          /  ^|                /  ^|          
echo $$$$$$$  ^|  ______   _____  ____         __     __ $$/  _______    ____$$ ^|  ______  
echo $$ ^|__$$ ^| /      \ /     \/    \       /  \   /  ^|/  ^|/       \  /    $$ ^| /      \ 
echo $$    $$^< /$$$$$$  ^|$$$$$$ $$$$  ^|      $$  \ /$$/ $$ ^|$$$$$$$  ^|/$$$$$$$ ^|/$$$$$$  ^|
echo $$$$$$$  ^|$$    $$ ^|$$ ^| $$ ^| $$ ^|       $$  /$$/  $$ ^|$$ ^|  $$ ^|$$ ^|  $$ ^|$$ ^|  $$ ^|
echo $$ ^|__$$ ^|$$$$$$$$/ $$ ^| $$ ^| $$ ^|        $$ $$/   $$ ^|$$ ^|  $$ ^|$$ \__$$ ^|$$ \__$$ ^|
echo $$    $$/ $$       ^|$$ ^| $$ ^| $$ ^|         $$$/    $$ ^|$$ ^|  $$ ^|$$    $$ ^|$$    $$/ 
echo $$$$$$$/   $$$$$$$/ $$/  $$/  $$/           $/     $$/ $$/   $$/  $$$$$$$/  $$$$$$/  
                                                                                     
                                                                                     
                                                                                   

echo vou ajudar voce a fazer a chave ssh ^>:D

set /p nomeGitHub=insira o seu nome de usuario: 
cls
set /p emailGitHub=insira o seu e-mail: 
cls

git config --global user.name"%nomeGitHub%"
git config --global user.email"%emailGitHub%"
cls
ssh-keygen -t ed25519 -C "%emailGitHub%"

mkdir C:\Users\%username%\Desktop\SSH_key

copy C:\Users\%username%\.ssh\*.* C:\Users\%username%\Desktop\SSH_key

ren C:\Users\%username%\Desktop\SSH_key\id_ed25519.pub SSH_key.txt


echo Script feito por kaikAp ^>:D
pause