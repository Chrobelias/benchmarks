(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "831"))))

(assert (>= (+ (* 10 (str.len x)) (* (- 9) (str.to_int x))) 65))

(check-sat)