(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.* (re.union (str.to_re "1") (str.to_re "0")))))
(assert (str.in_re x (re.* (re.union (str.to_re "426") (re.+ (str.to_re "8"))))))

(assert (> (+ (* 7 (str.len x)) (* (- 4) (str.len y))) 39))
(assert (<= (- (str.to_int y)) 8))
(assert (> (+ (* (- 7) (str.len x)) (- (str.to_int y))) 33))

(check-sat)