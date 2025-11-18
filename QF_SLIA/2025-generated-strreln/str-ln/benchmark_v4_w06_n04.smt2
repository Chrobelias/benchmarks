(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (< (+ (* (- 7) (str.len x)) (* 7 (str.len y)) (* 5 (str.len z)) (* (- 3) (str.len a))) 80))
(assert (> (+ (str.len a) (* 9 (str.to_int y)) (* (- 2) (str.to_int a))) 21))
(assert (<= (+ (* (- 5) (str.len x)) (* 2 (str.len y)) (* (- 2) (str.len z)) (str.len a)) 44))
(assert (= (+ (* (- 5) (str.len x)) (* (- 10) (str.len y)) (* (- 5) (str.len z)) (* 4 (str.len a))) 77))
(assert (> (+ (* (- 5) (str.len x)) (* 6 (str.len y)) (* (- 3) (str.len z)) (str.len a)) 30))

(check-sat)