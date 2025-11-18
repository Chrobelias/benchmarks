(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "38") (re.union (str.to_re "452") (re.+ (re.range "3" "7")))) (str.to_re "15"))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "527") (str.to_re "78")))))
(assert (str.in_re z (re.+ (re.range "2" "8"))))
(assert (str.in_re a (re.union (re.+ (str.to_re "16")) (str.to_re "9"))))

(assert (>= (+ (* 4 (str.len x)) (* (- 2) (str.len y)) (* 3 (str.len z)) (* 9 (str.len a))) 90))
(assert (< (+ (* 8 (str.len a)) (* 2 (str.to_int y))) 74))

(check-sat)