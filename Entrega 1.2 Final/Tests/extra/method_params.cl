class Main {
    a : Int;
    method1(m: Int, n: String) : Int {{
        n <- "prueba";
        m <- 4;
    }};
    main() : Int {{
        a <- method1(3, "hola");
        a <- method1("3", true);
        a;
    }};
    
};