(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= y (str.++ x z "32")))

(assert (str.in_re z (re.+ (str.to_re "37"))))
(assert (str.in_re x (re.++ (re.+ (re.union (str.to_re "133") (str.to_re "840"))) (str.to_re "16"))))
(assert (str.in_re y (re.+ (re.range "0" "8"))))

(assert (= (+ (* 9 (str.len x)) (* 9 (str.len y)) (* 9 (str.len z))) 77))
(assert (<= (+ (str.to_int x) (* 10 (str.to_int y)) (* 10 (str.to_int z))) 86))

(check-sat)