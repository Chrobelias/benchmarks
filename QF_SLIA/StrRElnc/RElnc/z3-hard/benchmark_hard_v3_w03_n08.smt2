(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ x "26" z "99")))

(assert (str.in_re y (re.* (re.+ (re.union (re.range "1" "7") (re.range "2" "9"))))))
(assert (str.in_re x (re.++ (re.+ (re.range "1" "4")) (re.++ (str.to_re "27") (str.to_re "32")))))
(assert (str.in_re z (re.union (re.* (re.++ (str.to_re "26") (re.* (str.to_re "157")))) (str.to_re "255"))))

(assert (>= (+ (* 3 (str.len x)) (* (- 4) (str.len z)) (* 10 (str.to_int x))) 82))
(assert (= (+ (- (str.to_int x)) (* (- 9) (str.to_int y)) (* 3 (str.to_int z))) 13))

(check-sat)