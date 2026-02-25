(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.++ (str.to_re "5") (re.+ (str.to_re "963"))) (str.to_re "169")))))

(assert (>= (* (- 4) (str.to_int x)) 50))
(assert (<= (+ (* (- 5) (str.len x)) (* 7 (str.to_int x))) 77))
(assert (> (* (- 6) (str.len x)) 34))

(check-sat)