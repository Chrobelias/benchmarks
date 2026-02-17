(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (str.to_re "98"))))

(assert (<= (* (- 9) (str.len x)) 20))
(assert (>= (* 3 (str.to_int x)) 77))
(assert (<= (* (- 7) (str.to_int x)) 8))
(assert (= (+ (* (- 10) (str.len x)) (* 3 (str.to_int x))) 94))

(check-sat)