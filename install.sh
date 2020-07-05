function new
{
    if [[ -r "$2" && -w "$2" ]]
    then
    {
        echo "$1" >> "$2"
        return 0
    }
    else
    {
        return 1
    }
    fi
}
current_path="$(pwd)"
new="source $current_path/fichier1.aliases"
fichier=~/.bashrc
grep -qF -- "$new" "$fichier" || echo "$new" >> "$fichier"
new="source $current_path/fancy_functions.sh"
fichier=~/.bashrc
grep -qF -- "$new" "$fichier" || echo "$new" >> "$fichier"
4
if [[ -d "/home/dooshina/PSL7_TD/fancy_tools/bin" ]]
then
{
    echo "Le dossier bin existe !"
}
else
{
    mkdir /home/dooshina/PSL7_TD/fancy_tools/bin
}
fi
cd /home/dooshina/PSL7_TD/fancy_tools/bin
source ~/.bashrc
nouveauP="$(pwd)"
export_bash="export PATH=$PATH:$nouveauP"

if grep -q "$export_bash" <<< "$bashrc"; then
{
    echo "There is already PATH in bashrc"
    echo $PATH
}
else
{
    echo "export PATH=$PATH:/home/dooshina/PSL7_TD/fancy_tools/bin"
    echo "On vient d'ajouter le ~/.bashrc"
}





