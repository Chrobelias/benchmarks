(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ y x "77" "37")))

(assert (str.in_re x (re.* (str.to_re "866"))))
(assert (str.in_re y (re.union (str.to_re "207") (re.union (re.* (re.range "6" "9")) (re.range "3" "8")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "75") (re.range "3" "9")))))

(assert (>= (+ (* (- 2) (str.len x)) (* (- 2) (str.len y)) (* 5 (str.len z))) 5))
(assert (>= (+ (* (- 7) (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 10) (str.to_int z))) 96))

(check-sat)