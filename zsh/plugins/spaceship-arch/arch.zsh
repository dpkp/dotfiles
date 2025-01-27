# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_ARCH_SHOW="${SPACESHIP_ARCH_SHOW=true}"
SPACESHIP_ARCH_ASYNC="${SPACESHIP_ARCH_ASYNC=true}"
SPACESHIP_ARCH_PREFIX="${SPACESHIP_ARCH_PREFIX="on "}"
SPACESHIP_ARCH_SUFFIX="${SPACESHIP_ARCH_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_ARCH_SYMBOL="${SPACESHIP_ARCH_SYMBOL="💻 "}"
SPACESHIP_ARCH_COLOR="${SPACESHIP_ARCH_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show arch status
spaceship_arch() {
  # If SPACESHIP_ARCH_SHOW is false, don't show arch section
  [[ $SPACESHIP_ARCH_SHOW == false ]] && return

  # Check if arch command is available for execution
  spaceship::exists arch || return

  local arch_version="$(arch)"

  # Display arch section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_ARCH_COLOR" \
    --prefix "$SPACESHIP_ARCH_PREFIX" \
    --suffix "$SPACESHIP_ARCH_SUFFIX" \
    --symbol "$SPACESHIP_ARCH_SYMBOL" \
    "$arch_version"
}
