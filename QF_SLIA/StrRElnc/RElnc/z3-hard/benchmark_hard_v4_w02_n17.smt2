(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x z) (str.++ a y "56")))

(assert (str.in_re y (re.* (str.to_re "47"))))
(assert (str.in_re a (re.union (str.to_re "2") (re.union (re.+ (re.range "0" "9")) (str.to_re "84")))))
(assert (str.in_re z (re.* (re.union (re.range "4" "8") (str.to_re "161")))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "450") (re.++ (str.to_re "8") (re.range "6" "9"))))))

(assert (= (+ (* 9 (str.len z)) (* 6 (str.to_int x)) (* (- 4) (str.to_int y))) 0))

(check-sat)