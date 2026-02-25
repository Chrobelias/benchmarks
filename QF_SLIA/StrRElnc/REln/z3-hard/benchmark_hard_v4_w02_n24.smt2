(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.* (re.+ (str.to_re "43")))))
(assert (str.in_re x (re.++ (str.to_re "974") (re.++ (re.* (str.to_re "97")) (re.range "5" "9")))))
(assert (str.in_re y (re.+ (re.++ (re.+ (str.to_re "2")) (str.to_re "15")))))
(assert (str.in_re z (re.union (re.union (str.to_re "6") (str.to_re "39")) (re.+ (re.range "4" "9")))))

(assert (= (+ (* 9 (str.len x)) (* (- 5) (str.len a)) (* (- 6) (str.to_int y))) 11))

(check-sat)