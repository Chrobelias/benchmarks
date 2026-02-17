(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "996")) (str.to_re "284"))))

(assert (<= (+ (* (- 9) (str.len x)) (* 7 (str.to_int x))) 52))

(check-sat)