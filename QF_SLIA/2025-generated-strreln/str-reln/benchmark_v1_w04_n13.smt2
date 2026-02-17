(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "914")) (str.to_re "334"))))

(assert (<= (* 4 (str.to_int x)) 75))
(assert (< (* (- 4) (str.len x)) 39))
(assert (< (+ (* (- 2) (str.len x)) (* (- 9) (str.to_int x))) 49))

(check-sat)