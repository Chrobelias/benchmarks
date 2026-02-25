(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (re.++ (str.to_re "302") (re.* (str.to_re "753"))))))
(assert (str.in_re x (re.* (re.range "0" "2"))))
(assert (str.in_re z (re.+ (str.to_re "37"))))

(assert (> (+ (* 3 (str.len z)) (* (- 3) (str.to_int x)) (* 4 (str.to_int z))) 12))

(check-sat)