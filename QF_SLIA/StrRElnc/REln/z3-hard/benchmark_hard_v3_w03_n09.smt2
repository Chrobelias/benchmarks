(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "698")) (re.+ (str.to_re "28")))))
(assert (str.in_re z (re.+ (re.++ (re.+ (str.to_re "4")) (re.* (re.range "0" "2"))))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "0")) (str.to_re "807"))))

(assert (< (+ (* 5 (str.to_int y)) (* 2 (str.to_int z))) 37))
(assert (> (+ (* (- 7) (str.len z)) (* 8 (str.to_int y)) (* 9 (str.to_int z))) 36))

(check-sat)