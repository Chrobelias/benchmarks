(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "535")) (str.to_re "817"))))

(assert (<= (+ (* (- 2) (str.len x)) (* 5 (str.to_int x))) 88))

(check-sat)