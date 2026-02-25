(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "3")) (str.to_re "71"))))
(assert (str.in_re y (re.+ (re.* (re.++ (str.to_re "800") (str.to_re "835"))))))

(assert (>= (+ (* (- 4) (str.len y)) (* 6 (str.to_int x)) (* 4 (str.to_int y))) 22))
(assert (> (+ (* 10 (str.len x)) (* (- 10) (str.len y))) 86))
(assert (>= (+ (* 9 (str.len x)) (* 8 (str.len y))) 46))

(check-sat)