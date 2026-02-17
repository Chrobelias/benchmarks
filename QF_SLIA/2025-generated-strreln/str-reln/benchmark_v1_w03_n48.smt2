(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.+ (re.* (str.to_re "32")))))))

(assert (>= (+ (* 7 (str.len x)) (* (- 5) (str.to_int x))) 62))
(assert (> (* 10 (str.len x)) 90))

(check-sat)