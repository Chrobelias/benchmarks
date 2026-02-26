(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ y z "81")))

(assert (str.in_re x (re.union (re.++ (re.* (re.range "0" "8")) (re.range "1" "8")) (str.to_re "785"))))
(assert (str.in_re z (re.union (re.++ (str.to_re "762") (re.range "0" "6")) (re.* (str.to_re "691")))))
(assert (str.in_re y (re.++ (re.* (str.to_re "279")) (re.union (str.to_re "133") (str.to_re "7")))))

(assert (>= (+ (str.to_int x) (* (- 4) (str.to_int y)) (str.to_int z)) 76))
(assert (>= (+ (- (str.len x)) (* (- 2) (str.len y)) (* (- 9) (str.len z))) 25))

(check-sat)