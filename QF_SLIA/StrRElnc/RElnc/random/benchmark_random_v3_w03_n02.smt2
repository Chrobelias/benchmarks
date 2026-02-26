(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ "66" y z)))

(assert (str.in_re x (re.union (str.to_re "67") (re.* (re.range "0" "8")))))
(assert (str.in_re y (re.++ (re.+ (re.+ (str.to_re "61"))) (re.range "3" "5"))))
(assert (str.in_re z (re.++ (str.to_re "608") (re.* (re.union (str.to_re "784") (re.+ (str.to_re "201")))))))

(assert (= (+ (* 6 (str.len x)) (* 8 (str.len z)) (str.to_int z)) 76))
(assert (> (+ (* 2 (str.len x)) (* 9 (str.len y)) (str.len z)) 58))

(check-sat)