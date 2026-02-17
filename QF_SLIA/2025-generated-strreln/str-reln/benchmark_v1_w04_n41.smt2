(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "0")) (str.to_re "1"))))

(assert (> (* 6 (str.len x)) 23))
(assert (>= (* 7 (str.to_int x)) 20))
(assert (<= (+ (* (- 8) (str.len x)) (* (- 6) (str.to_int x))) 13))

(check-sat)