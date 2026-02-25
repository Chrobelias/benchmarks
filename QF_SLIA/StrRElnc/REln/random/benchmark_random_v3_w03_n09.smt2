(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (str.to_re "27") (re.+ (str.to_re "284")))))
(assert (str.in_re y (re.++ (re.range "1" "9") (re.++ (re.++ (re.+ (str.to_re "517")) (str.to_re "4")) (str.to_re "9")))))
(assert (str.in_re z (re.* (str.to_re "25"))))

(assert (<= (+ (str.len x) (* 6 (str.len y)) (* 8 (str.len z)) (* (- 9) (str.to_int x)) (* 10 (str.to_int z))) 56))
(assert (<= (+ (* (- 9) (str.to_int x)) (str.to_int y) (* (- 8) (str.to_int z))) 29))

(check-sat)