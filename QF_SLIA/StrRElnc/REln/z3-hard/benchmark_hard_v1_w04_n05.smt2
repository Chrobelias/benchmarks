(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "37"))))

(assert (>= (* 6 (str.to_int x)) 5))
(assert (<= (* (- 10) (str.len x)) 26))
(assert (>= (+ (* 8 (str.len x)) (* (- 2) (str.to_int x))) 58))

(check-sat)