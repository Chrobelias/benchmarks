(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "224") (re.union (str.to_re "8") (re.+ (str.to_re "28")))) (re.range "2" "8"))))
(assert (str.in_re a (re.union (re.union (str.to_re "3") (re.* (re.range "5" "7"))) (re.+ (re.range "1" "3")))))
(assert (str.in_re z (re.* (re.+ (re.* (str.to_re "10"))))))
(assert (str.in_re y (re.++ (str.to_re "1") (re.+ (str.to_re "1")))))

(assert (> (+ (* 9 (str.len z)) (* (- 9) (str.to_int x))) 59))

(check-sat)