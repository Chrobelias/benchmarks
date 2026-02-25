(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.++ (re.union (str.to_re "7") (str.to_re "43")) (re.* (str.to_re "15")))))
(assert (str.in_re y (re.union (str.to_re "3") (re.++ (re.* (str.to_re "498")) (re.* (str.to_re "8"))))))
(assert (str.in_re x (re.++ (re.+ (re.range "4" "9")) (re.* (str.to_re "71")))))
(assert (str.in_re z (re.* (str.to_re "30"))))

(assert (>= (+ (* (- 10) (str.len x)) (* (- 5) (str.to_int x))) 95))

(check-sat)