(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.* (re.union (re.union (re.+ (str.to_re "458")) (str.to_re "99")) (str.to_re "105")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "887") (str.to_re "0")))))
(assert (str.in_re z (re.+ (str.to_re "70"))))
(assert (str.in_re x (re.++ (str.to_re "93") (re.* (re.* (re.range "5" "8"))))))

(assert (<= (+ (* 5 (str.len a)) (* (- 2) (str.to_int y))) 59))

(check-sat)