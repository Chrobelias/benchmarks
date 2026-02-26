(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z y) (str.++ "25" x)))

(assert (str.in_re x (re.++ (re.range "6" "8") (re.union (re.* (re.range "3" "5")) (re.range "2" "5")))))
(assert (str.in_re z (re.union (str.to_re "7") (re.union (re.+ (re.range "2" "5")) (str.to_re "10")))))
(assert (str.in_re y (re.+ (str.to_re "64"))))

(assert (<= (+ (* (- 7) (str.len x)) (* (- 8) (str.len y)) (* 4 (str.len z))) 52))
(assert (= (+ (* 7 (str.to_int x)) (* 8 (str.to_int y)) (* 5 (str.to_int z))) 47))

(check-sat)