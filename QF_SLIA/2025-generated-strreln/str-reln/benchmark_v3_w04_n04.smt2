(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (str.to_re "9"))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "6") (re.+ (re.* (str.to_re "869")))) (re.range "6" "8"))))
(assert (str.in_re z (re.+ (re.++ (re.* (re.range "6" "9")) (str.to_re "767")))))

(assert (>= (+ (* (- 9) (str.to_int x)) (* 7 (str.to_int y)) (* 2 (str.to_int z))) 2))
(assert (<= (+ (* (- 10) (str.len x)) (* (- 3) (str.len y)) (* 6 (str.len z))) 53))
(assert (<= (+ (* 9 (str.to_int x)) (* 2 (str.to_int z))) 27))
(assert (> (+ (* (- 4) (str.to_int y)) (* 7 (str.to_int z))) 57))

(check-sat)