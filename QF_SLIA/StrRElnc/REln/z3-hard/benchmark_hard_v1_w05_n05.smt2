(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "744"))))

(assert (< (+ (* (- 4) (str.len x)) (* 3 (str.to_int x))) 58))
(assert (<= (+ (* 8 (str.len x)) (* (- 9) (str.to_int x))) 49))
(assert (>= (* 3 (str.len x)) 27))

(check-sat)