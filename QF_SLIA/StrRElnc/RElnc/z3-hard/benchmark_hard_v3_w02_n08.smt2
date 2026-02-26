(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ z x) (str.++ "84" y)))

(assert (str.in_re x (re.union (str.to_re "22") (re.* (re.* (re.range "3" "8"))))))
(assert (str.in_re y (re.+ (re.range "6" "9"))))
(assert (str.in_re z (re.union (re.+ (re.range "7" "9")) (re.* (re.range "7" "9")))))

(assert (> (+ (* 5 (str.len x)) (* (- 9) (str.to_int y))) 17))

(check-sat)