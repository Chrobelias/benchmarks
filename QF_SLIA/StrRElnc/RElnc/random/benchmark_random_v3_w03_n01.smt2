(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ "77" z) (str.++ x "85" y "28")))

(assert (str.in_re y (re.+ (re.++ (str.to_re "3") (re.++ (str.to_re "353") (str.to_re "2"))))))
(assert (str.in_re x (re.+ (re.union (str.to_re "5") (re.union (str.to_re "8") (re.* (re.range "3" "8")))))))
(assert (str.in_re z (re.* (re.union (re.range "1" "7") (re.union (re.range "0" "9") (re.+ (re.range "6" "9")))))))

(assert (>= (+ (* (- 4) (str.to_int x)) (* 10 (str.to_int y)) (* (- 10) (str.to_int z))) 6))
(assert (= (+ (* (- 2) (str.len y)) (* (- 9) (str.len z))) 38))
(assert (= (+ (* 2 (str.to_int x)) (* (- 9) (str.to_int z))) 35))

(check-sat)