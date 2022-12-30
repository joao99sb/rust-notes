#!/bin/bash

# Inicializa uma lista vazia
list=()

# Obtém a lista de arquivos no diretório atual
files=$(ls)

# Itera sobre cada arquivo na lista
for file in $files
do
  # Verifica se o nome do arquivo começa com a palavra "hj"
  if [[ "$file" = Anotacoes* ]]; then
    # Adiciona o nome do arquivo à lista, removendo a extensão
    list+=($(echo "${file%.*}" | grep -oE '[0-9]+'))
  fi
done

# Ordena a lista em ordem crescente
sorted_list=($(printf "%s\n" "${list[@]}" | sort -n))

# Obtém o último elemento da lista (que é o maior número)
max=${sorted_list[-1]}

# Soma um ao maior número
max=$((max+1))

nome="Anotacoes-$max.md"

echo "gerando arquivo ${nome} "
touch $nome