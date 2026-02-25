(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.+ (re.* (re.+ (str.to_re "92")))))))

(assert (< (* (- 10) (str.len x)) 10))
(assert (<= (* 9 (str.to_int x)) 6))
(assert (>= (+ (* 2 (str.len x)) (* (- 7) (str.to_int x))) 0))

(check-sat)