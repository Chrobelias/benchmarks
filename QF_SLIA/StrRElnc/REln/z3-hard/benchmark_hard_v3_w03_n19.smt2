(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (str.to_re "55") (re.union (re.* (str.to_re "90")) (str.to_re "4")))))
(assert (str.in_re y (re.+ (re.+ (re.+ (str.to_re "950"))))))
(assert (str.in_re z (re.++ (re.++ (str.to_re "38") (re.* (re.range "2" "8"))) (str.to_re "45"))))

(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 2) (str.to_int y)) (* (- 7) (str.to_int z))) 74))
(assert (> (+ (* 7 (str.len z)) (* (- 8) (str.to_int y))) 77))

(check-sat)