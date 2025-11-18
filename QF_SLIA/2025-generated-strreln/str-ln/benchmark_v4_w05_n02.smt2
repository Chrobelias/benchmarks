(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (< (+ (* 6 (str.to_int x)) (* 4 (str.to_int y)) (* (- 7) (str.to_int z))) 11))
(assert (> (+ (* 2 (str.len x)) (* (- 7) (str.len y)) (* (- 10) (str.len z)) (* 7 (str.to_int z)) (* (- 6) (str.to_int a))) 90))
(assert (> (+ (* (- 3) (str.len x)) (* 6 (str.len y)) (* (- 7) (str.len z)) (* 9 (str.len a))) 97))
(assert (= (+ (- (str.to_int x)) (* 7 (str.to_int y)) (* 10 (str.to_int z)) (* (- 4) (str.to_int a))) 82))

(check-sat)