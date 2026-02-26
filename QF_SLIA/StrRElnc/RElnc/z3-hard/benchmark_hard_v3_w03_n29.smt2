(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ "42" y x)))

(assert (str.in_re y (re.union (re.+ (str.to_re "781")) (re.* (re.* (str.to_re "69"))))))
(assert (str.in_re z (re.+ (re.union (re.+ (re.range "3" "9")) (re.+ (re.range "1" "5"))))))
(assert (str.in_re x (re.union (re.+ (str.to_re "5")) (re.range "4" "8"))))

(assert (= (+ (* 6 (str.len x)) (* 9 (str.to_int x)) (* (- 10) (str.to_int y))) 85))
(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 3) (str.to_int y)) (* 10 (str.to_int z))) 4))

(check-sat)