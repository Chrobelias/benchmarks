(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "65") (re.+ (str.to_re "1")))))

(assert (> (* 4 (str.len x)) 89))
(assert (< (+ (* (- 2) (str.len x)) (* 4 (str.to_int x))) 78))
(assert (<= (* (- 6) (str.to_int x)) 65))

(check-sat)