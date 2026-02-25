(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "83") (re.* (str.to_re "851"))) (re.* (str.to_re "0")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "44") (str.to_re "8")))))

(assert (<= (+ (* (- 4) (str.to_int x)) (str.to_int y)) 98))
(assert (>= (+ (* (- 2) (str.len x)) (* 7 (str.len y))) 58))

(check-sat)