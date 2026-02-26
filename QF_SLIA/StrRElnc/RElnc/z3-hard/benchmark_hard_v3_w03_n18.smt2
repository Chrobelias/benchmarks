(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z y) (str.++ x "75")))

(assert (str.in_re x (re.* (re.union (re.range "3" "5") (re.range "5" "8")))))
(assert (str.in_re y (re.+ (re.range "0" "7"))))
(assert (str.in_re z (re.* (re.++ (re.+ (str.to_re "68")) (str.to_re "4")))))

(assert (= (+ (* (- 3) (str.len x)) (* 7 (str.to_int z))) 79))
(assert (< (+ (* (- 3) (str.to_int x)) (* (- 3) (str.to_int y)) (* 10 (str.to_int z))) 61))

(check-sat)