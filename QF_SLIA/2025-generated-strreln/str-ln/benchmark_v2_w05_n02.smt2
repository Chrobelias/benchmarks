(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (<= (+ (* (- 6) (str.to_int x)) (* 6 (str.to_int y))) 45))
(assert (> (+ (str.len x) (* (- 2) (str.to_int x))) 99))
(assert (> (+ (* 3 (str.len x)) (* 6 (str.len y))) 27))
(assert (= (+ (str.len x) (- (str.len y))) 64))

(check-sat)