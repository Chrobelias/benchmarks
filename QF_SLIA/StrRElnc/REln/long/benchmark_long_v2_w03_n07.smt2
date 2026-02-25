(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.union (re.* (str.to_re "718")) (str.to_re "95"))))
(assert (str.in_re x (re.union (re.+ (str.to_re "90")) (str.to_re "11"))))

(assert (<= (+ (* 3 (str.len x)) (str.to_int x) (* 6 (str.to_int y))) 8))
(assert (> (+ (* (- 3) (str.to_int x)) (* (- 5) (str.to_int y))) 87))

(check-sat)