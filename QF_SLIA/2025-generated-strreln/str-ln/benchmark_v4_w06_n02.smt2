(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* 2 (str.to_int x)) (* 5 (str.to_int y)) (* 2 (str.to_int z)) (* (- 5) (str.to_int a))) 57))
(assert (<= (+ (* 10 (str.len x)) (* (- 9) (str.len y)) (str.len z) (* 7 (str.len a))) 3))
(assert (< (+ (* (- 9) (str.len x)) (* (- 8) (str.len y)) (* (- 2) (str.len z)) (* (- 10) (str.len a))) 82))
(assert (>= (+ (* 4 (str.len x)) (str.len y) (* (- 9) (str.len z)) (* 7 (str.len a))) 3))
(assert (>= (+ (* (- 6) (str.len x)) (* (- 4) (str.len y)) (* 3 (str.len z)) (* 5 (str.len a))) 68))
(assert (< (+ (* 7 (str.to_int x)) (* (- 9) (str.to_int y)) (* 4 (str.to_int z)) (* 9 (str.to_int a))) 95))

(check-sat)