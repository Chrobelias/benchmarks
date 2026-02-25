(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.++ (str.to_re "1") (str.to_re "420")) (re.* (str.to_re "12")))))
(assert (str.in_re x (re.* (re.union (str.to_re "7") (re.union (str.to_re "87") (str.to_re "5"))))))

(assert (> (+ (* (- 6) (str.len y)) (* 10 (str.to_int y))) 29))
(assert (<= (+ (* (- 2) (str.len x)) (* 6 (str.len y))) 6))

(check-sat)