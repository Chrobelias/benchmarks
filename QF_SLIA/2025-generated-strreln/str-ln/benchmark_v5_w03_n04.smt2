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

(assert (>= (+ (* 4 (str.to_int x)) (- (str.to_int y)) (* (- 5) (str.to_int z)) (* 5 (str.to_int a)) (* (- 7) (str.to_int b))) 49))
(assert (= (+ (* (- 9) (str.len x)) (str.len y) (* 2 (str.len z)) (* (- 10) (str.len a)) (* (- 9) (str.len b))) 21))
(assert (> (+ (* (- 7) (str.len x)) (- (str.len y)) (str.len z) (* 3 (str.len a)) (* (- 6) (str.len b))) 95))

(check-sat)