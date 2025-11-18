(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (str.to_re "5"))))
(assert (str.in_re y (re.++ (str.to_re "788") (re.+ (re.++ (str.to_re "3") (str.to_re "565"))))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "5") (re.++ (str.to_re "35") (str.to_re "841"))))))

(assert (>= (+ (* (- 10) (str.len z)) (* 8 (str.to_int z))) 67))
(assert (>= (+ (* 7 (str.len z)) (* (- 8) (str.to_int y)) (* (- 2) (str.to_int z))) 64))

(check-sat)