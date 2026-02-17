(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "420"))))

(assert (> (+ (* 2 (str.len x)) (* (- 4) (str.to_int x))) 43))

(check-sat)