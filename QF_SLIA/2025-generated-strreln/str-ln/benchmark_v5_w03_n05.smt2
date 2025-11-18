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

(assert (= (+ (* 4 (str.len x)) (* 3 (str.len y)) (* (- 10) (str.len z)) (* 5 (str.len a)) (* 2 (str.len b))) 98))
(assert (> (+ (* (- 5) (str.len x)) (* (- 5) (str.len y)) (* (- 7) (str.len z)) (str.len a) (* 6 (str.len b))) 83))
(assert (> (+ (* (- 6) (str.to_int x)) (* (- 2) (str.to_int y)) (* 6 (str.to_int z)) (- (str.to_int a)) (* (- 7) (str.to_int b))) 80))

(check-sat)