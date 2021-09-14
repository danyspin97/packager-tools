# open changes
alias oc="${EDITOR:-vi} $(basename $(pwd) | cut -f1 -d.).changes"
# open specfile
alias os="${EDITOR:-vi} $(basename $(pwd) | cut -f1 -d.).spec"
# osc build alias
alias oscb="grc osc build --ccache --cpio-bulk-download --download-api-only"
