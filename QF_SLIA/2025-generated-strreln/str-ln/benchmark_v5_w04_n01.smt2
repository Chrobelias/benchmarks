(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (= (+ (* 8 (str.len x)) (* (- 2) (str.len y)) (* (- 2) (str.len z)) (* (- 9) (str.len a)) (* (- 9) (str.len b))) 57))
(assert (> (+ (* (- 4) (str.len x)) (* (- 9) (str.len y)) (* (- 8) (str.len z)) (* 7 (str.len a)) (* 9 (str.len b))) 30))
(assert (>= (+ (* (- 2) (str.len z)) (* 3 (str.to_int y))) 75))

(check-sat)