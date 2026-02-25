(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "3")) (re.* (str.to_re "201"))))))
(assert (str.in_re y (re.union (re.* (re.* (str.to_re "297"))) (str.to_re "340"))))

(assert (> (+ (* (- 2) (str.to_int x)) (* 9 (str.to_int y))) 48))
(assert (= (+ (* (- 10) (str.len x)) (* (- 9) (str.to_int x))) 80))
(assert (> (+ (* 5 (str.to_int x)) (* (- 3) (str.to_int y))) 5))

(check-sat)