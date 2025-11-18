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

(assert (< (+ (* (- 8) (str.to_int x)) (* 2 (str.to_int y)) (* (- 3) (str.to_int z)) (* 7 (str.to_int a)) (* 2 (str.to_int b))) 20))
(assert (>= (+ (* (- 7) (str.len x)) (* (- 7) (str.len y)) (* (- 4) (str.len z)) (* (- 8) (str.len a)) (* 3 (str.len b))) 81))

(check-sat)