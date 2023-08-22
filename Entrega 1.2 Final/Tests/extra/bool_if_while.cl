class Main {
    a: Int <- 3;
    main() : Int {{
        if true then
            3
        else
            4
        fi;
        while false loop
            a <- a - 1
        pool;

        if "prueba" then
            3
        else
            4
        fi;
        while "error" loop
            4
        pool;
        3;
    }};
};