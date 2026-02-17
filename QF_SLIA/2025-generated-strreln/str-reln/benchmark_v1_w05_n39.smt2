(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "526")) (str.to_re "26"))))

(assert (< (+ (* (- 7) (str.len x)) (str.to_int x)) 71))
(assert (<= (+ (* (- 5) (str.len x)) (* 7 (str.to_int x))) 46))
(assert (<= (* 4 (str.to_int x)) 98))

(check-sat)