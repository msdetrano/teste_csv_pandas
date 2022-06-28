#!/bin/bash
# Listar usuarios Logados

#Preenchemndo o HTML

echo '<!DOCTYPE html>'
echo '<html lang="pt-br">'
echo '<head>'
echo '<title>Título da página</title>'
echo '<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/                                                                                                                                                             4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXF                                                                                                                                                             oaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">'
echo '<meta charset="utf-8">'
echo '</head>'
echo '<body>'
echo '<h1> Usuarios Logado</h1>'
LISTA=$(who | awk '{print $1}' | sort | uniq)
PASSWD=$(cat /etc/passwd | awk -F ":" '{print $1}' | sort)
for user in $PASSWD; do
        if [[ $(echo $LISTA | grep $user) ]]
        then
                TYPE="success"
        else
                TYPE="danger"

        fi
        echo '<button type="button" class="btn btn-'${TYPE}'" > '${user}' </butt                                                                                                                                                             on>'

done

echo '</body>'
echo '</html>'

