(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= x (str.++ "88" z y)))

(assert (str.in_re x (re.union (re.union (str.to_re "466") (re.+ (re.range "2" "8"))) (re.+ (str.to_re "876")))))
(assert (str.in_re z (re.++ (re.union (re.* (str.to_re "46")) (str.to_re "436")) (re.+ (re.range "3" "8")))))
(assert (str.in_re y (re.union (str.to_re "2") (re.+ (str.to_re "659")))))

(assert (<= (+ (* (- 2) (str.len x)) (* (- 7) (str.len y)) (* (- 8) (str.len z))) 18))
(assert (> (+ (* (- 8) (str.to_int x)) (- (str.to_int y)) (* 9 (str.to_int z))) 69))

(check-sat)