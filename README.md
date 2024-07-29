# import-zabbix
Shell Script para importar hosts em lote no zabbix

Importe de dispositivos no zabbix 6.4
Coloque a lista de dispositivos, nome e IPs no arquivo listahost.csv
Necessario fazer ajuste de Templates, Interface, grupo, Tags no arquivo cria-xml-import.sh
Para gerar o XML do hosts

./cria-xml-import.sh

Depois para gerar o XML de importação final executar

./cria-xml-import.sh



