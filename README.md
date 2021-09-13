# Planejador de Disciplinas
ao clonar, usar git clone --recursive

se os submodulos nao funcionarem, usar:
git submodule init
git submodule update

para facilitar, podemos criar dois comandos: spull e spush, que pulla e pusha todos os submodulos ao mesmo tempo. Para isso, rode no terminal os seguintes comandos:

git config --global alias.spull '!git pull && git submodule sync --recursive && git submodule update --init --recursive'

git config --global alias.spull '__git_spull() { git pull "$@" && git submodule sync --recursive && git submodule update --init --recursive; }; __git_spull'

git config --global alias.spush 'push --recurse-submodules=on-demand'


fonte: https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407


Clonar com

```bash
git clone --recursive git@gitlab.com:disciplinas1/mc426/frontend.git
```
