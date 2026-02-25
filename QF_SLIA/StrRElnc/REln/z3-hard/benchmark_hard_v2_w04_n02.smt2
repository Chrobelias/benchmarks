(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.+ (re.+ (str.to_re "2"))))))
(assert (str.in_re x (re.* (re.++ (str.to_re "899") (re.* (str.to_re "935"))))))

(assert (>= (+ (* 5 (str.len y)) (* (- 4) (str.to_int x))) 73))
(assert (< (+ (* (- 6) (str.len x)) (* 10 (str.len y))) 88))
(assert (< (+ (str.len x) (* (- 7) (str.len y))) 64))

(check-sat)