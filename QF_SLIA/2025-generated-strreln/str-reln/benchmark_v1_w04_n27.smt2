(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "313") (re.* (str.to_re "250"))) (str.to_re "8"))))

(assert (< (* (- 4) (str.len x)) 51))
(assert (<= (+ (* (- 2) (str.len x)) (* 10 (str.to_int x))) 15))
(assert (<= (* (- 5) (str.len x)) 27))

(check-sat)