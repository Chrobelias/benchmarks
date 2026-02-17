(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "659"))))

(assert (<= (+ (* (- 7) (str.len x)) (* 9 (str.to_int x))) 14))
(assert (<= (+ (* (- 5) (str.len x)) (* (- 2) (str.to_int x))) 87))
(assert (> (* 10 (str.to_int x)) 93))

(check-sat)