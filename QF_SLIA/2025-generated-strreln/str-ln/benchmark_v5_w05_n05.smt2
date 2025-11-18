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

(assert (>= (+ (* (- 8) (str.len x)) (- (str.len y)) (* (- 8) (str.len z)) (- (str.len a)) (* 9 (str.len b))) 35))
(assert (= (+ (* 6 (str.len x)) (* (- 5) (str.len y)) (* (- 10) (str.len z)) (* 4 (str.len a)) (* (- 8) (str.len b))) 11))
(assert (= (+ (* 4 (str.len x)) (* 4 (str.len y)) (* (- 7) (str.len z)) (* (- 5) (str.len a)) (* 7 (str.len b))) 44))
(assert (<= (+ (* (- 3) (str.to_int y)) (* (- 3) (str.to_int z)) (* (- 3) (str.to_int a)) (* (- 3) (str.to_int b))) 96))
(assert (< (+ (* (- 9) (str.to_int x)) (* (- 4) (str.to_int y)) (- (str.to_int z)) (* (- 7) (str.to_int a)) (* (- 7) (str.to_int b))) 70))

(check-sat)