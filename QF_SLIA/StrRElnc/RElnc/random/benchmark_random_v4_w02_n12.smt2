(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ z y "35") (str.++ "60" a x)))

(assert (str.in_re x (re.+ (re.+ (re.++ (str.to_re "51") (re.+ (re.range "1" "7")))))))
(assert (str.in_re a (re.+ (re.++ (re.+ (str.to_re "463")) (str.to_re "28")))))
(assert (str.in_re z (re.+ (re.* (re.union (re.range "4" "8") (re.* (re.range "0" "7")))))))
(assert (str.in_re y (re.++ (re.* (str.to_re "99")) (str.to_re "7"))))

(assert (>= (+ (* 4 (str.len y)) (* 2 (str.len a)) (* (- 10) (str.to_int x)) (* 8 (str.to_int a))) 23))

(check-sat)