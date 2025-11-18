(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (str.to_re "9"))))
(assert (str.in_re y (re.++ (str.to_re "23") (re.* (re.++ (re.range "0" "2") (str.to_re "418"))))))
(assert (str.in_re z (re.++ (str.to_re "79") (re.+ (str.to_re "27")))))

(assert (>= (+ (* (- 9) (str.to_int x)) (* 2 (str.to_int z))) 56))
(assert (= (+ (* (- 10) (str.to_int x)) (* (- 9) (str.to_int y)) (* 2 (str.to_int z))) 30))
(assert (< (+ (* (- 7) (str.len x)) (* (- 8) (str.len y)) (* (- 8) (str.len z))) 40))
(assert (<= (+ (* 7 (str.len x)) (* 6 (str.len y)) (* (- 2) (str.len z))) 44))

(check-sat)