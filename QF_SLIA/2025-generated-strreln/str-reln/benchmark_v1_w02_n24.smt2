(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (str.to_re "564")))))

(assert (< (+ (* (- 8) (str.len x)) (* 5 (str.to_int x))) 8))

(check-sat)