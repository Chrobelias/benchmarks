(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (str.to_re "7"))))

(assert (>= (+ (* 2 (str.len x)) (* (- 6) (str.to_int x))) 33))
(assert (> (* 2 (str.len x)) 37))
(assert (>= (str.to_int x) 8))

(check-sat)