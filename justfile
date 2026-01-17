default:
    @just run

run:
    uv run --active boilerplate-cli

run-custom:
    uv run --active boilerplate-cli --message "Custom message!"

run-json:
    uv run --active boilerplate-cli --json

# enter the core developer session
devenv-zell:
    devenv shell bash -- -c "zell"
