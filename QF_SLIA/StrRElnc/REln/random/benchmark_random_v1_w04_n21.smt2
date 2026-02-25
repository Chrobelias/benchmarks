(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "602") (re.* (str.to_re "59"))) (str.to_re "49"))))

(assert (<= (* 9 (str.to_int x)) 24))
(assert (> (* (- 10) (str.len x)) 65))
(assert (<= (* 2 (str.to_int x)) 18))
(assert (<= (* (- 5) (str.to_int x)) 2))

(check-sat)