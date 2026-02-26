(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y "46" z) (str.++ x "64")))

(assert (str.in_re y (re.union (re.+ (str.to_re "48")) (str.to_re "422"))))
(assert (str.in_re x (re.+ (re.* (re.union (re.range "1" "5") (re.+ (str.to_re "19")))))))
(assert (str.in_re z (re.union (re.++ (re.* (str.to_re "576")) (re.range "0" "4")) (str.to_re "84"))))

(assert (= (+ (* 6 (str.len x)) (* (- 8) (str.len y)) (* 7 (str.len z)) (* 8 (str.to_int x))) 85))

(check-sat)