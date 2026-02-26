(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z "38") (str.++ "32" x)))

(assert (str.in_re z (re.* (str.to_re "32"))))
(assert (str.in_re x (re.++ (re.+ (re.range "1" "8")) (re.union (re.+ (str.to_re "66")) (re.range "2" "8")))))
(assert (str.in_re y (re.union (re.++ (str.to_re "95") (str.to_re "9")) (re.+ (re.range "1" "3")))))

(assert (< (+ (* (- 3) (str.to_int x)) (* 4 (str.to_int y)) (* (- 6) (str.to_int z))) 6))
(assert (= (+ (* (- 2) (str.len y)) (* (- 4) (str.to_int z))) 50))

(check-sat)