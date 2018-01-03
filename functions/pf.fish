function pf -d "specify the running platform" -a cmd
    set -e argv[1]

    switch "$cmd"
        case is-darwin
            test (uname -s) = "Darwin"
            return $status

        case is-linux
            test (uname -s) = "Linux"
            return $status

        case is-wsl
            echo (uname -sr) | grep "Linux" | grep "Microsoft" > /dev/null
            return $status

        case ""
            echo "pf: Expected is-<platform name>" > /dev/stderr
            return 2

        case \*
            printf "%s\n" "pf: Unknown subcommand '$cmd'" > /dev/stderr
            return 2
    end
end
