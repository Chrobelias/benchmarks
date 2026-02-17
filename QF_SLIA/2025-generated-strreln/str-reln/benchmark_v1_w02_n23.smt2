(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.++ (re.++ (str.to_re "90") (str.to_re "85")) (str.to_re "445")))))

(assert (>= (+ (* 9 (str.len x)) (* (- 6) (str.to_int x))) 38))

(check-sat)