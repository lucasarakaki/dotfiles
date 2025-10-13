if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Alias gerenciar pacotes APT
alias up="sudo apt update && sudo apt full-upgrade"
alias install="sudo apt install"
alias uninstall="sudo apt remove"
alias autoremove="sudo apt autoremove && sudo apt autoclean"
alias purge="sudo apt purge"

# Alias versão do PHP
alias php84="sudo update-alternatives --set php /usr/bin/php8.4 && sudo update-alternatives --set phar /usr/bin/phar8.4 && sudo update-alternatives --set phar.phar /usr/bin/phar.phar8.4"
alias php83="sudo update-alternatives --set php /usr/bin/php8.3 && sudo update-alternatives --set phar /usr/bin/phar8.3 && sudo update-alternatives --set phar.phar /usr/bin/phar.phar8.3"
alias php74="sudo update-alternatives --set php /usr/bin/php7.4 && sudo update-alternatives --set phar /usr/bin/phar7.4 && sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.4"

# Alias navegação de diretórios
alias ..="cd .."
alias ...="cd ../.."
alias ls="eza --icons"
alias ll="eza -lh --icons"
alias la="eza -a --icons"
alias lla="eza -alh --icons"
alias lt="eza --tree --level=2 --icons"
alias lsd="eza -lh --sort=newest --icons"
alias lsdire="eza -D --icons"
alias lsp="eza -alh --git --icons"

# Alias personalizados
alias c="composer"
alias d="docker"
alias dc="docker compose"
alias g="git"
alias phpunit="./vendor/bin/phpunit"
alias phpstan="./vendor/bin/phpstan"
alias rector="./vendor/bin/rector"
alias pint="./vendor/bin/pint"
alias sail="./vendor/bin/sail"
alias config.fish="vim ~/.config/fish/config.fish"

# Alias laravel
alias art="php artisan"
alias serve="php artisan serve"
alias keygen="php artisan key:generate"

# Alias npm
alias ni="npm install"
alias nr="npm run"
alias nrb="npm run build"
alias nrs="npm run serve"

# Criar diretório e navegar até ele
function mkcd
    mkdir -p $argv[1]
    cd $argv[1]
end

# Ativando o BuildKit do Docker
set -gx DOCKER_BUILDKIT 1

# Define o GOPATH
# set -gx GOPATH $HOME/go

# Paths adicionais
set -gx PATH $PATH \
    $HOME/.config/composer/vendor/bin \
    $HOME/.local/bin \
    /opt/nvim/bin \
    /usr/local/go/bin

# Starship
starship init fish | source
