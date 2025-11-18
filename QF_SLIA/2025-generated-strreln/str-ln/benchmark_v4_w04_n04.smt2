(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (+ (* (- 10) (str.len x)) (* 3 (str.len y)) (- (str.len z)) (* (- 8) (str.len a))) 29))
(assert (> (+ (- (str.to_int x)) (* (- 5) (str.to_int y)) (str.to_int z) (* 3 (str.to_int a))) 40))
(assert (< (+ (* 2 (str.len x)) (* (- 2) (str.len y)) (- (str.len z)) (* (- 8) (str.len a))) 42))
(assert (= (+ (* (- 7) (str.len x)) (* 3 (str.len y)) (- (str.len z)) (* (- 7) (str.len a))) 97))

(check-sat)