(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.+ (str.to_re "31"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "381")) (re.+ (re.range "6" "9")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "7") (re.range "5" "8")))))

(assert (< (+ (* (- 9) (str.to_int x)) (* 5 (str.to_int y)) (* 5 (str.to_int z))) 61))
(assert (< (+ (* (- 3) (str.len x)) (* 3 (str.to_int x))) 48))
(assert (> (+ (* 7 (str.to_int x)) (* 4 (str.to_int y)) (* (- 8) (str.to_int z))) 14))

(check-sat)