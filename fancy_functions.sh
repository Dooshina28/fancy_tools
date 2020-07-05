function gco
{
    inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
    if [[ $inside_git_repo == "true" ]]; then
    {
        if [[ $# < 1 ]]; then
        {
            echo  "Error! There is no commit message, retry please"
        }
        else
        {
            current_branch="$(git rev-parse --abbrev ref HEAD)"
            echo "On branch $current_branch"
            echo " "
            git commit -m "[$current_branch] $*"
            echo "Commit message = [$current_branch] $*"
        }
        fi
    }
    else
    {
        echo "ERREUR ! Vous n'etes pas dans un projet git"
    }
    fi
}
