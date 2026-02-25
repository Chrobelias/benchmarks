(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (re.* (str.to_re "502")) (str.to_re "7"))))

(assert (>= (+ (* 4 (str.len x)) (* (- 9) (str.to_int x))) 41))

(check-sat)