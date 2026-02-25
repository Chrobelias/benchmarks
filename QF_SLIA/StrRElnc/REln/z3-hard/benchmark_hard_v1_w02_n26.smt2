(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "674"))))

(assert (>= (+ (* 4 (str.len x)) (* (- 3) (str.to_int x))) 3))

(check-sat)