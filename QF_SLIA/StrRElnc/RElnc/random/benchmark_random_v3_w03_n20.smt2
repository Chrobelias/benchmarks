(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ x "56" "37" z)))

(assert (str.in_re y (re.union (re.union (str.to_re "87") (re.+ (re.range "3" "9"))) (str.to_re "210"))))
(assert (str.in_re x (re.++ (re.* (str.to_re "51")) (re.range "3" "8"))))
(assert (str.in_re z (re.++ (re.union (re.* (re.+ (str.to_re "709"))) (str.to_re "877")) (str.to_re "5"))))

(assert (> (+ (* (- 10) (str.to_int x)) (- (str.to_int y)) (* 9 (str.to_int z))) 13))
(assert (<= (+ (* 9 (str.to_int y)) (str.to_int z)) 5))
(assert (< (+ (* 3 (str.len x)) (* 7 (str.len y)) (* (- 8) (str.len z))) 28))

(check-sat)