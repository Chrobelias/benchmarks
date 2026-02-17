(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "1"))))

(assert (<= (* (- 9) (str.to_int x)) 59))
(assert (> (+ (* 9 (str.len x)) (* (- 7) (str.to_int x))) 88))

(check-sat)