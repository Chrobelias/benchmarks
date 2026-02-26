(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ z "58" x)))

(assert (str.in_re y (re.+ (re.range "1" "8"))))
(assert (str.in_re x (re.union (re.* (str.to_re "361")) (str.to_re "67"))))
(assert (str.in_re z (re.++ (re.++ (str.to_re "24") (re.+ (re.range "5" "9"))) (re.range "3" "5"))))

(assert (= (+ (* (- 4) (str.len z)) (* (- 6) (str.to_int z))) 3))
(assert (> (+ (* 4 (str.to_int x)) (* 7 (str.to_int y)) (* 2 (str.to_int z))) 28))

(check-sat)