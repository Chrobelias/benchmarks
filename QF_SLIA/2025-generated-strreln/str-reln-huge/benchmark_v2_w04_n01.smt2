(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "76") (str.to_re "2"))))))
(assert (str.in_re y (re.+ (re.* (re.union (str.to_re "87") (str.to_re "2"))))))

(assert (= (+ (* (- 8) (str.len x)) (* 6 (str.to_int y))) 98))
(assert (> (+ (* 8 (str.len x)) (* (- 2) (str.len y))) 81))
(assert (= (+ (* (- 2) (str.len x)) (* 7 (str.len y))) 64))

(check-sat)