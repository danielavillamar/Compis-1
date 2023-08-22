class Main {
    a: Int <- 3;
    main() : Int {{
        a <- true;
        a <- 4 + true;
        a <- 4 < false;
    }};
};