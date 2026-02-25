(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.+ (re.++ (re.range "6" "9") (re.union (str.to_re "312") (str.to_re "88"))))))
(assert (str.in_re z (re.+ (re.union (re.union (re.+ (str.to_re "21")) (str.to_re "24")) (str.to_re "9")))))
(assert (str.in_re x (re.+ (re.range "5" "8"))))

(assert (= (+ (* 6 (str.len x)) (* (- 9) (str.len y)) (* 6 (str.len z))) 15))
(assert (< (+ (* 8 (str.len x)) (* (- 9) (str.len y)) (* 3 (str.len z))) 55))
(assert (<= (+ (* 4 (str.to_int y)) (* 10 (str.to_int z))) 52))

(check-sat)