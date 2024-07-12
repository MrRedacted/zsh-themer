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
local icon=$glider

local colorscheme='catppuccin'

function duskfox {
  local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

  PROMPT="%{$FG[215]%}╭─%n@%m %{$reset_color%}%{$FG[183]%}in %~%{$reset_color%}${git_branch} %{$FG[150]%}%D{%H:%M:%S}
%{$FG[215]%}╰%{$FG[074]%}${icon}%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[116]%}on "
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✘ %{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$FG[183]%}("
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$FG[183]%})%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
  ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

  ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
  ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}
}

function gruvbox {
  local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

  PROMPT="%{$FG[114]%}╭─%n@%m %{$reset_color%}%{$FG[220]%}in %~%{$reset_color%}${git_branch} %{$FG[109]%}%D{%H:%M:%S}
%{$FG[114]%}╰%{$FG[208]%}${icon}%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[230]%}on "
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✘ %{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$FG[220]%}("
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$FG[220]%})%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
  ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

  ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
  ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}
}

function catppuccin {
  local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

  PROMPT="%{$FG[157]%}╭─%n@%m %{$reset_color%}%{$FG[229]%}in %~%{$reset_color%}${git_branch} %{$FG[111]%}%D{%H:%M:%S}
%{$FG[157]%}╰%{$FG[216]%}${icon}%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[116]%}on "
  ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✘ %{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$FG[229]%}("
  ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$FG[229]%})%{$reset_color%}"

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
  'catppuccin')
    catppuccin
    ;;
esac
