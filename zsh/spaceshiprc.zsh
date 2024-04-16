export SPACESHIP_GIT_ASYNC=false
export SPACESHIP_RUBY_ASYNC=false
export SPACESHIP_ARCH_ASYNC=false
export SPACESHIP_ARCH_SUFFIX=" "
export SPACESHIP_CHAR_SYMBOL='❯ '
export SPACESHIP_BUN_COLOR=white
export SPACESHIP_AWS_SYMBOL="$SPACESHIP_AWS_SYMBOL "
spaceship remove node docker docker_compose
spaceship add --after git arch
