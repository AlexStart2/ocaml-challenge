let mux2 s0 a b = s0 && a || not s0 && b

let mux4 s1 s0 a0 a1 a2 a3 = s1 && mux2 s0 a3 a2 || not s1 && mux2 s0 a1 a0

let mux4v2 s1 s0 a0 a1 a2 a3 = (s1 && s0 && a3) || 
                              (s1 && not s0 && a2) || 
                              (not s1 && s0 && a1) || 
                              (not s1 && not s0 && a0)