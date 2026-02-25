(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.union (str.to_re "531") (re.++ (re.+ (re.range "6" "9")) (str.to_re "89")))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "61")) (re.+ (str.to_re "17")))))
(assert (str.in_re x (re.+ (re.* (re.+ (str.to_re "54"))))))

(assert (= (+ (* (- 3) (str.len x)) (* (- 10) (str.to_int y))) 38))
(assert (>= (+ (* 9 (str.to_int x)) (* (- 8) (str.to_int y)) (- (str.to_int z))) 79))

(check-sat)