(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.* (re.++ (re.range "3" "8") (re.range "4" "6"))) (str.to_re "8"))))
(assert (str.in_re y (re.* (re.union (str.to_re "97") (re.* (str.to_re "367"))))))
(assert (str.in_re z (re.+ (re.+ (re.* (str.to_re "6"))))))
(assert (str.in_re a (re.union (re.union (str.to_re "315") (str.to_re "43")) (re.+ (str.to_re "571")))))

(assert (>= (+ (* (- 8) (str.len x)) (str.len z) (* (- 7) (str.to_int y))) 56))

(check-sat)