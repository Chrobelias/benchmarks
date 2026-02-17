(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "691")) (str.to_re "49")) (str.to_re "6"))))

(assert (<= (+ (* 6 (str.len x)) (* (- 5) (str.to_int x))) 53))
(assert (<= (+ (* (- 8) (str.len x)) (* 5 (str.to_int x))) 15))

(check-sat)