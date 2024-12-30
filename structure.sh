#!/bin/bash

# Função recursiva para gerar a estrutura de diretórios
generate_directory_structure() {
    local dir="$1"
    local prefix="$2"
    local files=("$dir"/*)
    local last_index=$((${#files[@]} - 1))
    
    for i in "${!files[@]}"; do
        local file="${files[$i]}"
        local basefile=$(basename "$file")
        local is_last=$((i == last_index))
        
        # Ignorar os diretórios '.' e '..' e '.git'
        if [ "$basefile" = "." ] || [ "$basefile" = ".." ] || [ "$basefile" = ".git" ] || [ "$basefile" = "node_modules" ] || [ "$basefile" = "vendor" ]|| [[ "$basefile" =~ ^\..* ]]; then
            continue
        fi
        
        # Determinar o prefixo
        if [[ $is_last -eq 1 ]]; then
            echo "${prefix}└── $basefile"
            new_prefix="${prefix}    "
        else
            echo "${prefix}├── $basefile"
            new_prefix="${prefix}│   "
        fi
        
        # Recursão se for um diretório
        if [[ -d "$file" ]]; then
            generate_directory_structure "$file" "$new_prefix"
        fi
    done
}

my_func(){
     
      echo "# Structure"
      echo "\`\`\`\`"
      echo "project/"
      generate_directory_structure "$1" ""   
      echo "\`\`\`\`"
}

diretory=$(pwd)

file_name="$diretory/Structure.md"

my_func $diretory > "$file_name"