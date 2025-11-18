(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.+ (re.+ (str.to_re "100"))))))
(assert (str.in_re y (re.+ (re.+ (str.to_re "5")))))
(assert (str.in_re z (re.+ (re.++ (re.range "6" "8") (re.+ (str.to_re "974"))))))

(assert (>= (+ (* (- 9) (str.len x)) (* (- 8) (str.len y)) (* 2 (str.len z))) 25))
(assert (= (+ (* 3 (str.to_int x)) (* 2 (str.to_int y)) (str.to_int z)) 70))
(assert (<= (+ (* (- 9) (str.len z)) (- (str.to_int z))) 44))

(check-sat)