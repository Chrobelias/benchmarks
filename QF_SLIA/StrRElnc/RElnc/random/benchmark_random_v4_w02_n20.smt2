(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x y "11") (str.++ "31" z a)))

(assert (str.in_re z (re.union (str.to_re "5") (re.* (str.to_re "52")))))
(assert (str.in_re a (re.union (re.* (re.range "0" "8")) (str.to_re "7"))))
(assert (str.in_re x (re.union (re.+ (re.+ (re.* (str.to_re "1")))) (re.range "0" "9"))))
(assert (str.in_re y (re.* (re.range "1" "8"))))

(assert (= (+ (* (- 4) (str.len y)) (* 5 (str.len z)) (- (str.to_int y))) 36))

(check-sat)