# with a bash for loop

# limpieza de la lista 
rm list.txt
# tiempo inicial

#Modo feo pero funcional para obtener el tiempo inicial

files=(*.png)

echo "Instante inicial"
echo "${files[0]}"

f=${files[0]}
echo "*** INICIO EN"
echo "${f}"

HORAS="$((10#${f:27:2}*3600))"
MINUTOS="$((10#${f:30:2}*60))"
SEGUNDOS="${f:33:2}"
echo "*************************" 
echo "convertido todo a segundo"
echo "*************************"

TINICIAL="$((HORAS+MINUTOS+SEGUNDOS))"
echo "TIEMPO INICIAL ${TINICIAL}" 
echo "*****************************"
echo "Ahora listando todo lo demas"


echo  "ffconcat version 1.0" >> list.txt;
for f in *.png; do 
#echo "file '$f'"  >> list.txt; 
echo "'$f'"

#echo "duration  '${f:27:8}'"  >> list.txt;
HORAS="$((10#${f:27:2}*3600))"
MINUTOS="$((10#${f:30:2}*60))"
SEGUNDOS="${f:33:2}"
echo "terminado de guardar en las variables"
echo "${HORAS}"



TDURACION="$(((HORAS+MINUTOS+SEGUNDOS)-TINICIAL))"

#echo "horas en segundos ${HORAS}" >> list.txt;
#echo "minutos en segundos   ${MINUTOS}" >> list.txt;
#echo "segundos ${SEGUNDOS}" >> list.txt;

if [[ $TDURACION -gt 0 ]]
then
echo  mayor que 0
echo "duration ${TDURACION}" >> list.txt; 

fi


echo "file '$f'"  >> list.txt; 

done

echo "duration 3" >> list.txt;
