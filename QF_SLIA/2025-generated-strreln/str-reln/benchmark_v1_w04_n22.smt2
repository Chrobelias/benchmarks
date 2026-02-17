(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.+ (re.* (str.to_re "60"))))))

(assert (< (+ (* (- 4) (str.len x)) (* 7 (str.to_int x))) 36))
(assert (>= (* 10 (str.to_int x)) 11))
(assert (> (* 2 (str.len x)) 19))

(check-sat)