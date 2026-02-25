(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.++ (str.to_re "436") (re.++ (re.+ (str.to_re "868")) (str.to_re "879")))))
(assert (str.in_re y (re.union (re.++ (re.* (str.to_re "358")) (str.to_re "60")) (str.to_re "79"))))

(assert (= (+ (* (- 8) (str.len x)) (* 10 (str.len y))) 23))
(assert (<= (+ (* 8 (str.len x)) (* (- 2) (str.len y))) 23))
(assert (> (+ (* 8 (str.len x)) (* 7 (str.len y))) 48))
(assert (> (+ (* 2 (str.to_int x)) (* 9 (str.to_int y))) 24))

(check-sat)