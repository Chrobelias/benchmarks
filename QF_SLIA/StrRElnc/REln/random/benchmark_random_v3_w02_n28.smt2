(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "489") (re.* (str.to_re "1"))) (str.to_re "3"))))
(assert (str.in_re y (re.* (str.to_re "379"))))
(assert (str.in_re z (re.++ (str.to_re "48") (re.+ (re.+ (re.+ (str.to_re "18")))))))

(assert (<= (+ (* (- 2) (str.len y)) (str.len z) (* 9 (str.to_int z))) 45))

(check-sat)