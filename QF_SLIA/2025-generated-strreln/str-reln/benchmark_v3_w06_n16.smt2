(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (str.to_re "714") (re.* (re.++ (re.+ (str.to_re "5")) (str.to_re "58"))))))
(assert (str.in_re y (re.+ (re.++ (re.union (re.range "6" "9") (str.to_re "15")) (str.to_re "94")))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "20")) (re.union (re.+ (str.to_re "95")) (re.range "5" "7")))))

(assert (> (+ (* 6 (str.len z)) (* 5 (str.to_int x)) (* 4 (str.to_int y))) 74))
(assert (< (+ (* (- 7) (str.len z)) (* (- 3) (str.to_int y))) 18))
(assert (>= (+ (* 5 (str.to_int x)) (* 2 (str.to_int y)) (- (str.to_int z))) 5))
(assert (= (+ (* (- 7) (str.to_int x)) (* 2 (str.to_int y)) (* (- 3) (str.to_int z))) 46))

(check-sat)