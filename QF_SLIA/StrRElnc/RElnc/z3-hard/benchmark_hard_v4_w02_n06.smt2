(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= x (str.++ y a "18" z)))

(assert (str.in_re y (re.* (re.union (re.* (re.* (str.to_re "58"))) (str.to_re "22")))))
(assert (str.in_re x (re.+ (re.range "0" "8"))))
(assert (str.in_re a (re.* (str.to_re "565"))))
(assert (str.in_re z (re.++ (re.+ (re.union (str.to_re "69") (re.* (re.range "7" "9")))) (str.to_re "38"))))

(assert (< (+ (* (- 9) (str.len x)) (* (- 5) (str.len z)) (* (- 2) (str.len a))) 35))
(assert (>= (+ (* (- 2) (str.to_int x)) (* 6 (str.to_int y)) (* (- 10) (str.to_int z)) (* 7 (str.to_int a))) 59))

(check-sat)