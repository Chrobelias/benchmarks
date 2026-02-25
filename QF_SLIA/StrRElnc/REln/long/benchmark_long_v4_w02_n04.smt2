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

(assert (str.in_re y (re.union (re.range "7" "9") (re.+ (re.range "7" "9")))))
(assert (str.in_re a (re.* (re.++ (str.to_re "83") (re.+ (re.+ (re.range "1" "8")))))))
(assert (str.in_re z (re.++ (str.to_re "7") (re.++ (re.+ (str.to_re "53")) (re.+ (str.to_re "971"))))))
(assert (str.in_re x (re.union (re.union (re.* (str.to_re "159")) (re.range "6" "9")) (str.to_re "310"))))

(assert (< (+ (* 2 (str.to_int x)) (* 5 (str.to_int y)) (* (- 5) (str.to_int z)) (* 4 (str.to_int a))) 30))
(assert (= (* (- 9) (str.len x)) 95))

(check-sat)