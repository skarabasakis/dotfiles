export ZSH_AI_COMMENT_HOOK=false

case $(uname -s) in
    Linux)
        export ZSH_AI_PROVIDER="openai"
        export ZSH_AI_OPENAI_URL="https://openrouter.ai/api/v1/chat/completions"
        export ZSH_AI_OPENAI_MODEL="qwen/qwen3.5-9b"
        ;;
    Darwin)
        export ZSH_AI_PROVIDER="apfel"
        ;;
esac

function plz() {
    case $(uname -s) in
        Linux)
            ZSH_AI_OPENAI_API_KEY=$(op read "op://shell/openrouter/zshai") zsh-ai "$@"
            ;;
        Darwin)
            zsh-ai "$@"
    esac
}
