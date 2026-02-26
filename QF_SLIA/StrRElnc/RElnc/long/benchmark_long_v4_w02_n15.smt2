(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len a) 1000))

(assert (= x (str.++ "80" a y z)))

(assert (str.in_re y (re.union (re.+ (str.to_re "2")) (str.to_re "51"))))
(assert (str.in_re z (re.++ (str.to_re "53") (re.* (str.to_re "68")))))
(assert (str.in_re x (re.union (str.to_re "93") (re.+ (re.union (re.range "0" "9") (str.to_re "987"))))))
(assert (str.in_re a (re.* (re.* (re.union (str.to_re "3") (re.* (str.to_re "420")))))))

(assert (= (+ (* 8 (str.len y)) (- (str.len a)) (* (- 3) (str.to_int y)) (str.to_int z)) 29))

(check-sat)