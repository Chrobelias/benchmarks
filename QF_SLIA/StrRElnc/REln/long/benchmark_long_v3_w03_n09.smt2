(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.union (re.union (str.to_re "564") (re.+ (str.to_re "758"))) (re.range "7" "9"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "1")) (re.++ (str.to_re "53") (str.to_re "97")))))
(assert (str.in_re x (re.* (re.+ (str.to_re "96")))))

(assert (>= (* 3 (str.to_int z)) 80))
(assert (> (+ (- (str.len z)) (* 2 (str.to_int y)) (* (- 5) (str.to_int z))) 5))

(check-sat)