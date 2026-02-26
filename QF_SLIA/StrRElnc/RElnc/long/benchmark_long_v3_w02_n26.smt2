(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ x z "13")))

(assert (str.in_re y (re.+ (re.+ (re.+ (re.+ (re.range "1" "9")))))))
(assert (str.in_re z (re.+ (re.+ (str.to_re "134")))))
(assert (str.in_re x (re.++ (str.to_re "312") (re.++ (re.range "6" "9") (re.+ (re.+ (str.to_re "184")))))))

(assert (< (+ (* (- 5) (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 6) (str.to_int z))) 14))
(assert (> (+ (* (- 3) (str.len x)) (* 2 (str.len y)) (* 2 (str.len z))) 21))

(check-sat)