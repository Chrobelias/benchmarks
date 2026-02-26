(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ "24" x z)))

(assert (str.in_re x (re.++ (re.* (str.to_re "465")) (re.+ (str.to_re "3")))))
(assert (str.in_re z (re.+ (re.++ (re.* (re.range "2" "5")) (str.to_re "25")))))
(assert (str.in_re y (re.++ (re.* (re.+ (str.to_re "99"))) (re.* (re.range "1" "5")))))

(assert (> (+ (* (- 3) (str.len x)) (* (- 10) (str.len y)) (* (- 10) (str.to_int z))) 54))

(check-sat)