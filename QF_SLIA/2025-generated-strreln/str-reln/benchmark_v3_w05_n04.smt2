(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "6")) (str.to_re "25"))))
(assert (str.in_re y (re.union (re.+ (re.+ (str.to_re "147"))) (re.* (str.to_re "579")))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "80") (re.+ (re.+ (str.to_re "90")))))))

(assert (>= (+ (* (- 2) (str.len x)) (* 3 (str.len y))) 49))
(assert (<= (+ (* (- 8) (str.len z)) (* 9 (str.to_int z))) 32))
(assert (< (+ (* (- 3) (str.len z)) (* (- 2) (str.to_int y))) 93))

(check-sat)