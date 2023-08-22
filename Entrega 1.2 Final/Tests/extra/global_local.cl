class Main {
    a : Int;
    main() : Int {{
        a <- 3;
        let b: String in {
            a <- true;
            b <- "prueba";
        };
        a;
    }};
    method1() : Int {{
        b <- "prueba";
        a <- 4;
    }};
};