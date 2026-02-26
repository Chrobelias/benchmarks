(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y "78") (str.++ z "54" x)))

(assert (str.in_re z (re.union (re.++ (re.+ (str.to_re "89")) (str.to_re "57")) (re.range "5" "8"))))
(assert (str.in_re x (re.+ (re.union (re.+ (re.* (str.to_re "94"))) (re.range "6" "8")))))
(assert (str.in_re y (re.union (re.* (re.range "0" "9")) (re.++ (str.to_re "262") (re.range "4" "6")))))

(assert (= (+ (* (- 4) (str.to_int x)) (* 9 (str.to_int y)) (* 4 (str.to_int z))) 71))
(assert (<= (+ (* 8 (str.len x)) (- (str.len y)) (* (- 4) (str.len z))) 15))

(check-sat)