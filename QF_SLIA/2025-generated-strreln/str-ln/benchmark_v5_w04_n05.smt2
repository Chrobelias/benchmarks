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

(assert (> (+ (* 8 (str.len x)) (* (- 5) (str.len y)) (* (- 9) (str.len z)) (* 9 (str.len a)) (str.len b)) 6))
(assert (>= (+ (* (- 4) (str.len x)) (* 2 (str.len y)) (* (- 5) (str.len z)) (* (- 2) (str.len a)) (* (- 6) (str.len b))) 83))
(assert (>= (+ (* (- 5) (str.len a)) (str.len b) (* (- 9) (str.to_int x)) (* 2 (str.to_int b))) 77))

(check-sat)