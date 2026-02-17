(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "139") (re.* (str.to_re "73")))))

(assert (>= (+ (* 6 (str.len x)) (* 4 (str.to_int x))) 59))
(assert (<= (* (- 10) (str.len x)) 42))
(assert (< (+ (* (- 10) (str.len x)) (* 3 (str.to_int x))) 65))

(check-sat)