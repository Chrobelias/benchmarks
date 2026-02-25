(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.+ (re.++ (str.to_re "24") (str.to_re "900"))) (str.to_re "749"))))
(assert (str.in_re y (re.union (str.to_re "4") (re.+ (str.to_re "1")))))

(assert (<= (* 3 (str.len y)) 38))
(assert (>= (+ (* 6 (str.to_int x)) (* (- 3) (str.to_int y))) 28))
(assert (>= (+ (* 5 (str.to_int x)) (* (- 6) (str.to_int y))) 74))
(assert (<= (+ (* 7 (str.to_int x)) (* 4 (str.to_int y))) 71))

(check-sat)