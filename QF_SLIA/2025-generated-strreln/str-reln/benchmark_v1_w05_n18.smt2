(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "581"))))

(assert (> (* 2 (str.to_int x)) 2))
(assert (<= (+ (* (- 8) (str.len x)) (* 2 (str.to_int x))) 53))
(assert (>= (* 7 (str.len x)) 96))
(assert (<= (* 6 (str.to_int x)) 47))

(check-sat)