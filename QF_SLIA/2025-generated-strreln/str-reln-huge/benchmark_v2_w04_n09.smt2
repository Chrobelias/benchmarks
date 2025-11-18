(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.union (re.+ (str.to_re "8")) (re.+ (str.to_re "37")))))
(assert (str.in_re y (re.++ (str.to_re "73") (re.* (re.+ (str.to_re "27"))))))

(assert (> (+ (* 8 (str.len y)) (* (- 7) (str.to_int x)) (* (- 10) (str.to_int y))) 98))
(assert (> (+ (* 6 (str.len x)) (* (- 6) (str.to_int x))) 87))

(check-sat)