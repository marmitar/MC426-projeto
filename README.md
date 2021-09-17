# Planejador de Disciplinas

Esse projeto tem como objetivo principal desenvolver uma plataforma para auxiliar estudantes de universidades públicas a planejar as disciplinas que irão cursar.

Para isso, serão levados em conta conflitos de horário e pré-requisitos necessários para cursar as diferentes disciplinas.

Como objetivos secundários, pondera-se implementar a visualização da árvore de disciplinas do estudante, troca de mensagens entre os usuários, interações entre serviços já existentes de calendário, entre outros.

## Instruções de Submódulos

Ao clonar, utilizar

```bash
git clone --recursive
```

Se os submódulos não funcionarem, usar:

```bash
git submodule init
git submodule update
```

Para facilitar, podemos criar dois comandos: `spull` e `spush`, que pulla e pusha todos os submódulos ao mesmo tempo. Para isso, rode no terminal os seguintes comandos [(fonte)](https://medium.com/@porteneuve/mastering-git-submodules-34c65e940407):

```bash
git config --global alias.spull '!git pull && git submodule sync --recursive && git submodule update --init --recursive'

git config --global alias.spull '__git_spull() { git pull "$@" && git submodule sync --recursive && git submodule update --init --recursive; }; __git_spull'

git config --global alias.spush 'push --recurse-submodules=on-demand'
```
