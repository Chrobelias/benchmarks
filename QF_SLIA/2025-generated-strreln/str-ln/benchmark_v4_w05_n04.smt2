(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (> (+ (* 6 (str.len x)) (* 3 (str.len y)) (* 10 (str.len z)) (* (- 3) (str.len a))) 20))
(assert (>= (+ (* 3 (str.len x)) (* (- 9) (str.len y)) (* (- 6) (str.len z)) (* (- 9) (str.len a))) 73))
(assert (> (+ (* 8 (str.to_int x)) (* 9 (str.to_int y)) (* 10 (str.to_int z)) (* (- 10) (str.to_int a))) 12))
(assert (> (+ (* 9 (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 10) (str.to_int z)) (* (- 5) (str.to_int a))) 38))
(assert (<= (+ (* 3 (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 10) (str.to_int z)) (* (- 2) (str.to_int a))) 55))

(check-sat)