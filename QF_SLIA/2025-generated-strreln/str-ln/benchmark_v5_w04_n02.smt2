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

(assert (> (+ (* 7 (str.to_int x)) (* (- 9) (str.to_int y)) (- (str.to_int z)) (* (- 8) (str.to_int a)) (* 4 (str.to_int b))) 55))
(assert (> (+ (* 5 (str.len x)) (* (- 10) (str.len y)) (* 10 (str.len a)) (* (- 8) (str.len b))) 46))
(assert (> (+ (- (str.len y)) (str.len z) (* (- 5) (str.len a)) (* (- 8) (str.len b))) 86))
(assert (>= (+ (* 3 (str.len x)) (* (- 4) (str.len y)) (* (- 8) (str.len z)) (* (- 9) (str.len a)) (* (- 3) (str.len b))) 86))

(check-sat)