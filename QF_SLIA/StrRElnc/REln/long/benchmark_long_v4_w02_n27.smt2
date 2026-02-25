(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.+ (re.+ (re.+ (str.to_re "211")))))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "125") (re.++ (re.* (re.range "0" "7")) (str.to_re "11"))))))
(assert (str.in_re z (re.+ (str.to_re "51"))))
(assert (str.in_re y (re.++ (re.* (str.to_re "67")) (re.range "6" "9"))))

(assert (< (+ (* (- 5) (str.len z)) (* (- 6) (str.to_int y)) (* 5 (str.to_int z))) 73))

(check-sat)