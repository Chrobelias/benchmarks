(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z y) (str.++ x "11")))

(assert (str.in_re y (re.+ (str.to_re "1"))))
(assert (str.in_re z (re.* (re.+ (re.union (str.to_re "39") (re.* (re.range "0" "5")))))))
(assert (str.in_re x (re.union (str.to_re "10") (re.++ (str.to_re "48") (re.++ (str.to_re "521") (re.+ (str.to_re "70")))))))

(assert (<= (+ (* 9 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 4) (str.to_int z))) 94))
(assert (>= (+ (* (- 3) (str.len x)) (* (- 10) (str.len y)) (* (- 4) (str.len z))) 56))

(check-sat)