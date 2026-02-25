(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.+ (re.+ (re.* (re.* (str.to_re "4")))))))
(assert (str.in_re x (re.+ (re.++ (re.+ (str.to_re "92")) (str.to_re "515")))))
(assert (str.in_re a (re.* (str.to_re "1"))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "945") (re.++ (str.to_re "28") (re.* (str.to_re "6")))) (str.to_re "60"))))

(assert (>= (+ (* 4 (str.len y)) (* (- 9) (str.to_int a))) 26))

(check-sat)