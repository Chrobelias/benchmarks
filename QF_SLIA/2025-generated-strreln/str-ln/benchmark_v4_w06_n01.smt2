(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* (- 5) (str.to_int x)) (* (- 4) (str.to_int y)) (str.to_int z) (- (str.to_int a))) 15))
(assert (> (+ (* 2 (str.len y)) (* (- 7) (str.len z)) (- (str.len a))) 17))
(assert (= (+ (* 10 (str.len y)) (- (str.to_int x)) (* 7 (str.to_int a))) 49))
(assert (<= (+ (* 2 (str.len x)) (str.len y) (* 7 (str.len z)) (* (- 6) (str.len a))) 57))
(assert (> (+ (* 3 (str.len x)) (* (- 2) (str.len y)) (* (- 5) (str.len z)) (- (str.len a))) 95))

(check-sat)