(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (str.to_re "297") (re.+ (re.* (str.to_re "773"))))))
(assert (str.in_re x (re.+ (re.union (str.to_re "15") (re.+ (str.to_re "50"))))))

(assert (< (+ (* 4 (str.len x)) (* 9 (str.to_int y))) 5))
(assert (<= (+ (* (- 8) (str.len x)) (* (- 8) (str.len y))) 55))

(check-sat)