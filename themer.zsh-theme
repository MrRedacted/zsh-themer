## icon list
local glider='⠠⠵ '
local lambda='λ '
local debian=' '
local arch=' '
local fedora=' '
local mint=' '
local kali=' '
local ferris=' '
local neovim=' '
local nix=' '
local tux=' '
local rasp=' '
local cinnamon=' '
local endeavour=' '
local locos=' '
local qubes=' '
local tor=' '
local tails=' '
local gopher=' '
local golang=' '
local zig=' '
local javascript=' '
local bash=' '
local html=' '
local clang=' '

## CHANGE ICON HERE
## set to an icon variable from above or a custom icon
local icon=$debian

local colorscheme='duskfox'

function duskfox {
  local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

  PROMPT="%{$FG[105]%}╭─%n@%m %{$reset_color%}%{$FG[161]%}in %~%{$reset_color%}${git_branch} %{$FG[107]%}%D{%H:%M:%S}
%{$FG[105]%}╰%{$FG[038]%}${icon}%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[172]%}on "
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✘ %{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$FG[161]%}("
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$FG[161]%})%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
  ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

  ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
  ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}
}

function gruvbox {
  local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

  PROMPT="%{$FG[072]%}╭─%n@%m %{$reset_color%}%{$fg[yellow]%}in %~%{$reset_color%}${git_branch} %{$FG[030]%}%D{%H:%M:%S}
%{$FG[072]%}╰%{$FG[208]%}${icon}%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[yellow]%}on "
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✘ %{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[yellow]%}("
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
  ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

  ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
  ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}
}

case $colorscheme in
  'duskfox')
    duskfox
    ;;
  'gruvbox')
    gruvbox
    ;;
esac
