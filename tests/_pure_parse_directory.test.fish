source $current_dirname/fixtures/constants.fish
source $current_dirname/../functions/_pure_parse_directory.fish
@mesg (print_filename $current_filename)


@test "_pure_parse_directory: returns current directory" (
    mkdir -p /tmp/current/directory/
    cd /tmp/current/directory/

    _pure_parse_directory
) = $PWD

@test '_pure_parse_directory: replaces $HOME by ~' (
    pushd $HOME

    _pure_parse_directory
    popd
) = '~'

@test '_pure_parse_directory: shortens directory in prompt' (
    string length (_pure_parse_directory 1)
) -lt (string length $PWD)
