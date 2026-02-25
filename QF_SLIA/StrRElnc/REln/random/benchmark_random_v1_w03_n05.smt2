(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "529") (str.to_re "16")))))

(assert (< (+ (* 2 (str.len x)) (* (- 6) (str.to_int x))) 30))
(assert (<= (* 6 (str.len x)) 0))

(check-sat)