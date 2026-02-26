(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= x (str.++ "23" y z)))

(assert (str.in_re x (re.union (re.* (re.union (re.range "0" "3") (re.range "4" "6"))) (str.to_re "83"))))
(assert (str.in_re y (re.+ (re.union (re.range "0" "8") (re.range "3" "5")))))
(assert (str.in_re z (re.* (re.++ (str.to_re "440") (re.range "4" "8")))))

(assert (<= (+ (* 5 (str.to_int x)) (* 6 (str.to_int y)) (* 9 (str.to_int z))) 81))
(assert (<= (+ (* 5 (str.len x)) (* (- 6) (str.to_int x))) 91))

(check-sat)