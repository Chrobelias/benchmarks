(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.union (re.+ (re.range "0" "6")) (re.* (str.to_re "220"))))))
(assert (str.in_re y (re.++ (re.+ (re.union (str.to_re "45") (re.+ (re.range "2" "8")))) (str.to_re "8"))))
(assert (str.in_re z (re.union (re.+ (re.+ (re.range "6" "9"))) (re.+ (str.to_re "63")))))

(assert (< (+ (* (- 10) (str.to_int x)) (* (- 9) (str.to_int y)) (* 10 (str.to_int z))) 30))
(assert (< (+ (* (- 6) (str.len y)) (* 9 (str.to_int y))) 19))
(assert (= (+ (* 3 (str.len z)) (- (str.to_int x)) (* 7 (str.to_int y)) (* (- 10) (str.to_int z))) 74))

(check-sat)