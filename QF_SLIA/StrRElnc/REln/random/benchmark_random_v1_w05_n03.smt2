(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (str.to_re "27") (re.* (str.to_re "982")))))

(assert (> (+ (* (- 9) (str.len x)) (* (- 6) (str.to_int x))) 55))
(assert (= (* 10 (str.to_int x)) 24))
(assert (= (+ (* (- 8) (str.len x)) (* 10 (str.to_int x))) 8))

(check-sat)