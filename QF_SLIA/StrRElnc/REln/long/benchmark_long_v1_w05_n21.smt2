(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.++ (re.* (str.to_re "282")) (str.to_re "448")) (str.to_re "229"))))

(assert (>= (* 2 (str.len x)) 37))
(assert (<= (* (- 8) (str.to_int x)) 32))
(assert (>= (+ (* (- 10) (str.len x)) (* (- 4) (str.to_int x))) 44))
(assert (<= (* 4 (str.len x)) 29))

(check-sat)