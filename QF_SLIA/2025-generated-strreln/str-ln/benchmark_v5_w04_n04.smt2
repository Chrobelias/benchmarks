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

(assert (= (+ (* 2 (str.to_int x)) (* (- 6) (str.to_int y)) (str.to_int z) (* 6 (str.to_int a)) (* 2 (str.to_int b))) 94))
(assert (= (+ (* (- 10) (str.len x)) (* 3 (str.len y)) (* 7 (str.len z)) (* 10 (str.len a)) (* (- 3) (str.len b))) 25))
(assert (>= (+ (* 6 (str.len y)) (* (- 9) (str.len z)) (* (- 4) (str.len a)) (* (- 9) (str.len b))) 20))
(assert (< (+ (* 8 (str.to_int x)) (* 9 (str.to_int y)) (* 2 (str.to_int z)) (* 6 (str.to_int a)) (- (str.to_int b))) 95))

(check-sat)