(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.++ (str.to_re "511") (re.* (re.+ (re.range "6" "8")))))))
(assert (str.in_re z (re.++ (re.++ (re.* (str.to_re "531")) (str.to_re "428")) (str.to_re "216"))))
(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "8")) (re.+ (str.to_re "8"))))))

(assert (>= (+ (* (- 6) (str.len x)) (* (- 4) (str.len y)) (* 8 (str.len z))) 74))
(assert (<= (+ (* 4 (str.to_int x)) (* 7 (str.to_int y)) (* 2 (str.to_int z))) 58))

(check-sat)