(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x y) (str.++ "45" z)))

(assert (str.in_re y (re.+ (re.union (re.* (re.+ (str.to_re "17"))) (re.range "0" "9")))))
(assert (str.in_re x (re.* (re.* (re.++ (re.* (str.to_re "93")) (re.range "2" "9"))))))
(assert (str.in_re z (re.++ (re.++ (re.+ (re.range "1" "6")) (re.+ (str.to_re "182"))) (str.to_re "61"))))

(assert (= (+ (* 4 (str.len x)) (* (- 8) (str.len y)) (* 3 (str.to_int x)) (- (str.to_int z))) 24))

(check-sat)