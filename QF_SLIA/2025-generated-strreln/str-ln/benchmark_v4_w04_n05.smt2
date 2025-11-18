(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (> (+ (* 8 (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 7) (str.to_int z)) (- (str.to_int a))) 59))
(assert (= (+ (str.len a) (* (- 7) (str.to_int y))) 84))
(assert (> (+ (- (str.len x)) (* (- 8) (str.len y)) (str.len z) (* (- 8) (str.len a))) 50))

(check-sat)