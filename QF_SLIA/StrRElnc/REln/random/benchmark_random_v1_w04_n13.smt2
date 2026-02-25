(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "65")) (re.++ (str.to_re "12") (re.* (str.to_re "462"))))))

(assert (> (+ (* 8 (str.len x)) (* 8 (str.to_int x))) 2))
(assert (> (* (- 3) (str.to_int x)) 53))
(assert (>= (* 6 (str.len x)) 20))

(check-sat)