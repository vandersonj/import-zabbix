#!/bin/bash

LISTA="listahost.csv"
DIRETORIO="host"

while IFS=, read DEVICE IP;do

echo " Nome do DEVICE  = "$DEVICE
echo " IP do Pdv = "$IP

echo touch $DIRETORIO"/"$DEVICE.xml
echo "        <host> " >> $DIRETORIO"/"$DEVICE.xml
echo "            <host>"$DEVICE"</host>" >> $DIRETORIO"/"$DEVICE.xml
echo "            <name>"$DEVICE"</name>" >> $DIRETORIO"/"$DEVICE.xml
echo "            <templates>" >> $DIRETORIO"/"$DEVICE.xml
echo "                <template>" >> $DIRETORIO"/"$DEVICE.xml
echo "                    <name>Template Module ICMP Ping</name>" >> $DIRETORIO"/"$DEVICE.xml
echo "                </template> " >> $DIRETORIO"/"$DEVICE.xml
echo "                <template>" >> $DIRETORIO"/"$DEVICE.xml
echo "                    <name>Template OS Linux by Zabbix agent</name>" >> $DIRETORIO"/"$DEVICE.xml
echo "                </template> " >> $DIRETORIO"/"$DEVICE.xml
echo "            </templates> " >> $DIRETORIO"/"$DEVICE.xml
echo "            <groups> " >> $DIRETORIO"/"$DEVICE.xml
echo "                <group> " >> $DIRETORIO"/"$DEVICE.xml
echo "                    <name>PDVS</name> " >> $DIRETORIO"/"$DEVICE.xml
echo "                </group> " >> $DIRETORIO"/"$DEVICE.xml
echo "            </groups> " >> $DIRETORIO"/"$DEVICE.xml
echo "            <interfaces> " >> $DIRETORIO"/"$DEVICE.xml
echo "                <interface> " >> $DIRETORIO"/"$DEVICE.xml
echo "                    <ip>"$IP"</ip> " >> $DIRETORIO"/"$DEVICE.xml
echo "                    <interface_ref>if1</interface_ref> " >> $DIRETORIO"/"$DEVICE.xml
echo "                </interface> " >> $DIRETORIO"/"$DEVICE.xml
echo "            </interfaces> " >> $DIRETORIO"/"$DEVICE.xml
echo "			<tags> " >> $DIRETORIO"/"$DEVICE.xml
echo "                <tag> " >> $DIRETORIO"/"$DEVICE.xml
echo "                    <tag>Device</tag> " >> $DIRETORIO"/"$DEVICE.xml
echo "                    <value>PdvFilial</value> " >> $DIRETORIO"/"$DEVICE.xml
echo "                </tag> " >> $DIRETORIO"/"$DEVICE.xml
echo "            </tags> " >> $DIRETORIO"/"$DEVICE.xml
echo "            <inventory_mode>DISABLED</inventory_mode> " >> $DIRETORIO"/"$DEVICE.xml
echo "        </host> " >> $DIRETORIO"/"$DEVICE.xml

done < ${LISTA};