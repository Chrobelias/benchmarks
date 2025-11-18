(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (< (+ (* (- 9) (str.len x)) (* (- 2) (str.len y)) (- (str.len z)) (* 8 (str.len a))) 96))
(assert (< (+ (* 4 (str.len x)) (* (- 8) (str.len y)) (* (- 6) (str.len z)) (* 6 (str.len a))) 6))
(assert (<= (+ (* (- 8) (str.len y)) (* 5 (str.to_int x))) 61))
(assert (>= (+ (str.to_int x) (* (- 4) (str.to_int y)) (* (- 2) (str.to_int z)) (* (- 8) (str.to_int a))) 84))
(assert (< (+ (* (- 9) (str.to_int y)) (* (- 5) (str.to_int z)) (* 6 (str.to_int a))) 36))

(check-sat)