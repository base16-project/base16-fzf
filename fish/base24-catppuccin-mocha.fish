# Scheme name: Catppuccin Mocha
# Scheme system: base24
# Scheme author: https://github.com/catppuccin/catppuccin
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1e1e2e,fg:#cdd6f4,hl:#fab387"\
" --color=bg+:#313244,fg+:#a6e3a1,hl+:#f5e0dc"\
" --color=info:#cba6f7,border:#cba6f7,prompt:#a6e3a1"\
" --color=pointer:#89b4fa,marker:#eba0ac,spinner:#eba0ac,header:#f38ba8"
